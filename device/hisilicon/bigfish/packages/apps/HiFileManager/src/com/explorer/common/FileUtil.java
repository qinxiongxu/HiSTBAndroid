package com.explorer.common;

import com.explorer.R;
import com.explorer.activity.SambaActivity;
import android.view.View.OnClickListener;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.SystemProperties;
import android.content.DialogInterface;
//import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.content.SharedPreferences;
import android.os.StatFs;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Display;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
//import android.webkit.MimeTypeMap;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/**
 * file tool
 * @author qian_wei,ni_guanhua //Common operations to deal with a number of
 */
public class FileUtil {
  private static final String TAG = "FileUtil";

  // associated with page
  private static CommonActivity mx;

  // Toast object
  private static FileMToast toast = null;

  // the type of filter
  private int filterCount;

  // current path
  public String currentFilePath;

  // catalog collection
  private List<File> fileDir = new ArrayList<File>();

  // file collection
  private List<File> file = new ArrayList<File>();

  // pictrun file collection
  private List<File> photoList = null;

  // audio file collection
  private List<File> musicList = null;

  // video file collection
  private List<File> videoList = null;

  // text index
  private int Num = 0;

  // temp length
  private int tempLength = 0;

  // new add edittext
  private EditText myEditText;

  private static boolean mIsSupportBD = false;

  /**
   * @param activity
   */
  public FileUtil(CommonActivity activity) {
    mx = activity;
  }

  /**
   * @param activity
   * @param filterCount
   *            // the type of filter
   * @param arrayDir
   * @param arrayFile
   * @param currentFileString
   *            // current file path
   */
  public FileUtil(CommonActivity activity, int filterCount,
      List<File> arrayDir, List<File> arrayFile, String currentFileString) {
    mx = activity;
    this.filterCount = filterCount;
    this.fileDir = arrayDir;
    this.file = arrayFile;
    this.currentFilePath = currentFileString;
  }

  /**
   * Constructor
   * @param activity
   * @param filterCount
   * @param currentFileString
   */
  public FileUtil(CommonActivity activity, int filterCount,
      String currentFileString) {
    mx = activity;
    fileDir.clear();
    file.clear();
    this.filterCount = filterCount;
    this.currentFilePath = currentFileString;
  }

  /**
   * Determine the file type based on the file suffix
   * @param f
   *            //file
   * @return //Custom file types
   */
  public static String getMIMEType(File f, CommonActivity mea) {
    mx = mea;
    String type = "";
    String fName = f.getName();

    mIsSupportBD = true;

    if (mIsSupportBD) {
      fName = f.getAbsolutePath();
      if (mx.getBDInfo().isBDFile(fName)) {
        type = "video/bd";
        return type;
      }
            else if (mx.getDVDInfo() != null && mx.getDVDInfo().isDVDFile(fName)) {
        type = "video/dvd";
        return type;
      }
    }

    // Get file extension
    String end = fName
        .substring(fName.lastIndexOf(".") + 1, fName.length())
        .toUpperCase();
    // read the audio condition
    // CNcomment: 读取音频条件
    SharedPreferences shareAudio = mea.getSharedPreferences("AUDIO",
        Context.MODE_WORLD_READABLE);
    String strAudio = shareAudio.getString(end, "");
    // read the video condition
    // CNcomment: 读取视频条件
    SharedPreferences shareVideo = mea.getSharedPreferences("VIDEO",
        Context.MODE_WORLD_READABLE);
    String strVideo = shareVideo.getString(end, "");
    // read picturn condition
    // CNcomment: 读取图片条件
    SharedPreferences shareImage = mea.getSharedPreferences("IMAGE",
        Context.MODE_WORLD_READABLE);
    String strImage = shareImage.getString(end, "");
    if (!strAudio.equals("")) {
      type = "audio/*";
    } else if (!strVideo.equals("")) {
      if (strVideo.equals("ISO")) {
        type = "video/iso";
      } else {
        type = "video/*";
      }
    } else if (!strImage.equals("")) {
      type = "image/*";
    } else if (end.toLowerCase().equals("apk")) {
      type = "apk/*";
    } else {
            type = getMim_type(end);
    }
    return type;
  }

