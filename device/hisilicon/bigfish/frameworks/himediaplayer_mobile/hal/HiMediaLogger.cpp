/*
 * HiMediaLogger.cpp
 *
 *  Created on: 2014Äê5ÔÂ28ÈÕ
 *      Author: z00187490
 */

#include "HiMediaLogger.h"
#include <utils/Log.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <dirent.h>
#include <errno.h>

#define LOG_TAG "HIMEDIALOG"
//#define LOG_NDEBUG 0
#define CALENDAR_FMT "%Y%m%d%H%M%S"


namespace android {

class WriteLogMsg : public MessageHandler
{
public:
    WriteLogMsg(HiMediaLogger* logger, const char* str) :
        mLogger(logger),
        mStr(strdup(str))
    {
//        ALOGD("WriteLogMsg created");
    }
    ~WriteLogMsg()
    {
        if (mStr)
            free((void*)mStr);
        mStr = NULL;
//        ALOGD("WriteLogMsg deleted");
    }

private:
    virtual void handleMessage(const Message& message) {
         mLogger->handleWriteLog(mStr);
    }
    HiMediaLogger* mLogger;
    const char* mStr;
};

HiMediaLogger::HiMediaLogger()
{
        HiMediaLogger("/tmp/playLog", 3600/*1h*/, 900/*15m*/);
}

HiMediaLogger::HiMediaLogger(const char* logPath, int clearFilePeriodInS,
        int switchFilePeriodInS) :
        mFile(NULL),
 //       mLogCnt(0),
        mLogPath(logPath),
        mClearFilePeriod(clearFilePeriodInS),
        mSwitchFilePeriod(switchFilePeriodInS),
        mExitRequested(0)
{
    mLooper = new Looper(true);
    mHandler = new Handler(*this);

    ALOGD("logger init done");
}

HiMediaLogger::~HiMediaLogger() {

    if (mFile) {
        fclose(mFile);
        mFile = NULL;
    }
    ALOGD("logger deinit done");
}

char* HiMediaLogger::updateAsendListN(char **newestN, int size, int *empty, char *cur, int *needFree)
{
    int insert = -1, i;
    char *eliminated = NULL;

    *needFree = 0;
    for(i = 0; i < size; i++)
    {
        if (newestN[i] != NULL && strcmp(cur,newestN[i]) > 0)
        {
            insert = i;
        }
        else if (newestN[i] != NULL && strcmp(cur,newestN[i]) <= 0)
        {
            if (insert >= 0)
            {
                if (*empty > 0)
                {
                    insert ++;
                }
                ALOGD("insert %s at pos %d", cur, insert);
                break;
            }

            if (*empty > 0)
            {
                insert = i;
                ALOGD("list not full, insert %s at pos %d", cur, insert);
                break;
            }
            else
            {
                ALOGD("list full, do not insert %s!", cur);
                *needFree = 0;
                return cur;
            }
        }
        else// if (newestN[i] == NULL)
        {
            newestN[i] = strdup(cur);
            *empty = *empty - 1;
            ALOGD("insert %s at empty pos %d", cur, i);
            return NULL;
        }
    }

    if (insert < 0)
        return NULL;

    if (*empty == 0)
    {
        eliminated = newestN[0];
        *needFree = 1;
        for (i = 0; i < size; i++)
        {
            if (i > insert)
                break;
            if (i == insert)
            {
                newestN[i] = strdup(cur);
            }
            else
            {
                newestN[i] = newestN[i+1];
            }
        }
    }
    else
    {
        for (i = size - 1; i >= 0; i--)
        {
            if (i < insert)
                break;
            if (i == insert)
                newestN[i] = strdup(cur);
            else
                newestN[i] = newestN[i - 1];
        }
        *empty = *empty - 1;
    }

    return eliminated;
}

long long HiMediaLogger::secondsToCalendar(int seconds)
{
    time_t rawtime = 0;
    struct tm timeinfo = {0};
    char buf[64] = {0};
    long long calendar1970, calendarSeconds;

    rawtime = 0;
    localtime_r(&rawtime, &timeinfo);
    strftime(buf, sizeof(buf), CALENDAR_FMT, &timeinfo);
    calendar1970 = atoll(buf);

    rawtime = seconds;
    localtime_r(&rawtime, &timeinfo);
    strftime(buf, sizeof(buf), CALENDAR_FMT, &timeinfo);
    calendarSeconds = atoll(buf);

    return (calendarSeconds - calendar1970);
}

long long HiMediaLogger::calendarToSeconds( long long  calendar)
{
    long long seconds;
    int yy, MM, dd, hh, mm, ss;

   // 20140606065012
    ss   = calendar % 100;
    mm = (calendar/100)%100;
    hh   =  (calendar/10000)%100;
    dd   =  (calendar/1000000)%100;
    MM =   (calendar/100000000)%100;
    yy  =   (calendar/10000000000);
    if (yy > 0 || MM > 0)
    {
        ALOGD("not supported year and month > 0, calendar:%lld", calendar);
        return 0;
    }

    seconds = dd*24*3600 + hh*3600 + mm*60 + ss;
    ALOGD("calendar:%lld->%lld(year:%04d, mon:%02d, day:%02d, hour;%02d, min:%02d, sec:%02d",
        calendar, seconds, yy, MM, dd, hh, mm, ss);

    return seconds;
}



void HiMediaLogger::onFirstRef() {
    struct stat st = {0};
    struct dirent *next_file;
    DIR *theFolder;
    char filepath[1024];
    char *eliminated;
    time_t rawtime;
    struct tm timeinfo = {0};
    char buffer [64] = {0};
    char **newestN = NULL;
    long long curtime, filetime;
    int size, empty, i, needFree = 0;
    int elapsedSecs;
    nsecs_t switchDelayns = 0;
    nsecs_t  clearDelayns = s2ns(mClearFilePeriod);

    if (mSwitchFilePeriod <= 0 || mClearFilePeriod <= 0)
        return;
    size = mClearFilePeriod/mSwitchFilePeriod;

    if (stat(mLogPath.string(), &st) == -1) {
        if (mkdir(mLogPath.string(), 0777))
        {
            ALOGE("mkdir %s failed", mLogPath.string());
        }
    } else {
     //dir exist
       empty = size;
       newestN = (char **)malloc(sizeof(char *) * size);
       if (newestN == NULL)
          return;
       for (i = 0; i < size; i++)
       {
           newestN[i] = NULL;
       }

       theFolder = opendir(mLogPath.string());
       if (!theFolder)
       {
           ALOGE("open dir errno=%d, path is %s", errno, mLogPath.string());
       }
       while(theFolder && (next_file = readdir(theFolder)))
       {
            if (!strncmp(next_file->d_name, ".", 1) ||
                    !strncmp(next_file->d_name, "..", 2))
            {
                continue;
            }
            eliminated = updateAsendListN(newestN, size, &empty, next_file->d_name, &needFree);
            ALOGD("#############");
            for (i = 0; i < size; i++)
            {
                if (newestN[i])
                    ALOGD("%s", newestN[i]);
                else
                    ALOGD("NULL");
            }
            ALOGD("#############\n");

            if (eliminated != NULL)
            {
                ALOGD("remove eliminated file %s.", eliminated);
                sprintf(filepath, "%s/%s", mLogPath.string(), eliminated);
                remove(filepath);
                if (needFree)
                {
                    free(eliminated);
                    eliminated = NULL;
                }
            }
        }

        if (theFolder)
        {
            closedir(theFolder);
            theFolder = NULL;
        }
        ALOGD("%d newest files scanned.", (size - empty));

        //now the N newest file left, remove the files which are created
        //before 1 hour except the last one.
        if (size - empty > 0)
        {
            time(&rawtime);
            localtime_r(&rawtime, &timeinfo);
            strftime(buffer,sizeof(buffer),CALENDAR_FMT,&timeinfo);
            ALOGD("curtime:%s", buffer);
            curtime = atoll(buffer);
        }
        for (i = 0; i < (size - empty); i ++)
        {
            filetime = atoll(newestN[i]);
            snprintf(filepath, sizeof(filepath),  "%s/%s", mLogPath.string(), newestN[i]);
            if (curtime - filetime > secondsToCalendar(mClearFilePeriod) && (i != (size - empty - 1)))
            {
                ALOGD("remove outdated file %s.", newestN[i]);
                remove(filepath);
                //free(newestN[i]);
                newestN[i] = NULL;
            }
            else
            {
                //add to vector.
                mFileVdec.add(String8(filepath));
                ALOGD("add %s to vector, size %d", filepath, mFileVdec.size());
                //check the newest file if in the switch period
                if (i == (size - empty - 1))
                {
                    if (curtime - filetime < secondsToCalendar(mSwitchFilePeriod) && curtime >= filetime)
                    {
                        //open current log file , seek to end, prepare to append.
                        ALOGD("open the last file and seek to end:%s", newestN[i]);
                        mFile = fopen(filepath, "a");
                        if (!mFile)
                        {
                            ALOGE("open last file %s failed", newestN[i]);
                        }
                        else
                        {
                            elapsedSecs = calendarToSeconds(curtime - filetime);
                            if (elapsedSecs > mSwitchFilePeriod)
                            {
                                elapsedSecs = mSwitchFilePeriod;
                            }
                            switchDelayns = s2ns((mSwitchFilePeriod - elapsedSecs));
                            Message msg((int)MSG_SWICH_FILE);
                            postMessage(mHandler, msg, switchDelayns);
                            ALOGD("start switch file after %lld ns", switchDelayns);
                        }
                    }
                }
            }
            free(newestN[i]);
        }
        free(newestN);
        newestN = NULL;
    }

    if (mFileVdec.size() >= size)
    {
        clearDelayns = 0;
    }
    else
    {
        clearDelayns = s2ns(mClearFilePeriod * (size - mFileVdec.size())/size);
    }

    Message msg((int)MSG_CLEAR_FILE);
    postMessage(mHandler, msg, clearDelayns);
    ALOGD("start clear file after %lld ns", clearDelayns);

    run("HiMediaLogger", PRIORITY_BACKGROUND);
}

void HiMediaLogger::exit() {
    const Message msg((int)MSG_EXIT);
    postMessage(mHandler, msg, 0);
    ALOGD("exit message sent");
}

void HiMediaLogger :: Handler::handleMessage(const Message& message)
{
    switch (message.what) {
        case MSG_WRITE_LOG:
            break;
        case MSG_SWICH_FILE:
            mLogger.handleSwitchFile();
            break;
        case MSG_CLEAR_FILE:
            mLogger.handleClearFile();
            break;
        case MSG_EXIT:
            mLogger.mExitRequested = true;
            break;
        default:
            break;
    }
}

status_t HiMediaLogger::writeLog(const char* str)
{
    if (!str)
        return UNKNOWN_ERROR;
    sp<MessageHandler> msg = new WriteLogMsg(this, str);
    const Message dummyMessage;
    return postMessage(msg, dummyMessage, 0);
}

status_t HiMediaLogger::postMessage(const sp<MessageHandler>& handler,
        const Message& msg, nsecs_t relTime)
{
    if (relTime > 0) {
        mLooper->sendMessageDelayed(relTime, handler, msg);
    } else {
        mLooper->sendMessage(handler, msg);
    }
    return OK;
}

status_t HiMediaLogger::handleWriteLog(const char* str)
{
    int len;
    time_t rawtime;
    struct tm timeinfo = {0};
    char buffer [64] = {0};
    char full_path[1024] = {0};

    if (!mFile)
    {
        time (&rawtime);
        localtime_r(&rawtime, &timeinfo);
        ALOGD("tm_hour:%d, tm_min:%d, tim_sec:%d",  timeinfo.tm_hour, timeinfo.tm_min, timeinfo.tm_sec);
        strftime (buffer,sizeof(buffer),CALENDAR_FMT,&timeinfo);
        snprintf(full_path, sizeof(full_path) - 1, "%s/%s.txt", mLogPath.string(), buffer);
        ALOGD("open log_file %s", buffer);

        mFile = fopen(full_path, "wb+");
        if (!mFile) {
            ALOGE("open log file %s failed", buffer);
            return UNKNOWN_ERROR;
        }
        mFileVdec.add(String8(full_path));
        const Message msg((int)MSG_SWICH_FILE);
        postMessage(mHandler, msg, s2ns(mSwitchFilePeriod));
    }

    len = fwrite(str, strlen(str), 1, mFile);
    fputs("\r\n\r\n", mFile);
    ALOGD("handle write log:%s", str);
    if (len != 1)
        ALOGE("write log error, write %d bytes, ret %d, errno:%d", strlen(str), len, errno);
    else
        fflush(mFile);


    return OK;
}

status_t HiMediaLogger::handleSwitchFile()
{
    if (mFile)
    {
        if (fclose(mFile)) {
            ALOGE("Close log file failed");
            return UNKNOWN_ERROR;
        }
        mFile = NULL;
    }

    ALOGD("handle close file OK");
    return OK;
}

status_t HiMediaLogger::handleClearFile()
{
    ALOGD("handle clear file");
    while (mFileVdec.size() > 1)
    {
        const char* f = mFileVdec[0].string();
        if (remove(f)) {
            ALOGE("remove file %s failed, error:%s", f, strerror(errno));
        }
        mFileVdec.removeAt(0);
    }
    ALOGD("handle clear file, next clear after %lld ns", s2ns(mClearFilePeriod));

    const Message msg((int)MSG_CLEAR_FILE);
    return postMessage(mHandler, msg, s2ns(mClearFilePeriod));
}

void HiMediaLogger::waitMessage() {
    while (!mExitRequested) {
        int32_t ret = mLooper->pollOnce(-1);
        switch (ret) {
            case ALOOPER_POLL_WAKE:
                ALOGE("ALOOPER_POLL_WAKE");
            case ALOOPER_POLL_CALLBACK:
//                ALOGD("ALOOPER_POLL_CALLBACK");
                continue;
            case ALOOPER_POLL_ERROR:
                ALOGE("ALOOPER_POLL_ERROR");
                break;
            case ALOOPER_POLL_TIMEOUT:
                ALOGE("ALOOPER_POLL_TIMEOUT");
                break;
            default:
                ALOGE("Looper::pollOnce() returned unknown status %d", ret);
                break;
        }
    }
}

bool HiMediaLogger::threadLoop() {
    ALOGD("thread loop enter");
    waitMessage();
    ALOGD("thread loop leave");
    return OK;
}
}
