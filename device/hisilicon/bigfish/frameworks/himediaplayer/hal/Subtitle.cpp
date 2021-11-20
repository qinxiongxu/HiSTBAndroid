#define LOG_NDEBUG 0
#define LOG_TAG "HisiSubtitle"

#include "Subtitle.h"
#include <utils/Log.h>
#include <math.h>
#include <stdlib.h>
#include <ui/PixelFormat.h>

#include <cutils/properties.h>

#include "SkRect.h"
#include "SkBitmap.h"
#include "SkCanvas.h"
#include "SkRect.h"
#include <gui/Surface.h>
#include "HiMediaDefine.h"
#include "DisplayClient.h"
#include "hidisplay.h"
#include FT_SYNTHESIS_H
#include FT_STROKER_H

#define DEBUG 1
#if DEBUG
#define DBG_PRINT LOGV
#else
#define DBG_PRINT
#endif

extern "C"
{
    #include "harfbuzz-unicode.h"
}

namespace android {

#define HIGHT_OFFSET  200
#define MAXLINE 128
#define DEFAULT_FONT_SIZE  (25)

FT_BBox string_bbox[MAXLINE];

//unicoide
unsigned short us;

// the default font path
#define FONTPATH "/system/fonts/DroidSansFallback.ttf"
//#define FONTPATH "/system/fonts/cour.ttf"         // If arabic, please using correct font libs

#define SUB_FREE_CHARPTR(p) \
    do{ \
        if( (p) != NULL ){  \
            free(p);  \
            (p) = NULL; \
        } \
    }while(0)

#define SUB_LOG_DEBUG

HB_Error hb_getSFntTable(void *font, HB_Tag tableTag, HB_Byte *buffer, HB_UInt *length)
{
    FT_Face face = (FT_Face)font;
    FT_ULong ftlen;
    if(length != NULL)
        ftlen= *length;

    FT_Error error = 0;

    if (!FT_IS_SFNT(face)){
        LOGE("__ARABIC__ ,hb_getSFntTable error HB_Err_Invalid_Argument");
        return HB_Err_Invalid_Argument;
    }

    error = FT_Load_Sfnt_Table(face, tableTag, 0, buffer, &ftlen);  // load font table to buffer
    *length = ftlen;
//    LOGE("__ARABIC__ hb_getSFntTable ret: %u, ftlen=%lu,", error, ftlen);

    return (HB_Error)error;
}

int hb_shaping(HB_ShaperItem *pShapeItem, FT_Face face, int numberOfWords, unsigned int *srtcode, android::GlyphPos *glyphs, int *gidx)
{
    int i, j, k, isArab, isL2R, nArab, nNotArab, nPunc, nReduce;
    HB_UChar16 u16_srtcode[SUB_CHAR_MAX_LEN];

    LOGV("__ARABIC__ hb_shaping: shaper %x", pShapeItem);

/*
    consider this original string: aaaNNNNaaaaa     <--"a" means arabic , "N" means non arabic
    output string should be      : aaaaaNNNNaaa     <-- arabic is written from Left to Right.
*/

    isArab = nArab = nNotArab = nPunc = nReduce = 0;
    isL2R = 1;
    for (i=0; i<numberOfWords; i++)
    {
        isArab = (code_point_to_script(srtcode[i]) == HB_Script_Arabic);
        SUB_LOG_DEBUG("str %d:  %x, arab: %d", i, srtcode[i], isArab);
        if (isArab)
        {
            if (nNotArab)
            {
                if (isL2R)
                {
                    SUB_LOG_DEBUG("draw %d punctuation string", nNotArab);
                    for (j=0, k=0; j<nPunc; j++, k++)
                    {
                        gidx[k] = FT_Get_Char_Index(face, srtcode[j]);
                        SUB_LOG_DEBUG("punc source: %d, dest: %d, idx: %d", j, k, gidx[k]);
                    }
                }
                else
                {
                    SUB_LOG_DEBUG("draw %d nonArab string", nNotArab);
                    for (j=i-nNotArab,k=numberOfWords-i+nPunc+nReduce; j<i; j++,k++)
                    {
                        gidx[k] = FT_Get_Char_Index(face, srtcode[j]);
                        SUB_LOG_DEBUG("source: %d, dest: %d, idx: %d", j, k, gidx[k]);
                    }
                }
                nNotArab = 0;
            }
            isL2R = 0;
            SUB_LOG_DEBUG("isArab: %d %d %x", i, nArab, srtcode[i]);
            u16_srtcode[nArab++] = (HB_UChar16)srtcode[i];
        }
        else
        {
            if (nArab)
            {
                SUB_LOG_DEBUG("draw %d Arab string", nArab);
                // draw A string and clean it
                pShapeItem->string = u16_srtcode;
                pShapeItem->item.length = nArab;
                pShapeItem->num_glyphs = nArab;
                pShapeItem->stringLength = nArab;

                HB_ShapeItem(pShapeItem);

                if(nArab > pShapeItem->num_glyphs)
                {
                    nReduce += nArab - pShapeItem->num_glyphs;
                    SUB_LOG_DEBUG("nArab:%d > num_glyphs:%d, nReduce:%d", nArab, pShapeItem->num_glyphs, nReduce);
                    nArab = pShapeItem->num_glyphs;
                }
                SUB_LOG_DEBUG("Harfbuzz Arabic reshape: i %d, nArab %d, start: %d", i, nArab, (numberOfWords-i+nPunc+nReduce));

                for (j=numberOfWords-i+nPunc+nReduce, k=nArab-1; k>=0; j++, k--)
                {
                    gidx[j] = pShapeItem->glyphs[k];
                }

                nArab = 0;
            }
            if (isL2R)
                nPunc++;
            nNotArab++;
        }
    }

    if (nNotArab)
    {
        if (isL2R)
        {
            SUB_LOG_DEBUG("endofstr, nPunc: %d, %d", nPunc, nNotArab);
            for (j=0, k=nReduce; j<nPunc; j++, k++)
            {
                gidx[k] = FT_Get_Char_Index(face, srtcode[j]);
                SUB_LOG_DEBUG("punc source: %d, dest: %d, idx: %d", j, k, gidx[k]);
            }
        }
        else
        {
            SUB_LOG_DEBUG("endofstr, nonArab: %d", nNotArab);
            for (j=i-nNotArab,k=numberOfWords-i+nPunc+nReduce; j<i; j++,k++)
            {
                gidx[k] = FT_Get_Char_Index(face, srtcode[j]);
                SUB_LOG_DEBUG("source: %d, dest: %d, idx: %d", j, k, gidx[k]);
            }
        }
    }
    if (nArab)
    {
        SUB_LOG_DEBUG("endofstr, Arab: %d", nArab);
        pShapeItem->string = u16_srtcode;
        pShapeItem->item.length = nArab;
        pShapeItem->num_glyphs = nArab;
        pShapeItem->stringLength = nArab;

        HB_ShapeItem(pShapeItem);
        if(nArab > pShapeItem->num_glyphs)
        {
            nReduce +=nArab - pShapeItem->num_glyphs;
            SUB_LOG_DEBUG("nArab:%d > num_glyphs:%d, nReduce:%d", nArab, pShapeItem->num_glyphs, nReduce);
            nArab = pShapeItem->num_glyphs;
        }
        SUB_LOG_DEBUG("Harfbuzz Arabic reshape: i %d, nArab %d, idx: %d", i, nArab, (numberOfWords-i+nPunc+nReduce));

        for (j=numberOfWords-i+nPunc+nReduce, k=nArab-1; k>=0; j++, k--)
        {
            gidx[j] = pShapeItem->glyphs[k];
        }
    }

    if(nReduce > 0)
    {
        SUB_LOG_DEBUG("gitx have %d words invalid, from header", nReduce);
        memmove(gidx,gidx+nReduce,sizeof(int)*(numberOfWords-nReduce));
        for(j=numberOfWords-nReduce; j<numberOfWords; j++)
        {
            gidx[j] = FT_Get_Char_Index(face, 0x20);
        }
    }
 /*
    for(j=0; j<numberOfWords; j++)
    {
        SUB_LOG_DEBUG("gidx[%d]:0x%x(%d)", j,  gidx[j], gidx[j]);
    }
*/
    return 0;
}


int hb_shape_free(HB_ShaperItem *pShapeItem)
{
//    LOGE("__ARABIC__ hb_shape_free");

    if(pShapeItem->face != NULL)
        HB_FreeFace(pShapeItem->face);

    if(pShapeItem->glyphs != NULL)
        free(pShapeItem->glyphs);

    if(pShapeItem->attributes != NULL)
        free(pShapeItem->attributes);

    if(pShapeItem->advances != NULL)
        free(pShapeItem->advances);

    if(pShapeItem->offsets != NULL)
        free(pShapeItem->offsets);

    if(pShapeItem->log_clusters != NULL)
        free(pShapeItem->log_clusters);

    if(pShapeItem->font != NULL)
        free(pShapeItem->font);

    memset(pShapeItem ,0, sizeof(HB_ShaperItem));

    return 0;
}


int hb_shape_init(HB_ShaperItem *pShapeItem, HB_Script script, FT_Face face)
{
    HB_Font pHBFont;
    HB_Glyph *out_glyphs;
    HB_GlyphAttributes *out_attrs;
    HB_Fixed *out_advs;
    HB_FixedPoint *out_offsets;
    unsigned short *out_logClusters;

    LOGV("__ARABIC__ hb_shape_init: shaper %x", pShapeItem);
    if (pShapeItem == NULL)
        return 0;

    pHBFont = new HB_FontRec;
    HB_Face hbFace = HB_NewFace(face, hb_getSFntTable);

    if(hbFace == NULL)
    {
        LOGE("hb_shape_init ERROR hbFace = NULL");
        return 0;
    }

    pHBFont->klass = &hb_freetype_class;

    pHBFont->userData = face;
    pHBFont->x_ppem  = face->size->metrics.x_ppem;
    pHBFont->y_ppem  = face->size->metrics.y_ppem;
    pHBFont->x_scale = face->size->metrics.x_scale;
    pHBFont->y_scale = face->size->metrics.y_scale;

    memset (pShapeItem, 0, sizeof(HB_ShaperItem));
    pShapeItem->kerning_applied = false;
    pShapeItem->item.script = script;
    pShapeItem->item.bidiLevel = 0;
    pShapeItem->item.pos = 0;
    pShapeItem->shaperFlags = 0;
    pShapeItem->font= pHBFont;
    pShapeItem->face = hbFace;
    pShapeItem->glyphIndicesPresent = false;
    pShapeItem->initialGlyphCount = 0;

    out_glyphs = (HB_Glyph*)malloc(SUB_CHAR_MAX_LEN * sizeof(HB_Glyph));
    if(out_glyphs != NULL)
        memset(out_glyphs, 0, SUB_CHAR_MAX_LEN * sizeof(HB_Glyph));

    out_attrs = (HB_GlyphAttributes*)malloc(SUB_CHAR_MAX_LEN *sizeof(HB_GlyphAttributes));
    if(out_attrs != NULL)
        memset(out_attrs, 0, SUB_CHAR_MAX_LEN * sizeof(HB_GlyphAttributes));

    out_advs = (HB_Fixed*)malloc(SUB_CHAR_MAX_LEN * sizeof(HB_Fixed));
    if(out_advs != NULL)
        memset(out_advs, 0, SUB_CHAR_MAX_LEN * sizeof(HB_Fixed));

    out_offsets = (HB_FixedPoint*)malloc(SUB_CHAR_MAX_LEN *sizeof(HB_FixedPoint));
    if(out_offsets !=NULL)
        memset(out_offsets, 0, SUB_CHAR_MAX_LEN * sizeof(HB_FixedPoint));

    out_logClusters = (unsigned short*)malloc(SUB_CHAR_MAX_LEN *sizeof(unsigned short));
    if(out_logClusters != NULL)
        memset(out_logClusters, 0, SUB_CHAR_MAX_LEN * sizeof(unsigned short));

    pShapeItem->glyphs = out_glyphs;
    pShapeItem->attributes = out_attrs;
    pShapeItem->advances = out_advs;
    pShapeItem->offsets = out_offsets;
    pShapeItem->log_clusters = out_logClusters;

    return 0;
}


int SubtitleFontManager::setSubColor(unsigned int color32)
{
    subcolor = color32;
    return 0;
}
int SubtitleFontManager::getSubColor(unsigned int &color)
{
    color = subcolor;
    return 0;
}
int SubtitleFontManager::setFontDrawType(int type)
{
    if( type <0 || type >= (int)HI_FONT_DRAW_BUTT)
        return -1;
    mfontDrawType = type;
    return 0;
}
int SubtitleFontManager::getFontDrawType(int &type)
{
    type = mfontDrawType;
    return 0;
}

int SubtitleFontManager::setDisableSubtitle( int IsSub)
{
    DisableSubtitle = IsSub;
    return 0;
}

int SubtitleFontManager::getDisableSubtitle( int &IsSub)
{
    IsSub = DisableSubtitle;
    return 0;
}

int SubtitleFontManager::setBorder(int left_border,int bottom)
{
    if(left_border < 0 || left_border  > mWinwidth/2 || bottom < 0 || bottom > mWinheight)
        return -1;
    mstartx = left_border;
    mBottompos = bottom;
    return 0;
}

int SubtitleFontManager::setSubPlace(int horizontal,int bottom)
{
    if(horizontal< 0 || horizontal> 100)
        return -1;
    mHorizontal = horizontal;
    mBottompos = bottom;
    mIsSetSubPlace = true;
    return 0;
}
int SubtitleFontManager::getSubPlace(int &horizontal,int &bottom)
{
    horizontal= mHorizontal;
    bottom = mBottompos;
    return 0;
}

int SubtitleFontManager::setHorizontal(int horizontal)
{
    if(horizontal< 0 || horizontal> 100)
        return -1;
    mHorizontal= horizontal;
    mIsSetSubPlace = true;
    return 0;
}

int SubtitleFontManager::setVertical(int bottom)
{
    mBottompos = bottom;
    return 0;
}

int SubtitleFontManager::setStartPos(int x,int y)
{
    if(x < 0 || y < 0 || x > mWinwidth || y > mWinheight)
    {
        return -1;
    }

    mstartx = x;
    mstarty = y;
    return 0;
}

int SubtitleFontManager::setAlignment(int ali)
{
    if( ali <0 || ali >= (int)SUBTITLE_FONT_ALIGN_BUTT)
        return -1;
    align = (alignment)ali;
    mIsSetSubPlace = false;
    return 0;
}
int SubtitleFontManager::getAlignment(int &ali)
{
    ali = (int)align;
    return 0;
}

int SubtitleFontManager::setLineSpacing(int linespace)
{
    if(linespace< 0 || linespace> mWinheight)
        return -1;
    mFontLinespace = mRatio*linespace;
    return 0;
}
int SubtitleFontManager::getLineSpace(int &linespace)
{
    if(mRatio != 0)
    {
        linespace = float(mFontLinespace)/mRatio;
    }
    return 0;
}

int SubtitleFontManager::setFontspace(int fontspace)
{
    if(fontspace< 0 || fontspace> mWinwidth)
        return -1;
    mFontspace = mRatio*fontspace;
    return 0;
}

int SubtitleFontManager::setRawPicSize(int width, int height)
{
    if( width <= 0 || height <= 0 ){
        return -1;
    }
    mRawPicWidth = width;
    mRawPicHeight= height;
    mRawPicSize = width * height;
    return 0;
}

int SubtitleFontManager::getFontspace(int &space)
{
    if(mRatio != 0)
    {
        space = float(mFontspace)/mRatio;
    }
    return 0;
}

int SubtitleFontManager::setBkgroundcolor(unsigned int bkgroundcolor)
{
    mbkgroundcolor = bkgroundcolor;
    return 0;
}
int SubtitleFontManager::getBkgroundcolor(unsigned int &color)
{
    color = mbkgroundcolor;
    return 0;
}

int SubtitleFontManager::setFontSize(int size)
{
    if(size < 0 || size > mWinheight || size > mWinwidth)
        return -1;
    mOldWidth = 0;
    mOldHeight= 0;
    mPicRatio = mRatio * float(size) / DEFAULT_FONT_SIZE;
    mFontsize = size * mRatio;
    mIsSetFontSize = true;
    return 0;
}
int SubtitleFontManager::getFontSize(int &size)
{
    if(mRatio != 0)
    {
        size = int(float(mFontsize)/mRatio);
    }
    return 0;
}

int SubtitleFontManager::setFontPath(const char* fontpath)
{
    if(fontpath == NULL)
        return -1;
    memcpy(mFontpath, fontpath, strlen(fontpath));
    mFontpath[strlen(fontpath)]='\0';
    mIsNewFace = false;
    return 0;
}
int SubtitleFontManager::getFontPath(char *path)
{
    strcpy(path, mFontpath);
    path[strlen(mFontpath)] ='\0';
    return 0;
}

int SubtitleFontManager::setConfigPath(const char* configPath)
{
    if(configPath == NULL)
        return -1;
    memcpy(mConfigPath, configPath, strlen(configPath));
    mConfigPath[strlen(configPath)]='\0';
    readStyleXml();

    setFontSize(mFontsize);
    mFontspace = mFontspace * mRatio;
    mFontLinespace = mFontLinespace * mRatio;
    mIsSetFontSize = true;
    return 0;
}

int SubtitleFontManager::setLanguageType(int lang)
{
    if( lang <0 || lang > -1)
        return -1;
    mLanguageType = lang;
    return 0;
}
int SubtitleFontManager::getLanguageType(int& lang)
{
    lang = mLanguageType;
    return 0;
}
int SubtitleFontManager::getBottomPos(unsigned int &bottom)
{
    bottom = mBottompos;
    return 0;
}

int SubtitleFontManager::setSubtitle(unsigned int* unicode,int len, unsigned char* rawtxt, int rawlen)
{
    if (rawlen > SUB_CHAR_MAX_LEN)
    {
        rawlen = SUB_CHAR_MAX_LEN;
    }

    if(rawlen > 0)
    {
        memcpy(mRawSub, rawtxt, rawlen<SUB_CHAR_MAX_LEN?rawlen : SUB_CHAR_MAX_LEN);
        mRawSublen = rawlen;
    } else {
        memset(mRawSub, 0x00, SUB_CHAR_MAX_LEN);
        mRawSublen = 0;
    }

    if(len <= 0) {
        LOGE("there is no invalid unicode stream.len is %d",len);
        return -1;
    }

    memset(srtcode,0, (SUB_CHAR_MAX_LEN + 4)*sizeof(unsigned int));
    if(len  > SUB_CHAR_MAX_LEN )
        len = SUB_CHAR_MAX_LEN ;
    memcpy((unsigned char*)srtcode,(unsigned char*)unicode,len * sizeof(unsigned int));
    srtcode[len] ='\0';
    srtlen = len;

    return 0;
}
int  SubtitleFontManager::getSubString(unsigned char* pSubString)
{
    if (false == mIsXBMC)
    {
        ALOGE("SubtitleFontManager::getSubString, not xbmc, can not get substring");
        return -1;
    }
    if (pSubString == NULL)
    {
        ALOGE("SubtitleFontManager::getSubString pSubString is NULL");
        return -1;
    }
    memcpy(pSubString,mRawSub,mRawSublen<SUB_CHAR_MAX_LEN?mRawSublen : SUB_CHAR_MAX_LEN);

    return NO_ERROR;
}

xmlNodePtr SubtitleFontManager::readxml()
{
    xmlNodePtr curNode;
    xmlChar *szKey;
    char* pPath = NULL;

    if ('\0' != mConfigPath[0])
    {
        pPath = strdup(mConfigPath);
        mDoc = xmlReadFile(pPath,NULL,0);
    }

    if ('\0' == mConfigPath[0] || NULL == mDoc)
    {
        pPath = strdup(USER_DATA_CONFIG_PATH);
        mDoc = xmlReadFile(pPath,NULL,0);
    }

    if (NULL == mDoc){
        LOGE("User data style.xml file read failed!... try to read system style.xml file\n");
        mDoc = xmlReadFile(SYSTEM_CONFIG_PATH,NULL,0);
        if( NULL == mDoc ){
            LOGE("Subtitle system style.xml file is not parsed successfully. \n");
            SUB_FREE_CHARPTR(pPath);
            return NULL;
        }
    }
    curNode = xmlDocGetRootElement(mDoc);
    if (NULL == curNode){
        LOGV("style.xml is empty file \n");
        SUB_FREE_CHARPTR(pPath);
        xmlFreeDoc(mDoc);
        return NULL;
    }
    if (xmlStrcmp(curNode->name, BAD_CAST "style")){
        LOGV("document of the wrong type, root node != root\n");
        SUB_FREE_CHARPTR(pPath);
        xmlFreeDoc(mDoc);
        return NULL;
    }
    curNode = curNode->xmlChildrenNode;

    while(curNode != NULL){
        if ((!xmlStrcmp(curNode->name, (const xmlChar *)"font"))){
            szKey = xmlNodeGetContent(curNode);
            LOGV("font: %s\n", szKey);
            xmlFree(szKey);
            break;
        }
        curNode = curNode->next;
    }
    SUB_FREE_CHARPTR(pPath);
    return curNode;
}

char* SubtitleFontManager::getProp(xmlNodePtr nodeptr,const char* prop)
{
    xmlAttrPtr attrPtr = nodeptr->properties;
    while (attrPtr != NULL){
        if (!xmlStrcmp(attrPtr->name, BAD_CAST prop)){
            xmlChar* szAttr = xmlGetProp(nodeptr,BAD_CAST prop);
            LOGV("%s = %s \n",prop,szAttr);
            return (char*)szAttr;
        }
        attrPtr = attrPtr->next;
    }
    return NULL;
}

void SubtitleFontManager::readStyleXml()
{
    char*  pchar=NULL;
    char*  pEndchar=NULL;
    xmlNodePtr  nodeptr = readxml();
    if(nodeptr == NULL){
        LOGE("Can't find Style xmlfile\n");
        if(mDoc){
            xmlFreeDoc(mDoc);
            mDoc = NULL;
        }
        return ;
    }
    pchar = getProp(nodeptr,"fontpath");
    if(pchar){
        memcpy(mFontpath, pchar, strlen(pchar));
        mFontpath[strlen(pchar)] ='\0';
    }
    else
        LOGV("Read fontpath error\n");

    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontsize");
    if(pchar)
        mFontsize = atoi(pchar);
    else
        LOGV("Read mFontsize error\n");

    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontcolor");
    if(pchar)
        subcolor = strtoul(pchar,&pEndchar,0);
    else
        LOGV("Read fontcolor error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"horizontal");
    if(pchar)
        mHorizontal = atoi(pchar);
    else
        LOGV("Read horizontal error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"bottompos");
    if(pchar)
        mBottompos = atoi(pchar);
    else
        LOGV("Read mBottompos error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontspace");
    if(pchar)
        mFontspace= atoi(pchar);
    else
     LOGV("Read fontspace error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar= getProp(nodeptr,"backcolor");
    if(pchar)
        mbkgroundcolor = strtoul(pchar,&pEndchar, 0);
    else
        LOGV("Read backcolor error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontstyle");
    if(pchar)
        mfontDrawType = atoi(pchar);
    else
        LOGV("Read fontstyle error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontspace");
    if(pchar)
        mFontspace = atoi(pchar);
    else
        LOGV("Read fontspace error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"fontlinespace");
    if(pchar)
        mFontLinespace = atoi(pchar);
    else
        LOGV("Read linespacing error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"alignment");
    if(pchar){
        if(strcmp(pchar,"left") == 0)
            align = LEFT;
        else if(strcmp(pchar,"center") == 0)
            align = CENTER;
        else if(strcmp(pchar,"right") == 0)
            align = RIGHT;
        else
            align = CENTER;
    }
    else
        LOGV("Read alignment error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"disablesubtitle");
    if(pchar)
        DisableSubtitle = atoi(pchar);
    else
        LOGV("Read disablesubtitle error\n");
    SUB_FREE_CHARPTR(pchar);
    pchar = getProp(nodeptr,"languagetype");
    if(pchar)
        mLanguageType = atoi(pchar);
    else
        LOGV("Read languagetype error\n");
    SUB_FREE_CHARPTR(pchar);
    if( mDoc ){
        xmlFreeDoc( mDoc);
        mDoc = NULL;
    }
    LOGV("readxml success\n");
}

SubtitleFontManager::SubtitleFontManager(int vo_width, int vo_height, uint8* aData,int pixformat)
{
    buffer = (unsigned char*)aData;
    mRatio = 1.0;
    mPicRatio = 1.0;
    mWinwidth = vo_width;
    mWinheight = vo_height;
    mSubwidth = vo_width ;
    mSubheight = vo_height;
    mPixformat = pixformat;
    face = NULL;
    memset(mConfigPath, 0, SUB_CHAR_MAX_LEN);
    strcpy(mFontpath,FONTPATH);
    mFontpath[ strlen(FONTPATH) ]='\0';
    library = NULL;
    mFontsize = 25;
    align = CENTER;
    subcolor = 0xFFFFFF;
    mBottompos = 0;
    mbkgroundcolor = 0x00;
    bmp8bit = NULL;
    bmp8bitSize =0;
    mFontLinespace = 0;
    mHorizontal = 50;
    mFontspace = 0;
    mstartx = 0;
    mstarty = 0;
    mfontDrawType = HI_FONT_DRAW_NORMAL;
    DisableSubtitle = 0;
    readStyleXml();
    bmp8bitSize = mWinwidth*mWinheight;
    if( bmp8bitSize >0){
        bmp8bit =(unsigned char*) malloc( bmp8bitSize * sizeof(unsigned char));
        if( bmp8bit == NULL){
            bmp8bitSize =0;
            LOGE("[SubtitleFontManager] malloc bmp8bit failed\n");
        }
    }
    memset(srtcode,0, (SUB_CHAR_MAX_LEN + 4) * sizeof(unsigned int));
    srtcode[0] ='\0';
    srtlen =0;
    mIsInitLib = false;
    mIsNewFace = false;
    mIsSetFontSize = false;
    mIsSetSubPlace = false;
    mLoadFaceSuccessed = true;
    mIsGfx = false;

    pstSubData = NULL; /*init pstSubData*/
    mOldHeight = 0;
    mOldWidth  = 0;
    mOldx      = 0;
    mOldy      = 0;
    mRawPicSize = bmp8bitSize;
    setRawPicSize(720, 576);
    mPicRatio = float(mFontsize) / DEFAULT_FONT_SIZE;
    mSubFramePackType = 0;   /* default subtitle type is normal 2d */
    memset(mRawSub, 0x00, SUB_CHAR_MAX_LEN);
    mRawSublen = 0;
}

void SubtitleFontManager::resetSrtGlyph()
{
    int i = 0;
    for( i = 0; i < srtlen; i++){
        if(glyphs[i].glyph){
            FT_Done_Glyph(glyphs[i].glyph);
            glyphs[i].glyph = NULL;
        }
    }
}
SubtitleFontManager::~SubtitleFontManager()
{
    if(face){
        FT_Done_Face(face);
        face = NULL;
    }

    if(mIsInitLib)
        FT_Done_FreeType( library );

    if(bmp8bit){
       bmp8bitSize =0;
       free(bmp8bit);
       bmp8bit = NULL;
    }
    if( mDoc ){
        xmlFreeDoc( mDoc);
        mDoc = NULL;
    }
    mIsInitLib = false;
    mIsNewFace = false;
    mIsGfx = false;

    clearSubDataList();
}


int SubtitleFontManager::loadFace()
{
    FT_Error error = 0;
    if(!mIsInitLib){
        error = FT_Init_FreeType( &library );     /* initialize library */
        if(error == 0){
            mIsInitLib = true;
        }else{
            mLoadFaceSuccessed = false;
            LOGE("[LoadFace]FT_Init_FreeType failed\n");
            return -1;
        }
    }

    if(!mIsNewFace){
    if(face){
        FT_Done_Face(face);
        face = NULL;
    }

    error = FT_New_Face(library,mFontpath,0,&face);
    if(error){
        LOGE("FT_New_Face failed\n fontpath:%s, try...\n", mFontpath);
        strcpy(mFontpath , FONTPATH);
        mFontpath[strlen(FONTPATH)] = '\0';
        error = FT_New_Face(library,mFontpath,0,&face);
        if( error ){
            LOGE("try fontpath:%s, FT_New_Face failed\n", mFontpath);
            mLoadFaceSuccessed = false;
            return -1;
        }
    }
    /** choose charset */
    error = FT_Select_Charmap(face,FT_ENCODING_UNICODE);
    if(error){
        mLoadFaceSuccessed = false;
        LOGE("FT_Select_Charmap failed\n");
        return -1;
    }
    /* set font size */
    error = FT_Set_Char_Size( face, mFontsize * 64,mFontsize * 64,96, 96 );
    if(error){
        mLoadFaceSuccessed = false;
        LOGE("FT_Set_Char_Size failed\n");
        return -1;
    }
    mIsNewFace = true;
    mLoadFaceSuccessed = true;
    }

    if(mIsSetFontSize){
        /* set new font size */
        error = FT_Set_Char_Size( face, mFontsize * 64,mFontsize * 64,96, 96 );
        if(error){
            mLoadFaceSuccessed = false;
            LOGE("FT_Set_Char_Size failed\n");
            return -1;
        }
        mLoadFaceSuccessed = true;
        mIsSetFontSize = false;
    }
    if(!mLoadFaceSuccessed){
        LOGE("Loading face failed\n");
        return -1;
    }
    unsigned char a,r,g,b;
    a = (unsigned char)((mbkgroundcolor & 0xFF000000) >> 24);
    r = (unsigned char)((mbkgroundcolor & 0x00FF0000) >> 16 );
    g = (unsigned char)((mbkgroundcolor & 0x0000FF00) >> 8);
    b = (unsigned char)( mbkgroundcolor & 0x000000FF);

    if( bmp8bit )
        memset(bmp8bit,0,mWinwidth * mWinheight);

    LOGV("LoadFace Successed");
    return 0;
}

void SubtitleFontManager::drawBitmap(FT_Bitmap* bitmap, FT_Int x, FT_Int y)
{
    FT_Int  i, j, p, q;
    FT_Int  x_max = x + bitmap->width;
    FT_Int  y_max = y + bitmap->rows;
    for ( i = x, p = 0; i < x_max; i++, p++ )
    {
        for ( j = y, q = 0; j < y_max; j++, q++ )
        {
            if ( i < 0 || j < 0 || i >= mSubwidth|| j >= mWinheight)
            {
                continue;
            }
            if( IsDrawShadow )
            {
                bmp8bit[j * mSubwidth + i] |= (bitmap->buffer[q * bitmap->width + p]) * 150 >> 8;
            }
            else
            {
                bmp8bit[j * mSubwidth + i] |= bitmap->buffer[ q * bitmap->pitch+ p];
            }
        }
    }
}

int SubtitleFontManager::loadArabSrtToGlyph()
{
    int g_idx[SUB_CHAR_MAX_LEN]; /**< save string glyph indexes */
    int i, n, k;
    int row, rowstart, linestart, linelen;
    int start_xpos, rightborder;
    int pen_x, pen_y;
    int glyph_index;
    int previous;
    FT_Bool use_kerning;
    FT_BBox bbox;
    FT_GlyphSlot slot;

    slot = face->glyph;

    start_xpos = 0;
    if(align != RIGHT)    //if the alignment is not right then the start_xpos is mstartx;
        start_xpos = mstartx;

    rightborder = mSubwidth;
    if(align != LEFT)/* if it is not left-align, just consider the right border */
        rightborder -= mstartx;

    row = 1;
    linestart = 0;
    pen_x = start_xpos;
    pen_y = mstarty;
    previous = 0;
    use_kerning = FT_HAS_KERNING(face);
    bbox.xMin = bbox.yMin = 32000;
    bbox.xMax = bbox.yMax = -32000;

    for (k=0; k<srtlen; k++)
    {
        if ((k==srtlen-1) || (srtcode[k]==0xa)) // get a line,
        {
            i = k;
            while ((srtcode[i]==0xa) || (srtcode[i]==0xd))  // skip \n and \r
                i--;

            // do harfbuzz reshape
            linelen = i - linestart + 1;
            //LOGE("one line! from %d to %d, %d, len: %d %d, %x %x", linestart, i, k, linelen, srtlen, srtcode[i], srtcode[k]);
            hb_shaping(mpShaperItem, face, linelen, &srtcode[linestart], &glyphs[linestart], &g_idx[linestart]);

            // calculate glyph positioning and row wrap
            rowstart = k;
            for (n=k; n>=linestart; n--)
            {
                FT_BBox glyph_bbox;

                glyph_index = g_idx[n];

                if (use_kerning && previous && glyph_index) // add kerning adjustment
                {
                    FT_Vector   delta;
                    FT_Get_Kerning(face, previous, glyph_index, FT_KERNING_DEFAULT, &delta);
                    pen_x += delta.x >> 6;
                }
                glyphs[n].xpos = pen_x;
                glyphs[n].ypos = pen_y;
                glyphs[n].row  = row;

                if( IsDrawShadow)   // draw shadow
                {
                    glyphs[n].xpos += mFontsize / 5;
                    glyphs[n].ypos += mFontsize / 10;
                }

                if ((srtcode[n] == 0xd) || (srtcode[n] == 0xa))
                {
                    //LOGE("skip \n and \r");
                    continue;
                }

                if (FT_Load_Glyph(face,glyph_index,FT_LOAD_FORCE_AUTOHINT))
                    continue;
                if (FT_Get_Glyph(slot, &(glyphs[n].glyph)))
                    continue;

                if(HI_FONT_DRAW_HOLLOW == mfontDrawType)    //set hollow
                {
                    //LOGE("setDrawHollow");
                    if (setDrawHollow(library, &(glyphs[n].glyph)))
                        LOGE("setDrawHollow failed\n");
                }
                if(HI_FONT_DRAW_EMBOLDEN == mfontDrawType)  // set embolden
                {
                    //LOGE("setDrawEmbolden");
                    if (setDrawEmbolden(library, &(glyphs[n].glyph)))
                        LOGE("setDrawEmbolden failed\n");
                }

                FT_Glyph_Get_CBox(glyphs[n].glyph,ft_glyph_bbox_pixels,&glyph_bbox);//the current word's border box
                if(glyph_bbox.yMin < bbox.yMin)
                    bbox.yMin = glyph_bbox.yMin;
                if(glyph_bbox.yMax > bbox.yMax)
                    bbox.yMax = glyph_bbox.yMax;

                //LOGE("__ARABIC__ glyph_index for srtcode[%d]=%x %x",n, glyph_index, srtcode[n]);
                //LOGE("init penx: %d, peny: %d", pen_x, pen_y);

                pen_x += mFontspace;
                pen_x += slot->advance.x >> 6;

                if (((pen_x+mFontspace)>rightborder) || (n==linestart)) // need to row-wrap or finish line parse
                {
                    int cur_posx, new_startx;
                    FT_Glyph image;
                    FT_Vector drawpen;
                    FT_BitmapGlyph  bit;

                    if(row > MAXLINE)
                    {
                        LOGE("the subtitle is too long\n");
                        return -1;
                    }
                    string_bbox[row++] = bbox;  // save boxes of a line

                    cur_posx = glyphs[n].xpos + mstartx;
                    switch(align) {
                    case LEFT:
                        for (i=n; i<=rowstart; i++)
                        {
                            glyphs[i].xpos = cur_posx - glyphs[i].xpos;
                            //LOGE("left new pos: %d, %d", i, glyphs[i].xpos);
                        }
                        break;
                    case RIGHT:
                        for (i=n; i<=rowstart; i++)
                        {
                            glyphs[i].xpos = mSubwidth - glyphs[i].xpos - mFontspace;
                            //LOGE("right new pos: %d, %d", i, glyphs[i].xpos);
                        }
                        break;
                    default:        // CENTER
                        new_startx = (mSubwidth + cur_posx) / 2;
                        for (i=n; i<=rowstart; i++)
                        {
                            glyphs[i].xpos = new_startx - glyphs[i].xpos;
                            //LOGE("center new pos: %d, %d", i, glyphs[i].xpos);
                        }
                        break;
                    }

                    rowstart = n - 1;
                    pen_x = start_xpos;
                    pen_y += bbox.yMax - bbox.yMin + mFontLinespace;

                    if(n != linestart) {
                        //LOGE("more than one line, reset bbox!!");
                        bbox.yMax = -32000;
                        bbox.yMin = 32000;
                    }

                    previous = 0;       // kerning clean-up for each row
                }
                mSubheight = glyphs[k].ypos + bbox.yMax - bbox.yMin - mstarty;
            }

            linestart = k + 1;  // adjust linestart for each line
        }
    }

    LOGV("loadArabSrtToGlyph successful\n");
    return 0;
}

int SubtitleFontManager::loadSrtToGlyph()
{
    int glyph_index = 0;
    FT_Error error;
    int row = 1;
    int i;
    FT_GlyphSlot slot;
    int previous = 0;
    int rowstart = 0;
    int start_xpos =0;
    int pen_x = start_xpos,pen_y = mstarty;
    int rightborder = mSubwidth /*- mFontsize*/;
    FT_Bool use_kerning;
    FT_BBox bbox;
    int iHasArabic=0;

    slot = face->glyph;
    if(HI_FONT_DRAW_ITALTIC == mfontDrawType)
    {
        LOGV("setGlyphSlot_Italic\n");
        setGlyphSlot_Italic(slot);
    }else if(HI_FONT_DRAW_NORMAL == mfontDrawType){
        setGlyphSlot_Normal(slot);
    }

    for (int i=0; i<srtlen; i++)
    {
        if(code_point_to_script(srtcode[i]) == HB_Script_Arabic)
        {
            LOGE("find arabic character");
            iHasArabic = 1;
            break;
        }
    }
    if (iHasArabic)
    {
        mpShaperItem = new HB_ShaperItem;
        hb_shape_init(mpShaperItem, HB_Script_Arabic, face);
        memset(glyphs, 0, sizeof(GlyphPos) * SUB_CHAR_MAX_LEN);
        loadArabSrtToGlyph();
        hb_shape_free(mpShaperItem);
        free(mpShaperItem);
        mpShaperItem=0;
        return 0;
    }

    if(align != RIGHT)    //if the alignment is not right then the start_xpos is mstartx;
        start_xpos = mstartx;
    if(align != LEFT)/* if it is not left-align, just consider the right border */
        rightborder -= mstartx;
    use_kerning = FT_HAS_KERNING(face);
    bbox.xMin = bbox.yMin = 32000;
    bbox.xMax = bbox.yMax = -32000;

    if(HI_FONT_DRAW_ITALTIC == mfontDrawType)
    {
        LOGV("setGlyphSlot_Italic\n");
        setGlyphSlot_Italic(slot);
    }else if(HI_FONT_DRAW_NORMAL == mfontDrawType){
        setGlyphSlot_Normal(slot);
    }
    for(int n = 0;n < srtlen;n++){
        FT_BBox glyph_bbox;
        glyph_index = FT_Get_Char_Index(face,srtcode[n]);
        /* previous: last font index */
        if(use_kerning && previous && glyph_index){
            FT_Vector   delta;
            /* get width between last index and current index */
            FT_Get_Kerning(face,previous,glyph_index,
                FT_KERNING_DEFAULT,&delta);
            pen_x += delta.x >> 6;
        }
        if( IsDrawShadow)
        {
            glyphs[n].xpos = pen_x + mFontsize / 5;   //store the currend word's pen pos
            glyphs[n].ypos = pen_y + mFontsize / 10;
        }
        else
        {
            glyphs[n].xpos = pen_x;   //store the currend word's pen pos
            glyphs[n].ypos = pen_y;
        }
        glyphs[n].row  = row;
        pen_x += mFontspace;
        error = FT_Load_Glyph(face,glyph_index,FT_LOAD_FORCE_AUTOHINT);
        if(error)
            continue;
        error = FT_Get_Glyph(face->glyph,&(glyphs[n].glyph));
        if(error)
            continue;
        if(HI_FONT_DRAW_HOLLOW == mfontDrawType)//set hollow
        {
            error = setDrawHollow(library, &(glyphs[n].glyph));
            if(error)
            {
                LOGE("setDrawHollow failed\n");
            }
        }else if(HI_FONT_DRAW_EMBOLDEN == mfontDrawType)
        {
            error = setDrawEmbolden(library, &(glyphs[n].glyph));
            if(error)
            {
                LOGE("setDrawEmbolden failed\n");
            }
        }

        pen_x += slot->advance.x >> 6;
        previous = glyph_index;
        FT_Glyph_Get_CBox(glyphs[n].glyph,ft_glyph_bbox_pixels,&glyph_bbox);//the currend word's border box
        if(glyph_bbox.yMin < bbox.yMin)
            bbox.yMin = glyph_bbox.yMin;
        if(glyph_bbox.yMax > bbox.yMax)
            bbox.yMax = glyph_bbox.yMax;

        if(srtcode[n] == 10 || srtcode[n] == 13 || pen_x -mFontspace > rightborder){/* need to wrap */
            if(row > MAXLINE){/* lines is too many, can not display */
                LOGE("the subtitle is too long\n");
                return -1;
            }
            string_bbox[row] = bbox;/* save boxes of a line */
            row++;
            pen_x = start_xpos;
            //modify for \r\n
            if(srtcode[n] == '\n' &&  n > 0 && srtcode[n - 1] == '\r')
            {
                //don't inc pen_y, because \r\n as one word
            }
            else
            {
                pen_y += bbox.yMax - bbox.yMin + mFontLinespace;
            }
            int width = 0;
            int start_x;
            if(srtcode[n] != 10 && srtcode[n] != 13){//10 is '\n',13 is '\r'
                int m = n;
                while(srtcode[m] != 32){//32 is ' ',find the nearest ' '
                    m--;
                    if(m == rowstart){
                        m = n -2;
                        break;
                    }
                }
                for( i = m + 1; i <= n; i++ ){
                    if(glyphs[i].glyph){
                        FT_Done_Glyph(glyphs[i].glyph);
                        glyphs[i].glyph = NULL;
                    }
                }

                if(m < rowstart)
                    return -1;
                FT_Glyph_Get_CBox(glyphs[m].glyph,ft_glyph_bbox_pixels,&glyph_bbox);
                int advancex = glyph_bbox.xMax - glyph_bbox.xMin;
                switch(align){
                    case LEFT:/* left-align */
                        break;
                    case CENTER:/* center-align */
                        width = glyphs[m].xpos +mstartx + advancex -mFontspace;
                        start_x = (mSubwidth - width)/2;
                        for(int j = rowstart;j <= m;j++){
                            glyphs[j].xpos += start_x;
                        }
                        break;
                    case RIGHT:/* right-align */
                        width = glyphs[m].xpos -mFontspace;
                        start_x = mSubwidth - width - mstartx;
                        for(int j = rowstart;j <= m;j++){
                            glyphs[j].xpos += start_x;
                        }
                        break;
                    default:
                        break;
                }
                rowstart = m + 1;
                n = m;
            } else {
                LOGV("001srtcode[%d] =  %x 001srtcode[%d]  = %x 001srtcode[%d] = %x\n",n-1,srtcode[n-1],n,srtcode[n],n+1,srtcode[n+1]);
                switch(align){
                    case LEFT:
                        break;
                    case CENTER:
                        width = glyphs[n].xpos + mstartx  -mFontspace;
                        start_x = (mSubwidth - width)/2;
                        for(int j = rowstart;j <= n;j++){
                            glyphs[j].xpos += start_x;
                        }
                        break;
                    case RIGHT:
                        width = glyphs[n].xpos -mFontspace;
                        start_x = mSubwidth - width - mstartx;
                        for(int j = rowstart;j <= n;j++){
                            glyphs[j].xpos += start_x;
                        }
                        break;
                    default:
                        break;
                }
                rowstart = n + 1;
            }

            if(n != srtlen -1){
                bbox.yMax = -32000;
                bbox.yMin = 32000;
            }
        }
    }
    if(srtcode[srtlen - 1] == 10 && (srtcode[srtlen - 2] == 13 || srtcode[srtlen -2] == 32) && glyphs[srtlen - 2].row != glyphs[srtlen - 3].row ){
        /* if the last line is only a newline char or space char, do not display */
        LOGV("glyphs[srtlen - 3].row = %d,srtcode[srtlen -3] = %x",glyphs[srtlen - 3].row,srtcode[srtlen -3]);
        mSubheight = glyphs[srtlen -1].ypos - mFontLinespace;
    }else if(srtcode[srtlen - 1] == 10 && glyphs[srtlen - 1].row != glyphs[srtlen - 2].row ){
        LOGV("glyphs[srtlen - 2].row = %d,srtcode[srtlen -2] = %x",glyphs[srtlen - 2].row,srtcode[srtlen -2]);
        mSubheight = glyphs[srtlen -1].ypos - mFontLinespace;/* the total height of current frame */
    }else{
        mSubheight = glyphs[srtlen -1].ypos + bbox.yMax - bbox.yMin - mstarty;
        LOGV("glyphs[srtlen -1].ypos = %d, mSubheight = %d,glyphs[srtlen - 1].row = %d,srtcode[srtlen -1] = %x",glyphs[srtlen -1].ypos,mSubheight,glyphs[srtlen - 1].row,srtcode[srtlen -1]);
    }
    LOGV("loadSrtToGlyph successful\n");
    return 0;
}

void SubtitleFontManager::renderGlyph()
{
    int row = 1;
    FT_Error error;
    FT_Glyph image;
    FT_Vector pen;
    FT_BBox glyph_bbox;
    FT_BitmapGlyph  bit;
    for(int i = 0 ; i < srtlen;i++){
        if(srtcode[i] == 10  || srtcode[i] == 13)//10 is '\n' ,13 is '\r'
            continue;
        image = glyphs[i].glyph;
        FT_Glyph_Get_CBox(glyphs[i].glyph, ft_glyph_bbox_pixels,&glyph_bbox);
        if(glyphs[i].ypos + glyph_bbox.yMax - glyph_bbox.yMin > mWinheight){
            FT_Done_Glyph(image);
            glyphs[i].glyph = NULL;
            break;
        }
        pen.x = glyphs[i].xpos * 64;
        pen.y = glyphs[i].ypos * 64;
        error = FT_Glyph_To_Bitmap(&image,FT_RENDER_MODE_NORMAL,&pen,0);
        if(!error){
            bit = (FT_BitmapGlyph)image;
            /* adjust the alignment of a line */
            bit->top -= glyph_bbox.yMax;
            bit->top += (string_bbox[glyphs[i].row].yMax - glyph_bbox.yMax);
            drawBitmap(&(bit->bitmap),bit->left,bit->top);
            FT_Done_Glyph(image);
            glyphs[i].glyph = NULL;
        }
    }
}

int SubtitleFontManager::loadBmpToBuffer(int index)
{
    if( RenderGfx() >= 0){
        return 0;
    }
    if((buffer == NULL) || (bmp8bit == NULL)){
        LOGE("buffer Or bmp8bit is null, No loadBmpToBuffer!!!\n");
        return -1;
    }
    if((srtcode == NULL) || (srtlen <= 0)){
        LOGE("strcode Or srtlen is null, No loadBmpToBuffer!!!\n");
        return -1;
    }
    IsDrawShadow = false;
    if( loadFace() <0){
        LOGE("Load face failed\n");
        return -1;
    }
    if (HI_FONT_DRAW_STROKE == mfontDrawType)
    {
        setGlyphSlot_Normal(face->glyph);
        loadSrtToBitmap();
        RenderBitmap();
        return 0;
    }
    if(loadSrtToGlyph() < 0){
        resetSrtGlyph();
        LOGE("loadSrtToGlyph failed\n");
        return -1;
    }

    if(mIsSetSubPlace){
        /* set subtitle position */
        FT_BBox bbox,tempbbox;
        bbox.xMax = bbox.xMin = 0;
        tempbbox.xMax = tempbbox.xMin = 0;
        int totalline = getRowNum();
        int i = 1,j = 1;
        for(i = 1;i <= totalline;i++){
            /* fint out the max line */
            tempbbox = getLineBox(i);
            if(tempbbox.xMax == 0 && tempbbox.xMin == 0 && tempbbox.yMax == 0 && tempbbox.yMin == 0){
                resetSrtGlyph();
                return -1;
            }
            if(tempbbox.xMax - tempbbox.xMin > bbox.xMax - bbox.xMin){
                bbox = tempbbox;
                j = i;
            }
        }
        i = 0;
        while(glyphs[i++].row != j);
        int prestartx = glyphs[i -1].xpos;/* the x position of the max line */
        int width = bbox.xMax - bbox.xMin;/* the y position of the max line */
        int premidx = prestartx + width/2;/* the center of the max line */
        int nowmidx = mHorizontal * mWinwidth / 100;/* set the new center */
        LOGV("nowmidx = %d,prestartx = %d",nowmidx,prestartx);
        for(int m = 0;m < srtlen;m++){
            glyphs[m].xpos += nowmidx - premidx;/* move the font to rear */
        }
    }
    renderGlyph();
    if(HI_FONT_DRAW_SHADOW == mfontDrawType){
        IsDrawShadow = true;
        if(loadSrtToGlyph() < 0)
        {
            IsDrawShadow = false;
            LOGE("LoadsrtToGlyph shadow failed\n");
            return -1;
        }
        renderGlyph();
        IsDrawShadow = false;
    }
    int k = 0;
    unsigned char r,g,b;
    r = (unsigned char)((subcolor & 0xFF0000) >> 16);
    g = (unsigned char)((subcolor & 0x00FF00) >> 8);
    b = (unsigned char)(subcolor & 0x0000FF);
    unsigned char bkr,bkg,bkb,bka;
    bka = (unsigned char)((mbkgroundcolor & 0xFF000000) >> 24);
    bkr = (unsigned char)((mbkgroundcolor & 0x00FF0000) >> 16);
    bkg = (unsigned char)((mbkgroundcolor & 0x0000FF00) >> 8);
    bkb = (unsigned char)( mbkgroundcolor & 0x000000FF);
    int starty = mstarty,endy = mWinheight;
    starty = mWinheight - mSubheight - mBottompos;
    endy  = mWinheight -mBottompos;
    if(starty < 0)
    {
        LOGV("out of border");
        k = -starty;
        endy -= starty;
        starty = 0;
    }

    if(endy > mWinheight)
    {
        endy = mWinheight;
    }

    if(starty > mWinheight)
    {
        starty = mWinheight;
    }

    mOldx = 0;
    mOldy = starty;
    mOldWidth = mSubwidth;
    mOldHeight = endy - starty;
    for(int i = starty;i < endy && k < mWinheight;i++){
        for(int j = 0;j < mSubwidth;j++){
            switch( mPixformat)
            {
            case PIXEL_FORMAT_RGBA_8888:{
                if(bmp8bit[k * mSubwidth + j]){//alpha = 0,not Transparent
                    buffer[i * mSubwidth* 4 + j * 4 + index] = r;
                    buffer[i * mSubwidth * 4 + j * 4 + 1 + index] = g;
                    buffer[i * mSubwidth * 4 + j * 4 + 2 + index] = b;
                    buffer[i * mSubwidth * 4 + j * 4 + 3 + index] = 0xFF ^( ~(bmp8bit[k * mSubwidth + j]) );
                }else{//Transparent
                    buffer[i * mSubwidth* 4 + j * 4 + index] = bkr;
                    buffer[i * mSubwidth * 4 + j * 4 + 1 + index] = bkg;
                    buffer[i * mSubwidth * 4 + j * 4 + 2 + index] = bkb;
                    buffer[i * mSubwidth * 4 + j * 4 + 3 + index] = bka;
                }
              }break;
            default:{
              }break;
            }
        }
        k++;
    }

    resetSrtGlyph();

    return 0;
}

/*subtile stroke */
int SubtitleFontManager::loadSrtToBitmap()
{
    int glyph_index = 0;
    FT_Error error;
    int y_row = 1;// row init is one.
    int previous = 0;
    int rowstart = 0;
    int pen_x = 0,pen_y = 0;
    FT_Bool use_kerning;
    use_kerning = FT_HAS_KERNING(face);
    float outlineWidth = 2.0f;
    int n =0, m = 0;
    unsigned char *save_edge_buffer=NULL,
        *save_buffer = NULL;
    int height = 0,
        pitch  = 0,
        key_x  = 0,
        key_y  = 0;
    Vec2Rect rect(3200,3200,-3200,-3200);
    Vec2Rect rectYdiff(3200,3200,-3200,-3200);
    rectYdiff.Include(Vec2(5,5));

    for(n = 0;n < srtlen;n++)
    {
        glyph_index = FT_Get_Char_Index(face,srtcode[n]);
        if(use_kerning && previous && glyph_index)
        {
            FT_Vector   delta;
            FT_Get_Kerning(face,previous,glyph_index,
                FT_KERNING_DEFAULT,&delta);
            float ff = delta.x >> 6;
            pen_x += ff;
        }

        error = FT_Load_Glyph(face,glyph_index,FT_LOAD_FORCE_AUTOHINT);
        if(error)
            continue;
        // Need an outline for this to work.
        if (face->glyph->format != FT_GLYPH_FORMAT_OUTLINE)
            continue;

        FT_Glyph glyph;

        if (FT_Get_Glyph(face->glyph, &glyph) != 0)
            continue;
        FT_Stroker stroker;
        FT_Bitmap bmp;
        FT_Raster_Params params;
        FT_BBox bbox;
        FT_BBox bbox_in;
        FT_Glyph glyph_fg;

        FT_Stroker_New(library, &stroker);
        FT_Stroker_Set(stroker,
            (int)(outlineWidth * 64),
            FT_STROKER_LINECAP_ROUND,
            FT_STROKER_LINEJOIN_ROUND,
            0x20000);

        FT_Glyph_StrokeBorder(&(glyph), stroker, 0, 1);

        FT_Outline *outline = &reinterpret_cast<FT_OutlineGlyph>(glyph)->outline;
        FT_Glyph_Get_CBox(glyph,
            FT_GLYPH_BBOX_GRIDFIT,
            &bbox);
        int width = (bbox.xMax - bbox.xMin)>>6;
        int rows = (bbox.yMax - bbox.yMin)>>6;

        bmp.buffer = new unsigned char[width * rows + 1];
        if (bmp.buffer == NULL)
            LOGW("malloc failed,%s,line:%d\n",__FUNCTION__,__LINE__);
        memset(bmp.buffer, 0, width * rows);
        bmp.width = width;
        bmp.rows = rows;
        bmp.pitch = width;
        bmp.pixel_mode = FT_PIXEL_MODE_GRAY;
        bmp.num_grays = 256;

        memset(&params, 0, sizeof (params));
        params.source = outline;
        params.target = &bmp;
        params.flags = FT_RASTER_FLAG_AA;

        FT_Outline_Translate(outline,-bbox.xMin,-bbox.yMin);
        FT_Outline_Render(library, outline, &params);
        save_edge_buffer = bmp.buffer;

        FT_Get_Glyph(face->glyph, &glyph_fg);
        FT_Glyph_Get_CBox(glyph_fg,
            FT_GLYPH_BBOX_GRIDFIT,
            &bbox_in);

        bmp.buffer = new unsigned char[width * rows + 1];
        if (bmp.buffer == NULL)
            LOGW("malloc failed,%s,line:%d\n",__FUNCTION__,__LINE__);
        memset(bmp.buffer, 0, width * rows);
        bmp.width = width;
        bmp.rows = rows;
        bmp.pitch = width;
        bmp.pixel_mode = FT_PIXEL_MODE_GRAY;
        bmp.num_grays = 256;
        outline = &reinterpret_cast<FT_OutlineGlyph>(glyph_fg)->outline;
        memset(&params, 0, sizeof (params));
        params.source = outline;
        params.target = &bmp;
        params.flags = FT_RASTER_FLAG_AA;
        FT_Outline_Translate(outline,-bbox.xMin,-bbox.yMin);
        FT_Outline_Render(library, outline, &params);
        save_buffer = bmp.buffer;

        FT_Stroker_Done( stroker );
        FT_Done_Glyph(glyph);
        FT_Done_Glyph(glyph_fg);

        int inner_h = (bbox.yMax-bbox_in.yMax)>>6;
        int w = (bbox_in.xMax-bbox_in.xMin)>>6 ;
        int left = (bbox.xMin-bbox_in.xMin)>>6 ;
        width=width;
        //font space
        pitch = MAX((face->glyph->metrics.width>>6) + width-w, (face->glyph->advance.x >> 6)) + mFontspace;
        key_x= (face->glyph->metrics.horiBearingX >> 6)+left ;
        key_y= inner_h+((face->glyph->metrics.horiBearingY) >> 6);
        int difheight = ((face->glyph->metrics.height - face->glyph->metrics.horiBearingY) >> 6)+ inner_h;
        rectYdiff.Include(Vec2(left,difheight));

        previous = glyph_index;

        if (srtcode[n] == 10 || srtcode[n] == 13){
            if (save_buffer)
                delete save_buffer;
            if (save_edge_buffer)
                delete save_edge_buffer;
            save_buffer = NULL;
            save_edge_buffer = NULL;
            pitch = 0;
        }

        if (srtcode[n] == 10 || srtcode[n] == 13 || (pen_x + pitch) >= mWinwidth)
        {
            int tmp_x = pen_x;
            int tmp_y = pen_y;
            int tmp_n = n;
            FontBitmap *s1 = NULL;

            for(int i = n -1; i >= 0; i--)
            {
                s1 = &(mFontBmps.editItemAt(2*i));
                if (s1->buffer != NULL)
                    break;
            }

            if (s1 != NULL && s1->buffer != NULL)
            {
                y_row = s1->rows + 1;
                pen_y = s1->y_pos + rect.ymax + mFontLinespace;
                pen_x = 0;
            }

            LOGV("%s,%s,%d,n=%d,%d\n",__FILE__,__FUNCTION__,__LINE__, n, y_row);

            if ((tmp_x + pitch) >= mWinwidth)
            {
                while (srtcode[n] != 32 && n >= m)//space key
                {
                    n--;
                }
                if (n > m)
                {
                    int adjy = pen_y;

                    for (int i=n + 1; i<tmp_n; i++)
                    {
                        FontBitmap *s = &(mFontBmps.editItemAt(2*i));
                        FontBitmap *sp = &(mFontBmps.editItemAt(2*i+1));
                        s->AdjustCoordinate(pen_x,adjy,y_row);
                        sp->AdjustCoordinate(pen_x,adjy,y_row);
                        pen_x += s->pitch;
                    }
                    s1 = &(mFontBmps.editItemAt(2*n));
                    s1->pitch = 0;
                    s1 = &(mFontBmps.editItemAt(2*n+1));
                    s1->pitch = 0;
#if 0
                    DBG_PRINT("finish %s,%s,%d \n",__FILE__,__FUNCTION__,__LINE__);
                    s1 = &(mFontBmps.editItemAt(2*n));
                    if (NULL != s1->buffer)
                        delete s1->buffer;
                    s1->buffer = NULL;
                    s1->pitch = 0;
                    DBG_PRINT("finish %s,%s,%d \n",__FILE__,__FUNCTION__,__LINE__);
                    s1 = &(mFontBmps.editItemAt(2*n+1));
                    if (NULL != s1->buffer)
                        delete s1->buffer;
                    s1->buffer = NULL;
                    s1->pitch = 0;
#endif
                }
            }
            m = n + 1;
            n = tmp_n;
        }

        int rowstmp = MAX(rows,((bbox.yMax - bbox.yMin)>>6)) + rectYdiff.ymax;
        rect.Include(Vec2(width,(rowstmp)));
        mFontBmps.add(FontBitmap(key_x,key_y,width,rows,pitch,save_edge_buffer,pen_x,pen_y,y_row));
        mFontBmps.add(FontBitmap(key_x,key_y,width,rows,pitch,save_buffer,pen_x,pen_y,y_row));
        pen_x += pitch;//add fontspacesize
    }

    mFontBmps.add(FontBitmap(0,0,rectYdiff.xmax,rectYdiff.ymax,0,NULL,0,0,0));//recorder the ymax
    return 0;

}
/*subtile stroke render*/
int SubtitleFontManager::RenderBitmap()
{
    if (mFontBmps.isEmpty())
        return -1;
    int y0Max = 0;
    const FontBitmap *s = &(mFontBmps.top());
    mFontBmps.pop();
    y0Max = s->height;

    int index = 0;
    int max = mFontBmps.size()/2;
    int rows =0,
        width=0,
        key_y=0,
        pen_x=0,
        pen_y=0,
        y0   =0,
        dif  =0;
    unsigned char *save_edge_buffer=NULL,
                  *save_buffer=NULL;
    Vec2Rect rect(3200,3200,-3200,-3200);
    int row0 = 0;
    unsigned char r,g,b;
    unsigned char bkr,bkg,bkb,bka;

    r = (unsigned char)((subcolor & 0xFF0000) >> 16);
    g = (unsigned char)((subcolor & 0x00FF00) >> 8);
    b = (unsigned char)(subcolor & 0x0000FF);
    bka = (unsigned char)((mbkgroundcolor & 0xFF000000) >> 24);
    bkr = (unsigned char)((mbkgroundcolor & 0x00FF0000) >> 16);
    bkg = (unsigned char)((mbkgroundcolor & 0x0000FF00) >> 8);
    bkb = (unsigned char)( mbkgroundcolor & 0x000000FF);

    Pixel32 *dst = new Pixel32(r, g, b, 0),
            *src = new Pixel32(~r,~g,~b,0);

    s = &(mFontBmps.itemAt(0));
    row0 = s->rows;
    DBG_PRINT("mFontBmps size:%d\n",max);
    /*
    for (index = 0; index < max; index++)
    {
        const FontBitmap *es = &(mFontBmps.itemAt(2*index));
        if (es->rows != row0){
            break;
        }
        int dis = (es->height - es->bearingY);
        rect.Include(Vec2(dis,dis));
    }*/

    y0 = y0Max + mBottompos;
    row0 = 0;// row can not be zero.
    rect.xmax = -3200;
    rect.xmin = 3200;
    rect.ymax = -3200;
    rect.ymin = 3200;

    for (index= max -1; index >=0; index--)
    {
        FontBitmap *es = &(mFontBmps.editItemAt(2*index));
        FontBitmap *fs = &(mFontBmps.editItemAt(2*index+1));

        if (es->buffer == NULL || fs->buffer == NULL || es->pitch == 0 || fs->pitch==0){
            if (NULL != es->buffer)
                delete es->buffer;
            if (NULL != fs->buffer)
                delete fs->buffer;
            continue;
        }
        if (es->rows != row0){//set center
            if( mIsSetSubPlace ){
                dif = (mWinwidth - es->x_pos - es->pitch) * mHorizontal/ 100.0;
            }else{
                if( align == CENTER )
                    dif = (mWinwidth - es->x_pos - es->pitch)/2.0;
                else if( align == RIGHT)
                    dif = (mWinwidth - es->x_pos - es->pitch);
            }
            //dif = (mWinwidth - es->x_pos - es->pitch)/2.0;
            if (0 == row0){
                y0 += es->y_pos;
            }
            row0 = es->rows;
        }
        rows = es->height;
        width= es->width;
        pen_x= es->x_pos;
        pen_y= es->y_pos;
        key_y= es->bearingY;
        save_edge_buffer = es->buffer;
        save_buffer = fs->buffer;
        for (int i=0; i< rows;i++)
        {
            for( int j=0;j<width;j++)
            {
                if (save_buffer[i*width+j] || save_edge_buffer[i*width+j])
                {
                    int y = mWinheight -y0 + pen_y + i - key_y;
                    int x = pen_x + dif + j;
                    rect.Include(Vec2(x,y));
                    int ii = (y*mWinwidth + x);
                    if ( ii < 0 || ii > mWinwidth* mWinheight)
                        continue;
                    unsigned char *q = &buffer[ii*4];
                    if ( save_buffer[i*width+j]){
                        //dst = new Pixel32(~r,~g,~b,0xFF ^ (~save_edge_buffer[i*width+j]));
                        //src = new Pixel32(r, g, b, 0xFF ^ (~save_buffer[i*width+j]));
                        src->a = 0xFF ^ (~save_edge_buffer[i*width+j]);
                        dst->a = 0xFF ^ (~save_buffer[i*width+j]);
                        q[0] = MIN(255,(src->r + ((dst->r - src->r) * dst->a) / 255.0f));
                        q[1] = MIN(255,(src->g + ((dst->g - src->g) * dst->a) / 255.0f));
                        q[2] = MIN(255,(src->b + ((dst->b - src->b) * dst->a) / 255.0f));
                        q[3] = MIN(255, src->a + dst->a);
                    }
                    else{
                        src->a = 0xFF ^ (~save_edge_buffer[i*width+j]);
                        dst->a = 0xFF ^ (~save_buffer[i*width+j]);
                        q[0] = MIN(255,(dst->r + ((src->r - dst->r) * src->a) / 255.0f));
                        q[1] = MIN(255,(dst->g + ((src->g - dst->g) * src->a) / 255.0f));
                        q[2] = MIN(255,(dst->b + ((src->b - dst->b) * src->a) / 255.0f));
                        q[3] = MIN(255, dst->a + src->a);
                    }
                }
            }
        }
        delete es->buffer;
        es->buffer = NULL;
        delete fs->buffer;
        fs->buffer = NULL;

    }

    mOldx = rect.xmin;
    mOldy = rect.ymin;
    mOldWidth = rect.Width();
    mOldHeight= rect.Height();

    //clear data list
    mFontBmps.clear();
    if (src) delete src;
    if (dst) delete dst;
    src = dst = NULL;

    return 0;
}

void SubtitleFontManager::clearSubDataList()
{
    Mutex::Autolock lock(mSubListLock);

    srtlen = 0;
    memset(srtcode,0, (SUB_CHAR_MAX_LEN + 4)*sizeof(unsigned int));

    //clear linklist
    if (NULL == pstSubData) return;

    SUBTITLE_DATA_S *p = pstSubData;
    SUBTITLE_DATA_S *q = NULL;

    while(p != NULL)
    {
        q = p;
        if (q == NULL)
            break;
        p = p->next;
        switch (q->etype)
        {
        case SUBTITLE_DATA_TYPE_GFX:
            {
                if (NULL != q->unSubtitleData.stGfx.pu8PixData)
                {
                    free(q->unSubtitleData.stGfx.pu8PixData);
                    q->unSubtitleData.stGfx.pu8PixData = NULL;
                }
            }break;
        case SUBTITLE_DATA_TYPE_TEXT:
            {
            }break;
        default:
            break;
        }
        free(q); //free Subdata
        pstSubData = NULL;
    }
}

void SubtitleFontManager::insertSubDataList(SUBTITLE_DATA_S* p)
{
    if(NULL == p)
    {
        return;
    }

    Mutex::Autolock lock(mSubListLock);
    if (pstSubData == NULL)
    {
        pstSubData = p;
        pstSubData->mGfxWidth = p->unSubtitleData.stGfx.w;
        pstSubData->mGfxHeight = p->unSubtitleData.stGfx.h;
        pstSubData->next = NULL;
    }
    else
    {
        p->next = pstSubData;/* the subtitle up roll */
        pstSubData = p;

        if (p->unSubtitleData.stGfx.w > pstSubData->mGfxWidth)
        {
            pstSubData->mGfxWidth = p->unSubtitleData.stGfx.w;
        }
        pstSubData->mGfxHeight += p->unSubtitleData.stGfx.h;
    }
}

void SubtitleFontManager:: clearBmpBuffer(int index)
{
    if (buffer == NULL){
        return;
    }

    if( DisableSubtitle > 0)
    {
        mOldWidth =0;
        mOldHeight =0;
    }
    if( (mOldWidth >0) && (mOldHeight >0) )
    {
        resetBmpBuffer();
        return;
    }
    LOGV("clear bmp Data\n");
    LOGV("mWinwidth %d and mWinheight %d Data\n", mWinwidth, mWinheight);
    if (true == mIsXBMC)
    {
        unlink("/mnt/picsub.bmp");
    }
    memset(buffer, 0x00, mWinwidth*mWinheight*sizeof(unsigned int));
}


FT_BBox SubtitleFontManager::getLineBox(int row)
{
    FT_BBox     bbox,glyph_bbox;
    bbox.xMax = bbox.xMin = bbox.yMax = bbox.yMin = 0;
    int error;
    int i = 0;
    while(glyphs[i++].row != row);/* begin of row line */
    int j = i - 1;
    while(glyphs[j++].row == row);/* end of row line*/
    int glyph_index;
    glyph_index = FT_Get_Char_Index(face,srtcode[j - 2]);
    error = FT_Load_Glyph(face,glyph_index,FT_LOAD_FORCE_AUTOHINT);
    if(error)
        return bbox;
    int advance = face->glyph->advance.x >> 6;
    bbox.xMin = glyphs[i - 1].xpos;
    bbox.xMax = glyphs[j - 2].xpos + advance;
    bbox.yMin = glyphs[i - 1].ypos;
    bbox.yMax = string_bbox[row].yMax - string_bbox[row].yMin + glyphs[i - 1].ypos;
    LOGV("advance.x = %d,bbox.xMin = %ld,bbox.xMax = %ld",advance,bbox.xMin,bbox.xMax);
    return bbox;
}

int SubtitleFontManager::getRowNum()
{
    return glyphs[srtlen - 1].row;
}


//add the unicode convert
int SubtitleFontManager::getChLength(unsigned char c)//the length of UTF-8 unicode
{
    if(c < 0x7F)
        return 1;
    else if((c & 0xE0) == 0xC0)
        return 2;
    else if((c & 0xF0) == 0xE0)
        return 3;
    return 0;
}

int SubtitleFontManager::UTF8ToUNICODE(unsigned char *byte, int& index, int bytelen, unsigned int& unicode)
{
    if (index >= bytelen) return 0;
    if ( (byte[index] & 0x80) == 0x0) // one byte
    {
        unicode = byte[index];
        index++;
    }
    else if ((byte[index] & 0xE0) == 0xC0) // two bytes
    {
        if (index + 1 >= bytelen ) return 0;
        unicode = (((unsigned int)(byte[index] & 0x1F)) << 6)
            | (byte[ index + 1] & 0x3F);
        index += 2;
    }
    else if ((byte[index] & 0xF0) == 0xE0) // three bytes
    {
        if (index + 2 >= bytelen) return 0;
        unicode = (((unsigned int)(byte[index] & 0x0F)) << 12)
            | (((int)(byte[index  + 1] & 0x3F)) << 6)
            | (byte[index + 2] & 0x3F);
        index += 3;
    }
    else if ((byte[index] & 0xF8) == 0xF0) // four bytes
    {
        if (index + 3 >= bytelen) return 0;
        unicode = (((unsigned int)(byte[index] & 0x07)) << 18)
            | (((unsigned int)(byte[index + 1] & 0x3F)) << 12)
            | (((unsigned int)(byte[index + 2] & 0x3F)) << 6)
            | (byte[index + 3] & 0x3F);
        index += 4;
    }
    else if ((byte[index] & 0xFC) == 0xF8) // five bytes
    {
        if (index + 4 >= bytelen) return 0;
        unicode = (((unsigned int)(byte[index] & 0x03)) << 24)
            | (((unsigned int)(byte[index + 1] & 0x3F)) << 18)
            | (((unsigned int)(byte[index + 2] & 0x3F)) << 12)
            | (((unsigned int)(byte[index + 3] & 0x3F)) << 6)
            | (byte[index + 4] & 0x3F);
        index += 5;
    }
    else if ((byte[index] & 0xFE) == 0xFC) // six bytes
    {
        if (index + 5 >= bytelen) return 0;
        unicode = (((unsigned int)(byte[index] & 0x01)) << 30)
            | (((unsigned int)(byte[index + 1] & 0x3F)) << 24)
            | (((unsigned int)(byte[index + 2] & 0x3F)) << 18)
            | (((unsigned int)(byte[index + 3] & 0x3F)) << 12)
            | (((unsigned int)(byte[index + 4] & 0x3F)) << 6)
            | (byte[index + 5] & 0x3F);
        index += 6;
    }
    else
    {
        index++;
        return -1;
    }
    return 1;
}



uint16 SubtitleFontManager::Character_UTF8ToUnicode(char* characterUTF8,int start,int len)
{
    char* uchar = (char*)(&us);
    switch(len){
        case 1:
            uchar[1] = 0;
            uchar[0] = characterUTF8[start];
            break;
        case 2:
            uchar[1] = ((characterUTF8[start] >> 2) & 0x07);
            uchar[0] = ((characterUTF8[start] & 0x03) << 6) +
                ((characterUTF8[start + 1] & 0x3F));
            break;
        case 3:
            uchar[1] = ((characterUTF8[start] & 0x0F) << 4) +
                ((characterUTF8[start + 1] >>2) & 0x0F);
            uchar[0] = ((characterUTF8[start + 1] & 0x03) << 6) +
                (characterUTF8[start + 2] & 0x3F);
            break;
    }
    return us;
}

int SubtitleFontManager::String_UTF8ToUnicode(unsigned char * textUTF8 ,int textlen, unsigned int *unicode, int &strCount )
{
    if((textUTF8 == NULL) || (textlen <=0))
        return -1;
    int retval = 0;
    int index = 0;
    int count = 0;
    int tag = 0;
    strCount = 0;
    while ( index < textlen )
    {
        tag = UTF8ToUNICODE(textUTF8, index, textlen, unicode[strCount]);
        // 0x00 is null '\0' so do not count it
        if( tag > 0 && 0 != unicode[strCount])
        {
            strCount++;
        }
        else{
            if( tag < 0 ){
                count++;
            }
            else if (0 == tag) {
                break;
            }
        }
        if( strCount > SUB_CHAR_MAX_LEN )
        {
            LOGV("Warning: UTF8 data is too long, Can not store to Subtitle unicode struct, It has been cut!!!\n");
            retval = 0;
            break;
        }
    }
    if( count > 0 )
        LOGV("Warning:Subtitle, %d bytes UTF8 data can not change to Unicode!\n", count);
    while(strCount > 1 &&  (unicode[strCount - 1] == 10)  && (unicode[strCount -2] == 13))
        strCount = strCount -2;// clear '\n' at the end
    while(strCount > 0 &&  ((unicode[strCount - 1] == 10) || (unicode[strCount -2] == 13)))
        strCount = strCount -1;// clear '\n' at the end
    if( (strCount > 0) && (unicode[ strCount - 1 ] != 10 ) )
        unicode[ strCount++ ] = 10;
    unicode[strCount] = '\0';
    mIsGfx = false; // add for Gfx render
    return retval;
}
void SubtitleFontManager::setGlyphSlot_Italic( FT_GlyphSlot  slot )
{
    FT_Face     face    = slot->face;
    float lean = 0.5f;
    FT_Matrix matrix;

    matrix.xx = 0x10000L;
    matrix.xy = lean * 0x10000L;
    matrix.yx = 0;
    matrix.yy = 0x10000L;
    FT_Set_Transform( face, &matrix, 0 );
}
void SubtitleFontManager::setGlyphSlot_Normal( FT_GlyphSlot  slot )
{
    FT_Face     face    = slot->face;
    FT_Matrix matrix;

    matrix.xx = 0x10000L;
    matrix.xy = 0;
    matrix.yx = 0;
    matrix.yy = 0x10000L;
    FT_Set_Transform( face, &matrix, 0 );
}
int SubtitleFontManager::setDrawEmbolden(FT_Library   library, FT_Glyph    *pglyph)
{
    FT_Stroker stroker;
    int error;

    error = FT_Stroker_New( library, &stroker );
    if( error )
    {
        return error;
    }
    FT_Stroker_Set( stroker, (mFontsize+10)/2, FT_STROKER_LINECAP_BUTT,
        FT_STROKER_LINEJOIN_ROUND, 0x20000 );
    error = FT_Glyph_StrokeBorder(pglyph, stroker, 0, 1);
    FT_Stroker_Done( stroker );
    return error;
}
int SubtitleFontManager::setDrawHollow(FT_Library   library, FT_Glyph    *pglyph)
{
    FT_Stroker stroker;
    int error;

    error = FT_Stroker_New( library, &stroker );
    if( error )
    {
        return error;
    }
    FT_Stroker_Set( stroker, (mFontsize+10)/2, FT_STROKER_LINECAP_BUTT,
        FT_STROKER_LINEJOIN_ROUND, 0x20000 );
    error = FT_Glyph_Stroke(pglyph, stroker, 1 );
    FT_Stroker_Done( stroker );
    return error;
}

int SubtitleFontManager::resetBmpBuffer()
{
    LOGV("resetBmpBuffer\n");
    if (buffer == NULL){
        return -1;
    }
    int i,j,index;
    uint32_t *p = (uint32_t*)buffer;
    int32_t MaxSize = mWinwidth * mWinheight;
    for(i = 0; i<= mOldHeight +2; i++)
    {
        for(j=0; j<= mOldWidth +2; j++)
        {
            index = (i +mOldy -1)*mSubwidth +j + mOldx -1;
            if( index <0 || index >= MaxSize)
                continue;
            p[ index] = 0x00;
        }
    }
    return 0;
}
int SubtitleFontManager::resetFontRatio(int width,int height)
{
    if( width > 0 && height > 0)
    {
        float oldRatio = mRatio; //add to fix DTS2012041401703
        mRatio = float(width) / DEFAULTWINDOW_WIDTH;
        float size = float(height) /DEFAULTWINDOW_HEIGHT;
        if( size < mRatio)
            mRatio = size;
        LOGV("resetFontRatio(%f)\n",mRatio);
        if(oldRatio != 0) //add to fix DTS2012041401703
        {
            mFontsize = mFontsize * mRatio / oldRatio;
            mPicRatio = mRatio * mFontsize / DEFAULT_FONT_SIZE;
            mFontspace = mFontspace * mRatio / oldRatio;
            mFontLinespace = mFontLinespace * mRatio / oldRatio;
            mIsSetFontSize = true;
        }
        return 0;
    }
    return -1;
}

int SubtitleFontManager::setSubFramePackType(int type)
{
    mSubFramePackType = type;
    return 0;
}

int SubtitleFontManager::resetSubtitleConfig(int vo_width, int vo_height, void* DrawBuffer,int pixformat)
{
    int newSize=0;
    LOGV("resetSubtitleConfig(%d,%d)\n",vo_width,vo_height);
    LOGV("resetSubtitleConfig mWinwidth mWinheight(%d,%d)\n", mWinwidth, mWinheight);
    buffer = (unsigned char*)DrawBuffer;
    if (PIXEL_FORMAT_RGBA_8888 != pixformat)
    {
        LOGW("[resetSubtitleConfig] unsupport format(%d) !\n", pixformat);
        buffer = NULL;
        return -1;
    }
    if (NULL!=buffer)
    {
        memset(buffer, 0x00, vo_width * vo_height * sizeof(unsigned int));
    }
    if ((mWinwidth != vo_width) || (mWinheight != vo_height))
    {
        resetFontRatio(vo_width,vo_height);
    }
    mWinwidth = vo_width;
    mWinheight = vo_height;
    mSubwidth = vo_width ;
    mSubheight = vo_height;
    mPixformat = pixformat;
    newSize = vo_width * vo_height;
    if( bmp8bitSize < newSize){
        if( bmp8bit ){
            bmp8bitSize =0;
            free(bmp8bit);
            bmp8bit = NULL;
        }
        bmp8bit =(unsigned char*) malloc( newSize * sizeof(unsigned char));
        if( bmp8bit == NULL){
            bmp8bitSize =0;
            LOGE("[resetSubtitleConfig] malloc bmp8bit failed\n");
            return -1;
        }
        bmp8bitSize = newSize;
        mOldWidth = 0;
        mOldHeight =0;
    }
    return 0;
}

/*  Picture crop, remove transparent lines top and bottom
*   +------------------------------+ -----------
*   |        ORG Picture           |   topoffset
*   ++++++++++++++++++++++++++++++++ -----------
*   +++++   Crop Picture      ++++++  new height
*   ++++++++++++++++++++++++++++++++ -----------
*   |                              |
*   +------------------------------+
*/
int cropBmp(HI_UNF_SO_GFX_S* pstGfx, int* newheight, int* topoffset)
{
    unsigned char u8Alpha = 0;
    unsigned int i = 0, j = 0, k = 0;

    if (pstGfx->u32Len == 0)
    {
        LOGW("Warning: picture datalength = 0 !!");
        return -1;
    }

    //clear head and end transparent line
    //from top to bottom, i lines blank
    for (i=0; i < pstGfx->h; i++)
    {
        u8Alpha = 0;
        for (k = 0; k < pstGfx->w; k++)
        {
            if (pstGfx->stPalette[pstGfx->pu8PixData[i*pstGfx->w + k]].u8Alpha > 0)
             {
                u8Alpha = 1;
                break;
            }
        }
        if (u8Alpha > 0)
            break;
    }
    if (i==pstGfx->h) //reach to bottom
    {
        LOGW("Warning: Picture all transparent data !!");
        return -1;
    }

    //from bottom to i,  pstGfx->h -j lines blank
    for (j = pstGfx->h-1; j > i; j--)
    {
        u8Alpha = 0;
        for (k = 0; k < pstGfx->w; k++)
        {
            if (pstGfx->stPalette[pstGfx->pu8PixData[j*pstGfx->w + k]].u8Alpha > 0){
                u8Alpha = 1;
                break;
            }
        }
        if ( u8Alpha > 0)
            break;
    }
    j += 1;

    *topoffset = i;
    *newheight = (j-i);
    LOGI("Info: crop picture from (%dx%d) to (%dx%d)",pstGfx->w,pstGfx->h, pstGfx->w,*newheight);
    return 0;
}

int SubtitleFontManager::getBmpData(void *pGfx)
{
    if( pGfx == NULL)
        return -1;

    SUBTITLE_DATA_S *p = NULL;
    HI_UNF_SO_GFX_S* pstGfx = (HI_UNF_SO_GFX_S*)pGfx;
    int s32Size = pstGfx->w * pstGfx->h;
    int i = 0, j = 0, k = 0;
    unsigned char u8Alpha;
    int copysize = pstGfx->u32Len;

    p = (SUBTITLE_DATA_S*)malloc(sizeof(SUBTITLE_DATA_S));
    if (NULL == p)
    {
        LOGW("Warning: malloc failed, FILE:%s, LINE:%d\n",__FILE__, __LINE__);
        return -1;
    }
    memset(p, 0, sizeof(SUBTITLE_DATA_S));
    p->next = NULL;

    if (s32Size > 0)
    {
        p->unSubtitleData.stGfx.pu8PixData = (unsigned char*)malloc(s32Size * sizeof(unsigned char));
        if(p->unSubtitleData.stGfx.pu8PixData == NULL){
            LOGW("Warning: Subtitle RenderGfx malloc pu8PixData failed, %s, %d\n", __FILE__, __LINE__);
            free(p);
            return -1;
        }

        // if subtitle has its own subtitle
        if (pstGfx->u32CanvasWidth >0 && pstGfx->u32CanvasWidth <= 1920
            && pstGfx->u32CanvasHeight > 0 && pstGfx->u32CanvasHeight <=1080)
        {
            setRawPicSize(pstGfx->u32CanvasWidth, pstGfx->u32CanvasHeight);
        }
        else if (pstGfx->w > 720 || pstGfx->h > 576)
        {
            setRawPicSize(1920,1080);
        }
    }

    //save picture information
    p->etype = SUBTITLE_DATA_TYPE_GFX;
    p->unSubtitleData.stGfx.enMsgType = pstGfx->enMsgType;
    p->unSubtitleData.stGfx.h = pstGfx->h;
    p->unSubtitleData.stGfx.w = pstGfx->w;
    p->unSubtitleData.stGfx.x = pstGfx->x;
    p->unSubtitleData.stGfx.y = pstGfx->y;
    p->unSubtitleData.stGfx.s32BitWidth = pstGfx->s32BitWidth;
    p->unSubtitleData.stGfx.s64Pts = pstGfx->s64Pts;
    p->unSubtitleData.stGfx.u32Duration = pstGfx->u32Duration;
    p->unSubtitleData.stGfx.u32Len = pstGfx->u32Len;
    p->y_org = pstGfx->y; //save original location
    memcpy( p->unSubtitleData.stGfx.stPalette, pstGfx->stPalette, HI_UNF_SO_PALETTE_ENTRY * sizeof(HI_UNF_SO_COLOR_S));

    //crop picture
    int newheight=0, topoffset=0, s32Ret = 0;
    s32Ret = cropBmp(pstGfx, &newheight, &topoffset);
    if (s32Ret == 0)
    {
        p->unSubtitleData.stGfx.h = newheight;
        p->unSubtitleData.stGfx.y = pstGfx->y + topoffset; //update h
        p->unSubtitleData.stGfx.u32Len = copysize;
        memcpy(p->unSubtitleData.stGfx.pu8PixData, &(pstGfx->pu8PixData[topoffset*pstGfx->w]), pstGfx->w*newheight);
    }else{ //No picture data or transparent
        p->unSubtitleData.stGfx.h = 0;
        p->unSubtitleData.stGfx.y = 0;
        p->unSubtitleData.stGfx.u32Len = 0;
    }

    //clean SubList while position same, Only one sentence at one place

    clearSubDataList();    //free the GFX data from SO
    insertSubDataList(p);  //add the newpicture in list for display
    mIsGfx = true;

    return 0;
}


static void bmp_clear(const char *filename)
{

    unlink(filename);
    return ;
}

static void bmp_save(const char *filename, unsigned char* buffer, int w, int h, int bits)
{
    typedef struct BMP
    {
        uint8_t   BM[2];
        uint32_t  fsize;
        uint16_t  resv0;
        uint16_t  resv1;
        uint32_t  offset;
        uint32_t  resv2;
        uint32_t  w;
        uint32_t  h;
        uint16_t  resv3;
        uint16_t  resv4;
        uint32_t  resv5;
        uint32_t  datasize;
        uint32_t  resv6;
        uint32_t  resv7;
        uint32_t  resv8;
        uint32_t  resv9;
    }BMP;

    int x,y,v;
    FILE *f;
    char fname[1024];
    snprintf(fname, sizeof(fname), "%s.tmp", filename);
    BMP bmp;

    bmp.BM[0]   = 'B';
    bmp.BM[1]   = 'M';
    bmp.fsize= w*h*4+54;
    bmp.resv0= 0;
    bmp.resv1= 0;
    bmp.offset= 54;
    bmp.resv2= 0x28;
    bmp.w    = w;
    bmp.h    = h;
    bmp.resv3= 0x01;
    bmp.resv4= bits;//8,16,32
    bmp.resv5= 0x00;
    bmp.datasize= w*h;
    bmp.resv6= 0;
    bmp.resv7= 0;
    bmp.resv8= 0;
    bmp.resv9= 0;

    f = fopen(fname, "wb");
    if (!f) {
        ALOGE("Open [%s] error",fname);
        perror(fname);
        return;
    }
    ALOGE("Open [%s] OK",fname);
    fwrite(&bmp.BM,2,1,f);
    fwrite(&bmp.fsize,4,1,f);
    fwrite(&bmp.resv0,2,1,f);
    fwrite(&bmp.resv1,2,1,f);
    fwrite(&bmp.offset,4,1,f);
    fwrite(&bmp.resv2,4,1,f);
    fwrite(&bmp.w    ,4,1,f);
    fwrite(&bmp.h    ,4,1,f);
    fwrite(&bmp.resv3,2,1,f);
    fwrite(&bmp.resv4,2,1,f);
    fwrite(&bmp.resv5,4,1,f);
    fwrite(&bmp.datasize,4,1,f);
    fwrite(&bmp.resv6,4,1,f);
    fwrite(&bmp.resv7,4,1,f);
    fwrite(&bmp.resv8,4,1,f);
    fwrite(&bmp.resv9,4,1,f);

    for(x=h-1;x>=0;x--)
    {
        fwrite((uint8_t*)((uint8_t*)(buffer)+x*w*4), w*4,1, f);
    }

    fclose(f);
    ALOGE("save (%s) OK wxh = (%d x %d)",fname, w, h);

    rename(fname, filename);
    return;
}

int SubtitleFontManager::RenderGfx()
{
    if( ( mIsGfx == false) ||( buffer == NULL ))
        return -1;
    LOGV("load Gfx data to Display\n");

    Mutex::Autolock lock(mSubListLock);
    if (NULL == pstSubData)
    {
        LOGV("Warning: no subdata, %s, %d\n",__FILE__,__LINE__);
        return -1;
    }

    HI_UNF_SO_GFX_S *pstGfx = NULL;
    SUBTITLE_DATA_S *p = NULL;
    SUBTITLE_DATA_S *q = NULL;
    unsigned char   *u8Data = NULL;
    unsigned char   *In = NULL;
    int             InSize = 0;
    unsigned int    time_start = clock();
    unsigned int    time_end;
    float PicRatio = 1.0;
    float PicRatiow = 1.0;
    float PicRatioh = 1.0;
    float ratio = 1.0;
    int   bwidth = 0, bheight = 0;
    int   x = 0, y = 0, lx = 0, ly = 0;// save the gfx (x,y), gfx list (lx,ly)
    int   deltx=0,delty=0; //x,y adjustment default to center
    int   index = 0;
    int   i = 0, j = 0;
    unsigned int   originaly = 0;

    if ( mRawPicWidth > 0)
    {
        PicRatiow = mWinwidth / (1.0 * mRawPicWidth);
        PicRatioh = mWinheight / (1.0 * mRawPicHeight);
        PicRatio = PicRatiow < PicRatioh ? PicRatiow:PicRatioh;
        if (PicRatiow>=PicRatioh)
        {
            deltx = (mWinwidth - mRawPicWidth*PicRatio)/2;
        }else{
            delty = (mWinheight - mRawPicHeight*PicRatio)/2;
        }
        LOGI("Canvas size: %dx%d Screen size: %dx%d stretchRatio=%5.2f adjust: x=%d y=%d",
            mRawPicWidth,mRawPicHeight,mWinwidth, mWinheight, PicRatio, deltx, delty);
    }
    else
    {
        PicRatio = 1.0*mWinwidth/(720.0);
    }

    ratio =  PicRatio;

    p = pstSubData;
    In = NULL;
    lx = pstSubData->mGfxWidth;
    ly = pstSubData->mGfxHeight;
    InSize = 0;
    mOldx = 0;
    mOldy = 0;
    mOldWidth = 0;
    mOldHeight= 0;

    while ( p != NULL)
    {
        pstGfx = NULL;
        if (p->etype == SUBTITLE_DATA_TYPE_GFX)
        {
            pstGfx = &(p->unSubtitleData.stGfx);
            originaly = p->y_org;
        }
        p = p->next;//get next sub data

        if (NULL == pstGfx || NULL == pstGfx->pu8PixData)
        {
            continue;
        }

        u8Data = pstGfx->pu8PixData;
        bwidth = pstGfx->w;
        bheight = pstGfx->h;

        if (pstGfx->x == 0xFFFFFFFF && originaly == 0xFFFFFFFF )//No position, set to bottom_center
        {
            x = 0;
            y = (mWinheight - ratio * bheight - mBottompos);

            if (mIsSetSubPlace) {
                x = (mWinwidth - ratio*lx) * mHorizontal/ 100.0;
            }else{
                if( align == CENTER )
                    x = (mWinwidth - ratio*lx) /2.0;
                else if( align == RIGHT)
                    x = (mWinwidth - ratio*bwidth);
            }
            deltx = 0; //center mode no need adjust
            delty = 0;
        }
        else //has position
        {
            if (mRawPicWidth != 0) {
                x = pstGfx->x * mWinwidth / mRawPicWidth;
            }else {
                x = pstGfx->x * mWinwidth / 1920;
            }

            if (mRawPicHeight != 0) {
                y = pstGfx->y * mWinheight / mRawPicHeight;
            } else {
                y = pstGfx->y * mWinheight / 1080;
            }
            y -= mBottompos;
        }
        x += deltx; //move to center
        y += delty; //move to center

        if( (bwidth <=0) || (bheight <=0) || (u8Data ==NULL) || (pstGfx->u32Len <=0)){
            LOGV("RenderGfx failed, width:%d, height:%d, u8Data:0x%x, u32Len:%d\n", bwidth,bheight, (unsigned int)u8Data,pstGfx->u32Len);
            continue;
        }
        y -= mOldHeight;
        mOldx = x;
        mOldy = y;
        mOldWidth = ratio * lx;
        mOldHeight += ratio * bheight + 5;

        //check y value
        if ((y + ratio* bheight) < 0)
            continue;

        if ( bwidth * bheight > InSize)
        {
            if (In)
            {
                free(In);
                In = NULL;
                InSize = 0;
            }
            In = (unsigned char*)malloc(bwidth * bheight * sizeof(unsigned int));
            if( In == NULL )
            {
                LOGE("Malloc memery for In image failed\n");
                break;
            }
            InSize = bwidth * bheight;
        }

        if (0 == mSubFramePackType)
        {
            //normal 2d subtitle
            //from pallete to RGBA data
            for(i =0; i< bheight; i++)
            {
                for(j=0; j< bwidth; j++)
                {
                    index = u8Data[i*bwidth + j];
                    In[(i* bwidth + j)*4 + 0] = pstGfx->stPalette[ index ].u8Red;
                    In[(i* bwidth + j)*4 + 1] = pstGfx->stPalette[ index ].u8Green;
                    In[(i* bwidth + j)*4 + 2] = pstGfx->stPalette[ index ].u8Blue;
                    In[(i* bwidth + j)*4 + 3] = pstGfx->stPalette[ index ].u8Alpha;
                    if (In[(i* bwidth + j)*4 + 3] == 0)//alpha=0,clear RGB
                    {
                        memset(&In[(i* bwidth + j)*4], 0x00, 4);
                    }
                }
            }
            time_end = clock();
            LOGI("Picture prepared spend  %8d us", time_end - time_start);
            ResizeImage(ratio, In, buffer, bwidth, bheight, ratio*bwidth, ratio*bheight, mWinwidth, mWinheight, x, y);
            time_end = clock();
            LOGI("After ResizeImage spend %8d us", time_end - time_start);
        }
        else if (1 == mSubFramePackType)
        {
            //side by side subtitle
            //from pallete to RGBA data
            for(i =0; i< bheight; i++)
            {
                for(j=0; j< bwidth / 2; j++)
                {
                    index = u8Data[i*bwidth + j];
                    In[(i * (bwidth / 2) + j) * 4 + 0] = pstGfx->stPalette[ index ].u8Red;
                    In[(i * (bwidth / 2) + j) * 4 + 1] = pstGfx->stPalette[ index ].u8Green;
                    In[(i * (bwidth / 2) + j) * 4 + 2] = pstGfx->stPalette[ index ].u8Blue;
                    In[(i * (bwidth / 2) + j) * 4 + 3] = pstGfx->stPalette[ index ].u8Alpha;
                    if (In[(i * (bwidth / 2) + j) * 4 + 3] == 0)//alpha=0,clear RGB
                    {
                        memset(&In[(i * (bwidth / 2) + j) * 4], 0x00, 4);
                    }
                }
            }
            time_end = clock();
            LOGI("Picture prepared spend  %8d us", time_end - time_start);
            ResizeImage(ratio, In, buffer, bwidth / 2, bheight, ratio * (bwidth / 2), ratio * bheight, mWinwidth, mWinheight, x + bwidth / 4, y);
            time_end = clock();
            LOGI("After ResizeImage spend %8d us", time_end - time_start);
        }
        else if (2 == mSubFramePackType)
        {
            //top and bottom subtitle
            //from pallete to RGBA data
            for(i =0; i< bheight / 2; i++)
            {
                for(j=0; j< bwidth; j++)
                {
                    index = u8Data[i * bwidth + j];
                    In[(i * bwidth + j) * 4 + 0] = pstGfx->stPalette[ index ].u8Red;
                    In[(i * bwidth + j) * 4 + 1] = pstGfx->stPalette[ index ].u8Green;
                    In[(i * bwidth + j) * 4 + 2] = pstGfx->stPalette[ index ].u8Blue;
                    In[(i * bwidth + j) * 4 + 3] = pstGfx->stPalette[ index ].u8Alpha;
                    if (In[(i * bwidth + j) * 4 + 3] == 0)//alpha=0,clear RGB
                    {
                        memset(&In[(i * bwidth + j) * 4], 0x00, 4);
                    }
                }
            }
            time_end = clock();
            LOGI("Picture prepared spend  %8d us", time_end - time_start);
            ResizeImage(ratio, In, buffer, bwidth, bheight / 2, ratio * bwidth, ratio * (bheight / 2), mWinwidth, mWinheight, x, y + bheight / 2);
            time_end = clock();
            LOGI("After ResizeImage spend %8d us", time_end - time_start);
        }
    }

    if( In )
    {
        if (true == mIsXBMC)
        {
            //save bmp
            char buffer[PROP_VALUE_MAX];
            int resolution = 0;
            int mSurfaceWidth = 0;
            int mSurfaceHeight = 0;

            DisplayClient DspClient;
            DspClient.GetVirtScreenSize(&mSurfaceWidth, &mSurfaceHeight);

            unsigned char* pBMP = NULL;
            pBMP = (unsigned char*)malloc(mSurfaceWidth*mSurfaceHeight*4);

            float ratioAdjust = mSurfaceWidth/1280.0;
            ratio *= ratioAdjust;
            y *= ratioAdjust;
            x *= ratioAdjust;

            if (NULL!=pBMP)
            {
                memset(pBMP, 0x00, mSurfaceWidth*mSurfaceHeight*4);
                ResizeImage(ratio, In, pBMP, bwidth, bheight, ratio * bwidth, ratio * (bheight), mSurfaceWidth, (mSurfaceHeight-y), x, 0);
                ALOGI("XBMC ResizeImage   org:%dx%d, resize:%.2fx%.2f, fullpic:%dx%d, fromLT:%d,%d |ratioAdjust=%.2f",
                    bwidth, bheight, ratio * bwidth, ratio * (bheight), mSurfaceWidth, (mSurfaceHeight-y), x, 0, ratioAdjust);
                bmp_save("/mnt/picsub.bmp",pBMP,mSurfaceWidth,(mSurfaceHeight-y),32);
                free(pBMP);
                pBMP = NULL;
            }
        }

        free(In);
        In = NULL;
        InSize = 0;
    }
    else
    {
        //clear bmp
        if (true == mIsXBMC)
        {
            bmp_clear("/mnt/picsub.bmp");
        }
    }
    time_end = clock();
    LOGI("RenderGfx total spend   %8d us", time_end - time_start);
    return 0;
}

void SubtitleFontManager::ResizeImage(
                 float Ratio,
                 unsigned char *InImage, // Source image data
                 unsigned char *OutImage, // Destination image data
                 int SWidth, // Source image width
                 int SHeight, // Source image height
                 int DWidth, // Destination rectangle width
                 int DHeight, // Destination rectangle height
                 int dstWholeWidth, // Destination image width
                 int dstWholeHeight, // Destination image height
                 int FromLeftX,  // Destination image x
                 int FromTopY //Destination image y
                 )
{
    SkBitmap srcBitmap;
    srcBitmap.setConfig(SkBitmap::kARGB_8888_Config,SWidth,SHeight,SWidth*4);
    srcBitmap.setPixels((void*)InImage);
    SkIRect srcRect;
    srcRect.MakeXYWH(0,0,SWidth,SHeight);

    SkBitmap dstBitmap;
    dstBitmap.setConfig(SkBitmap::kARGB_8888_Config,dstWholeWidth,dstWholeHeight,dstWholeWidth*4);
    dstBitmap.setPixels((void*)OutImage);

    SkCanvas canvas(dstBitmap);
    SkRect dstRect;
    dstRect.set(FromLeftX,FromTopY,DWidth+FromLeftX,DHeight+FromTopY);

    SkPaint paint;
    paint.setFilterBitmap(true);
    canvas.drawBitmapRect(srcBitmap, NULL, dstRect, &paint);

    return ;
}


}//android?