  public static String getMIMEType(String fileName, CommonActivity mea) {
    mx = mea;
    String type = "";
    String fName = fileName;

    mIsSupportBD = true;

    if (mIsSupportBD) {
      if (mx.getBDInfo().isBDFile(fName)) {
        type = "video/bd";
        return type;
      }
    }

    // get file extension

    String end = fName
        .substring(fName.lastIndexOf(".") + 1, fName.length())
        .toUpperCase();
    // read audio condition
    SharedPreferences shareAudio = mea.getSharedPreferences("AUDIO",
        Context.MODE_WORLD_READABLE);
    String strAudio = shareAudio.getString(end, "");
    // read video condition
    SharedPreferences shareVideo = mea.getSharedPreferences("VIDEO",
        Context.MODE_WORLD_READABLE);
    String strVideo = shareVideo.getString(end, "");
    // read picturn condition
    SharedPreferences shareImage = mea.getSharedPreferences("IMAGE",
        Context.MODE_WORLD_READABLE);
    String strImage = shareImage.getString(end, "");
    if (!strAudio.equals("")) {
            type = "audio/*";
    } else if (!strVideo.equals("")) {
            type = "video/*";
    } else if (!strImage.equals("")) {
            type = "image/*";
    } else if (end.equals("apk")) {
            type = "apk/*";
    } else {
      // If you can not directly open, out of the list of software to the
      // user to select
      // CNcomment: 如果无法直接打开，就跳出软件列表给用户选择
            type = getMim_type(end);
    }
    return type;
  }

  /**
   * File Size Description
   * @param f
   *            //file
   * @return // File size / unit string
   */
  public static String fileSizeMsg(File f) {
    String show = "";

    // file length in bits
    // CNcomment: 文件长度以比特为单位
    long length = f.length();
    DecimalFormat format = new DecimalFormat("#0.0");
    if (length / 1024.0 / 1024 / 1024 >= 1) {
      show = format.format(length / 1024.0 / 1024 / 1024) + "GB";
    } else if (length / 1024.0 / 1024 >= 1) {
      show = format.format(length / 1024.0 / 1024) + "MB";
    } else if (length / 1024.0 >= 1) {
      show = format.format(length / 1024.0) + "KB";
    } else {
      show = length + "B";
    }
    return show;

  }

  /**
   * get fildor size
   * @param f
   *            // fildor object
   * @return // fildor size
   */
  public static long getDirSize(File f) {
    long size = 0;
    File[] files = f.listFiles();
    if (files != null) {
      for (File file : files) {
        if (file.isDirectory()) {
          size += getDirSize(file);
        } else {
          size += file.length();
        }
      }
    }
    return size;
  }

  /**
   * sort file
   * @param fileList
   *            // file list
   * @param sortMethod
   * @param MA
   * @return // after sort lost
   */
  public static List<File> sortFile(List<File> fileList,
      final String sortMethod, final CommonActivity MA) {

    Collections.sort(fileList, new Comparator<File>()
        {
        public int compare(File object1, File object2)
            {
                return compareFile(object1, object2, sortMethod, MA);
            }
        });

    return fileList;
  }

  /**
   * According to the string to obtain the corresponding date
   * @param str
   *            //data string
   * @return //data
   */
  public static long getDate(String str) {
    Date date = null;
    try {
      SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
      date = format.parse(str);
    } catch (ParseException e) {
      e.printStackTrace();
      date = new Date();
    }
    return date.getTime();
  }

  /**
   * A local file, mount the directory to sort the files to achieve CNcomment:
   * 本地文件，挂载目录文件排序实现
   * @param object1
   * @param object2
   * @param sortMethod
   * @param MA
   * @return
   */
  public static int compareFile(File object1, File object2,
      String sortMethod, CommonActivity MA) {
    mx = MA;
    if (sortMethod.equals(mx.getResources().getString(R.string.file_name))) {
      return compareByName(object1, object2);
    } else if (sortMethod.equals(mx.getResources().getString(
        R.string.file_size))) {
      int len = compareBySize(object1.length(), object2.length());
      // the same size ,sort by name
      if (len == 0) {
        return compareByName(object1, object2);
      } else {
        return compareBySize(object1.length(), object2.length());
      }
    } else if (sortMethod.equals(mx.getResources().getString(
        R.string.update_time))) {
      int len = compareByDate(object1.lastModified(),
          object2.lastModified());
      // the same data ,sort by name
      if (len == 0) {
        return compareByName(object1, object2);
      } else {
        return compareByDate(object1.lastModified(),
            object2.lastModified());
      }
    }
    return 0;
  }

  /**
   * FTP file sort
   * @param object1
   * @param object2
   * @param sortMethod
   * @param MA
   * @return
   */
  public static int compareFile(String object1, String object2,
      String sortMethod, CommonActivity MA) {
    mx = MA;
    if (sortMethod.equals(mx.getResources().getString(R.string.file_name))) {
      return compareByName(object1, object2);
    } else if (sortMethod.equals(mx.getResources().getString(
        R.string.file_size))) {
      long fLong = Long.parseLong(object1.split("\\|")[3]);
      long sLong = Long.parseLong(object2.split("\\|")[3]);
      int len = compareBySize(fLong, sLong);
      if (len == 0) {
        return compareByName(object1, object2);
      } else {
        return compareBySize(fLong, sLong);
      }
    } else if (sortMethod.equals(mx.getResources().getString(
        R.string.update_time))) {
      long fLong = getDate(object1.split("\\|")[2]);
      long sLong = getDate(object2.split("\\|")[2]);
      int len = compareByDate(fLong, sLong);
      if (len == 0) {
        return compareByName(object1, object2);
      } else {
        return compareByDate(fLong, sLong);
      }
    }
    return 0;
  }

  /**
   * sort according to file name
   * @param object1
   * @param object2
   * @return
   */
  private static int compareByName(String object1, String object2) {
    if (object1.startsWith("d") && object2.startsWith("d"))
      return object1.split("\\|")[1].toLowerCase().compareTo(
          object2.split("\\|")[1].toLowerCase());
    if (object1.startsWith("f") && object2.startsWith("f"))
      return object1.split("\\|")[1].toLowerCase().compareTo(
          object2.split("\\|")[1].toLowerCase());
    else
      return 0;
  }

  /**
   * sort according to file name
   * @param object1
   * @param object2
   * @return
   */
  private static int compareByName(File object1, File object2) {
    String objectName1 = object1.getName().toLowerCase();
    String objectName2 = object2.getName().toLowerCase();
    int result = objectName1.compareTo(objectName2);
    if (result == 0) {
      return 0;
    } else if (result < 0) {
      return -1;
    } else {
      return 1;
    }
  }

  /**
   * sort according to file size
   * @param object1
   * @param object2
   * @return
   */
  private static int compareBySize(long object1, long object2) {
    long diff = object1 - object2;
    if (diff > 0)
      return 1;
    else if (diff == 0)
      return 0;
    else
      return -1;
  }

  /**
   * file sorted by date modified
   * @param object1
   * @param object2
   * @return
   */
  public static int compareByDate(long object1, long object2) {
    long diff = object1 - object2;
    if (diff > 0)
      return 1;
    else if (diff == 0)
      return 0;
    else
      return -1;
  }

  /**
   * The adequacy of the file size to determine the space of the memory card
   * CNcomment: 根据文件大小确定存储卡空间是否足够
   * @param size
   * @return
   */
  public static boolean getSdcardSpace(long size, String path) {
    Log.w("MOUNTPAHT", " = " + path);
    StatFs fs = new StatFs(path);
    long blockSize = fs.getBlockSize();
    long avaiBlock = fs.getAvailableBlocks();
    Log.w("TAG", " BLOCK = " + avaiBlock * blockSize);
    if (size > avaiBlock * blockSize) {
      return true;
    } else {
      return false;
    }
  }

  /**
   * custom Toast
   * @param mContext
   * @param res
   *            corresponding strings resources file CNcomment: 对应的Strings资源文件
   */
  public static void showToast(Context mContext, String res) {
    toast = FileMToast.getInstance(mContext, res);
  }

  // for click three buttons show toast
  /**
   * click display ,sort,filter button to display the prompt
   * CNcomment:点击显示、排序、过滤按钮显示提示
   * @param mContext
   * @param res
   */
  public static void showClickToast(Context mContext, String res) {
    ShowButToast.getInstance(mContext, res);
  }

  // end add by qian_wei/xiong_cuifan 2011/11/08

  public static FileMToast getToast() {
    return toast;
  }

  /**
   * set the pop-up dialog height,width CNcomment:设置弹出对话框高度，宽度
   * @param dlg
   * @return
   */
  public static AlertDialog setDialogParams(AlertDialog dlg, Activity activity) {
    Display display = activity.getWindowManager().getDefaultDisplay();
    int displayHeight = display.getHeight();
    int displayWidth = display.getWidth();

    LayoutParams lp = dlg.getWindow().getAttributes();
    lp.height = displayHeight * 3 / 4;
    lp.width = displayWidth * 4 / 5;

    dlg.getWindow().setAttributes(lp);

    return dlg;
  }

  /**
   * get need to sort file list CNcomment:获得需要排序文件列表
   */
  private void getFiltList(String local) {
    // File[] sortFile = new File[] {};
    // file list
    if (filterCount == 0) {
      if (fileDir.size() > 0 || file.size() > 0) {
        return;
      } else {
        // sortFile = new File(currentFilePath).listFiles();
        mx.clearList(fileDir, file);
        // get local file
        if ("local".equals(local)) {

          File[] flss = new File(currentFilePath).listFiles();
          Log.i(TAG, "currentFilePath =" + currentFilePath);
          if (flss == null)
            return;
          Log.i(TAG, "SRT.LENGTH=" + flss.length);
          for (int i = 0; i < flss.length; i++) {
            // for broken into the directory contains many
            // files,click again error

            if (mx.thread.getStopRun()) {
              return;
            }
            if (flss[i].isDirectory()) {
              fileDir.add(flss[i]);
            } else {
              file.add(flss[i]);
            }
          }
        } else {
          Log.v("\33[32m UTIL", "currentFilePath" + currentFilePath
              + "\33[0m");
          long start = System.currentTimeMillis();
          File[] files = new File[] {};
          files = new File(currentFilePath).listFiles();
          long end = System.currentTimeMillis();
          Log.v("\33[32m UTIL", "files" + (end - start) + "\33[0m");

          if (files == null)
            return;

          for (int i = 0; i < files.length; i++) {
            if (mx.thread.getStopRun()) {
              return;
            }
            File f = files[i];
            // String name = f.getName();
            if (f.isFile()) {
              file.add(f);
            } else {
              fileDir.add(f);
            }
          }
        }
      }
    }
    // picturn list
    else if (filterCount == 1) {
      photoList = new ArrayList<File>();
      getPhoto(currentFilePath, local);
    }
    // audio list
    else if (filterCount == 2) {
      musicList = new ArrayList<File>();
      getMusic(currentFilePath, local);
    }
    // video list
    else if (filterCount == 3) {
      videoList = new ArrayList<File>();
      getVideo(currentFilePath, local);
    }
  }

  /**
   * get video collection directory CNcomment:获取目录下的视频集合
   * @param fileRoot
   * @return
   */
  private void getVideo(String fileRoot, String local) {
    // determine the search results is empty
    // CNcomment: 判断搜索结果是否为空
    if (fileDir.size() > 0 || file.size() > 0) {
      return;
    } else {
      // files = new File(fileRoot).listFiles();
      mx.clearList(fileDir, file);
      {
        File[] files = new File[] {};
        files = new File(fileRoot).listFiles();
        if (files == null)
          return;
        for (int i = 0; i < files.length; i++) {
          if (mx.thread.getStopRun()) {
            return;
          }
          File f = files[i];
          // String name = f.getName();
          if (f.isFile()) {
            videoList.add(f);
          } else {
            fileDir.add(f);
          }
        }
      }
    }
    if (videoList.size() > 0) {
      for (File f : videoList) {
        String type = FileUtil.getMIMEType(f, mx);
        if (type.contains("video")) {
          file.add(f);
        }
      }
    }

  }

  /**
   * get audio collection directory
   * @param fileRoot
   * @return
   */
  private void getMusic(String fileRoot, String local) {

    // determine the search results is empty
    // CNcomment:判断搜索结果是否为空
    if (fileDir.size() > 0 || file.size() > 0) {
      return;
    } else {
      // files = new File(fileRoot).listFiles();
      mx.clearList(fileDir, file);
      {
        File[] files = new File[] {};
        files = new File(fileRoot).listFiles();
        if (files == null)
          return;
        for (int i = 0; i < files.length; i++) {
          if (mx.thread.getStopRun()) {
            return;
          }
          File f = files[i];
          // String name = f.getName();
          if (f.isFile()) {
            musicList.add(f);
          } else {
            fileDir.add(f);
          }
        }
      }
    }
    if (musicList != null) {
      for (File f : musicList) {
        String type = FileUtil.getMIMEType(f, mx);
        if (type.contains("audio")) {
          file.add(f);
        }
      }
    }
  }

  /**
   * get picturn collection directory
   * @param fileRoot
   * @return
   */
  private void getPhoto(String fileRoot, String local) {
    // determine the search results is empty
    // CNcomment:判断搜索结果是否为空
    if (fileDir.size() > 0 || file.size() > 0) {
      return;
    } else {
      // files = new File(fileRoot).listFiles();
      mx.clearList(fileDir, file);
      {
        File[] files = new File[] {};
        files = new File(fileRoot).listFiles();
        if (files == null)
          return;
        for (int i = 0; i < files.length; i++) {
          if (mx.thread.getStopRun()) {
            return;
          }
          File f = files[i];
          // String name = f.getName();
          if (f.isFile()) {
            photoList.add(f);
          } else {
            fileDir.add(f);
          }
        }
      }
    }
    if (photoList != null) {
      for (File f : photoList) {
        String type = FileUtil.getMIMEType(f, mx);
        if (type.contains("image")) {
          file.add(f);
        }
      }
    }

  };

  /**
   * get file information
   * @param f
   * @return
   */
  public FileInfo getFileInfo(File f) {
    FileInfo fileInfo = new FileInfo();
    fileInfo.setFileName(f.getName());
    if (f.isFile()) {
      Log.w("FILE", "FILE");
      fileInfo.setFileSize(fileSizeMsg(f));
      String end = f
          .getName()
          .substring(f.getName().lastIndexOf(".") + 1,
              f.getName().length()).toLowerCase();
      fileInfo.setFiltType(end);
    } else {
      Log.w("FOLDER", "FOLDER");
      fileInfo.setFileSize("");
      fileInfo.setFiltType(mx.getString(R.string.dir));
    }
    SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
    String modify = simple.format(new Date(f.lastModified()));
    fileInfo.setLastModifyTime(modify);
    return fileInfo;
  }

  /**
   * display file information
   * @param f
   */
  public void showFileInfo(File f) {
    LayoutInflater inflater = LayoutInflater.from(mx);
    View view = inflater.inflate(R.layout.file_info, null);
    TextView fileName = (TextView) view.findViewById(R.id.file_name);
    TextView fileType = (TextView) view.findViewById(R.id.file_type);
    TextView fileSize = (TextView) view.findViewById(R.id.file_size);
    TextView fileModifyTime = (TextView) view
        .findViewById(R.id.file_modify);
//    new AlertDialog.Builder(mx).setTitle(R.string.file_info).setView(view)
//        .setPositiveButton(R.string.close, new OnClickListener() {
//          public void onClick(DialogInterface dialog, int which) {
//          }
//        }).show();
    new AlertDialog.Builder(mx).setTitle(R.string.file_info).setView(view)
    .show();
    FileInfo info = getFileInfo(f);
    // populated with data
    fileName.setText(info.getFileName());
    fileType.setText(info.getFiltType());
    fileSize.setText(info.getFileSize());
    fileModifyTime.setText(info.getLastModifyTime());
  }

  /**
   * get file list
   * @param sortCount
   * @param local
   * @return
   */
  public List<File> getFiles(int sortCount, String local) {
    List<File> listFile = new ArrayList<File>();
    synchronized (mx.lock) {
      getFiltList(local);
      // for broken into the directory contains many files,click again
      // error
      if (mx.thread.getStopRun()) {
        return new ArrayList<File>();
      }
      List<File> le = FileUtil.sortFile(file, mx.getResources()
          .getStringArray(R.array.sort_method)[sortCount], mx);
      if (mx.thread.getStopRun()) {
        return new ArrayList<File>();
      }
      String sortSize = mx.getResources().getString(R.string.file_size);
      String sort = mx.getResources().getStringArray(R.array.sort_method)[sortCount];
      List<File> dir = null;
      // folder compare size ,sorted by file name
      // CNcomment:文件夹比较大小时，按文件名排序
      if (sort.equals(sortSize)) {
        dir = FileUtil.sortFile(fileDir,
            mx.getResources().getString(R.string.file_name), mx);
      } else {
        dir = FileUtil.sortFile(fileDir, mx.getResources()
            .getStringArray(R.array.sort_method)[sortCount], mx);
      }
      if (mx.thread.getStopRun()) {
        return new ArrayList<File>();
      }

      // to ensure that the folder is displayed in the file before
      // CNcomment: 保证文件夹显示在文件之前
      for (int i = 0; i < dir.size(); i++) {
        listFile.add(dir.get(i));
      }

      for (int i = 0; i < le.size(); i++) {
           if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom")){
               File item = le.get(i);
                    if (item != null) {
                        String itemName = item.getName();
                        if (itemName != null) {
                        String itemExtension = itemName.substring(
                        itemName.lastIndexOf(".") + 1, itemName.length());
                        if (itemExtension != null && itemExtension.toLowerCase().equals("apk")){
                                continue;
                        }
                      }
                 }
          }
        listFile.add(le.get(i));
      }
      Log.v("\33[32m SMB", " listFile.size(6) " + listFile.size()
          + "\33[0m");
      mx.clearList(fileDir, file);
      if (mx.thread.getStopRun()) {
        return new ArrayList<File>();
      }
    }
    return listFile;
  }

  /**
   * new cread fold
   * @param currentPath
   */
  public void createNewDir(final String currentPath) {
    final AlertDialog nameDialog = new AlertDialog.Builder(mx).create();
    LayoutInflater factory = LayoutInflater.from(mx);
    View myView = factory.inflate(R.layout.new_alert, null);
    myEditText = (EditText) myView.findViewById(R.id.new_edit);
    myEditText.addTextChangedListener(watcher);
    Button newDirbutOK =(Button)myView.findViewById(R.id.button1);
    Button newDirbutCancle =(Button)myView.findViewById(R.id.button2);
    nameDialog.setView(myView);

    newDirbutOK.setOnClickListener(new OnClickListener() {

      @Override
      public void onClick(View arg0) {
        // TODO Auto-generated method stub
        final String newName = myEditText.getText().toString()
            .trim();
        if (newName.equals("")) {
          FileUtil.showToast(mx,
              mx.getString(R.string.name_empty));
        } else {
          String newPath = currentPath + "/" + newName;
          File f_new = new File(newPath);
          // folder already exists
          // CNcomment:文件夹已存在
          if (f_new.exists()) {
            FileUtil.showToast(
                mx,
                mx.getString(R.string.has_exist,
                    mx.getString(R.string.dir)));
            return;
          } else {
            doCreateNewFile(newName, f_new);
          }
        }
        nameDialog.dismiss();
      }
    });
    newDirbutCancle.setOnClickListener(new OnClickListener() {

      @Override
      public void onClick(View arg0) {
        // TODO Auto-generated method stub
        nameDialog.dismiss();
      }
    });

    nameDialog.show();
  }

  /**
   * execution to create a new folder action CNcomment:执行创建新文件夹操作
   * @param newName
   * @param f_new
   */
  private void doCreateNewFile(final String newName, final File f_new) {

    final AlertDialog noticeDialog = new AlertDialog.Builder(mx).create();
    LayoutInflater factory = LayoutInflater.from(mx);
    View noticeView = factory.inflate(R.layout.new_file_notice, null);
//    myEditText = (EditText) noticeView.findViewById(R.id.new_edit);
    TextView noticetTextView=(TextView)noticeView.findViewById(R.id.new_file_notice);
    TextView noticeTitle=(TextView)noticeView.findViewById(R.id.notice);
    Button noticeButOk=(Button)noticeView.findViewById(R.id.but_ok);
    Button noticeButCancle=(Button)noticeView.findViewById(R.id.but_cancle);
    myEditText.addTextChangedListener(watcher);
    noticeDialog.setView(noticeView);
//    noticetTextView.setText(R.string.notice);
        String messageString=mx.getString(R.string.ok_add,
        mx.getString(R.string.dir), newName);
    noticetTextView.setText(messageString);
    noticetTextView.setGravity(Gravity.CENTER);
    noticeDialog.show();
    noticeButOk.setText(R.string.ok);
    noticeButCancle.setText(R.string.cancel);
    noticeButOk.setOnClickListener(new OnClickListener() {

      @Override
      public void onClick(View v) {
        // TODO Auto-generated method stub
        try {
          if (f_new.mkdirs()) {
            try {
              // the file path contains spaces
              // ,use this method without escape
              // CNcomment:文件路径含有空格时，使用此方法无需转义
              String[] cmdArray = { "chmod",
                  "777", f_new.getPath() };
              Runtime runtime = Runtime
                  .getRuntime();
              Process process = runtime
                  .exec(cmdArray);
              Log.w("processResult", " = "
                  + process.waitFor());
            } catch (IOException e) {
              e.printStackTrace();
            }
            FileUtil.showToast(mx,
                mx.getString(R.string.builded));
            mx.updateList(true);
          } else {
            FileUtil.showToast(mx, mx.getString(
                R.string.error,
                mx.getString(R.string.dir),
                newName));
          }
        } catch (Exception e) {
          e.printStackTrace();
        }
        noticeDialog.dismiss();
      }
    });
    noticeButCancle.setOnClickListener(new OnClickListener() {

      @Override
      public void onClick(View v) {
        // TODO Auto-generated method stub
        noticeDialog.dismiss();
      }
    });

  }

  /**
   * input char filter
   */
  TextWatcher watcher = new TextWatcher() {
    public void onTextChanged(CharSequence s, int start, int before,
        int count) {

    }

    /**
     * before the text to change
     */
    public void beforeTextChanged(CharSequence s, int start, int count,
        int after) {
      tempLength = s.length();
      Num = start;
    }

    public void afterTextChanged(Editable s) {
      if (s.length() > tempLength) {
        try {
          int len = s.toString().getBytes("GBK").length;
          // special characters to the input
          // CNcomment: 特殊字符不给于输入
          if (s.charAt(Num) == '/' || s.charAt(Num) == '\\'
              || s.charAt(Num) == ':' || s.charAt(Num) == '*'
              || s.charAt(Num) == '?' || s.charAt(Num) == '\"'
              || s.charAt(Num) == '<' || s.charAt(Num) == '>'
              || s.charAt(Num) == '|') {
            s.delete(Num, Num + 1);
            FileUtil.showToast(mx,
                mx.getString(R.string.name_falid));
          }
          // the file name length is not greater than 128 bytes
          // CNcomment:文件名长度不大于128个字节
          else if (len > 128) {
            s.delete(Num, Num + 1);
            FileUtil.showToast(mx, mx.getString(R.string.name_long));
          }
        } catch (Exception e) {
          e.printStackTrace();
        }
      }
    }
  };
    private static String getMim_type(String type){
        MimeTypeMap mimeTypeMap = MimeTypeMap.getSingleton();
        String extension = mimeTypeMap.getMimeTypeFromExtension(type.toLowerCase());
        if(null == extension || "".equals(extension))
            return "*/*";
        return extension;
    }
    public static String getExtension(final File file) {
        String suffix = "";
        String name = file.getName();
        final int idx = name.lastIndexOf(".");
        if (idx > 0) {
            suffix = name.substring(idx + 1);
        }
        return suffix;
    }
}
