package com.explorer.activity;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.DialogInterface.OnCancelListener;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.ExpandableListView;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ExpandableListView.OnChildClickListener;

import com.explorer.R;
import com.explorer.activity.SambaActivity.SambaServerAdapter;
import com.explorer.common.CommonActivity;
import com.explorer.common.ControlListAdapter;
import com.explorer.common.ExpandAdapter;
import com.explorer.common.FileAdapter;
import com.explorer.common.FileUtil;
import com.explorer.common.FilterType;
import com.explorer.common.GroupInfo;
import com.explorer.common.MountInfo;
import com.explorer.common.NewCreateDialog;
import com.explorer.common.TabMenu;

import android.net.Uri;
import android.os.SystemProperties;
import android.os.storage.IMountService;
import android.os.ServiceManager;
import android.os.IBinder;

import com.hisilicon.android.sdkinvoke.HiSdkinvoke;

/**
 * The local file browsing CNcomment:本地文件浏览
 */
public class MainExplorerActivity extends CommonActivity {

  private static final String TAG = "MainExplorerActivity";

  private String parentPath = "";

  // Operation File list
  // CNcomment:操作文件列表
  private List<File> fileArray = null;

  private String directorys = "/sdcard";

  // The list of files click position
  // CNcomment:文件列表的点击位置
  private int myPosition = 0;

  int Num = 0;

  int tempLength = 0;

  // file list selected
  // CNcomment:选中的文件列表
  List<String> selectList = null;

  // operation list
  // CNcomment:操作列表
  ListView list;

  // mount list
  // CNcomment:挂载列表
  List<Map<String, Object>> sdlist;

  int clickCount = 0;

  AlertDialog dialog;

  // store the Click position set
  // CNcomment:存放点击位置集合
  List<Integer> intList;

  // Need to sort the file list
  // CNcomment:需要排序的文件列表
  File[] sortFile;

  final static String MOUNT_LABLE = "mountLable";

  final static String MOUNT_TYPE = "mountType";

  final static String MOUNT_PATH = "mountPath";

  final static String MOUNT_NAME = "mountName";

  final static String MUSIC_PATH = "music_path";

  int menu_item = 0;

  ExpandableListView expandableListView;

  // Device type node-set
  // CNcomment:设备类型节点集合
  List<GroupInfo> groupList;

  // sub notes set of equipment
  // CNcomment:设备子节点集合
  List<Map<String, String>> childList;

  // Device List Category Location
  // CNcomment:设备列表类别位置
  int groupPosition = -1;

  // Index Display
  // CNcomment:索引显示
  TextView numInfo;;

  // Intent transfer from VP
  // CNcomment:Intent从VP传输
  boolean subFlag = false;

  boolean hasCDROM = false;

  /* display prompt */
  /* CNcomment:显示方式提示 */
  private String[] showMethod;

  /* type of filtering tips */
  /* CNcomment:过滤类型提示 */
  private String[] filterMethod;

  /* sort tips */
  /* CNcomment:排序方式提示 */
  private String[] sortMethod;

  FileUtil util;

  private String isoParentPath = new String();

  /* 弹出menu */
  TabMenu.MenuBodyAdapter[] bodyAdapter = new TabMenu.MenuBodyAdapter[3];
  TabMenu.MenuTitleAdapter titleAdapter;
  TabMenu tabMenu;
  int selTitle = 0;
  Drawable griDrawable;

  /* 设置Menu子项的状态 */
  private boolean menuItem1 = true;
  private boolean menuItem2 = true;
  private boolean menuItem3 = true;
  private boolean menuItem4 = true;
  private boolean menuItem5 = true;
  private boolean menuItem6 = true;
  private boolean menuItem7 = true;

  private boolean menuItem8 = true;
  /* 设置operater项的各子项状态 */
  private boolean menuItem1_0_copy = true;
  private boolean menuItem1_1_cut = true;
  private boolean menuItem1_2_paste = true;
  private boolean menuItem1_3_delete = true;
  private boolean menuItem1_4_rename = true;

  /* list列表为空时 判断是否显示粘贴 */
  private boolean listNull_pasteEnable;
  private boolean list_pasteEnable;

  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    if (SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom")) {
      setContentView(R.layout.main_iptv);
      SORT_ENABLE = true;
      OPERATER_ENABLE = true;
    } else {
      setContentView(R.layout.main);
      SORT_ENABLE = false;
      OPERATER_ENABLE = false;
    }
    String chipVersion = HiSdkinvoke.getChipVersion();
    Log.i(TAG, "chipVersion:" + chipVersion);
    if (chipVersion.equals("Unknown chip ID"))
      finish();
    //FilterType.filterType(MainExplorerActivity.this);
    init();
    selectList = new ArrayList<String>();
    getUSB();

  }

  /**
   * 初始化menu
   */
  private void intMenu() {
      Log.i(TAG,"intMenu 1");
    titleAdapter = new TabMenu.MenuTitleAdapter(this, new String[] { " " }, 16, 0xFF222222, Color.LTGRAY, Color.WHITE);
    // 定义每项分页栏的内容
    String[] menuOptions = null;
    int[] menuDrawableIDs = null;
    if (menuItem4) {
      menuOptions = new String[] { getString(R.string.eject_cdrom) };
      menuDrawableIDs = new int[] { R.drawable.menu_delete };
    } else if (menuItem2 && menuItem3 && (!menuItem4) && (!OPERATER_ENABLE)) {
      /* "新建" "搜索" "切换过滤条件" "切换显示方式" */
        Log.i(TAG,"intMenu 2");
      menuOptions = new String[] { getString(R.string.str_new), getString(R.string.search), getString(R.string.filter_but), getString(R.string.show_but) };
      menuDrawableIDs = new int[] { // R.drawable.menu_test,
      R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_fullscreen, R.drawable.menu_cut };

    } else if (menuItem2 && menuItem3 && (!menuItem4) && OPERATER_ENABLE && (!menuItem8)) {
      /* "操作", "新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
        /* "预览" */
        Log.i(TAG,"intMenu 3");
      menuOptions = new String[] { getString(R.string.operation), getString(R.string.str_new), getString(R.string.search), getString(R.string.filter_but),
          getString(R.string.show_but), getString(R.string.sort_but) };
      menuDrawableIDs = new int[] { R.drawable.menu_bookmark, R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_fullscreen, R.drawable.menu_cut,
          R.drawable.menu_fullscreen };
    } else if (menuItem2 && menuItem3 && (!menuItem4)&& menuItem8 && OPERATER_ENABLE ) {
      /* "操作", "新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
        /* "预览" */
        Log.i(TAG,"intMenu 4");
      menuOptions = new String[] { getString(R.string.operation), getString(R.string.preview), getString(R.string.str_new), getString(R.string.search), getString(R.string.filter_but),
          getString(R.string.show_but), getString(R.string.sort_but) };
      menuDrawableIDs = new int[] { R.drawable.menu_bookmark,R.drawable.menu_bookmark, R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_fullscreen, R.drawable.menu_cut,
          R.drawable.menu_fullscreen };
    } else if (listNull_pasteEnable && (menuItem2) && (!menuItem3) && (!menuItem4) && OPERATER_ENABLE) {
      /* "操作","新建", "切换过滤条件" */
      menuOptions = new String[] { getString(R.string.operation), getString(R.string.str_new), getString(R.string.filter_but) };
      menuDrawableIDs = new int[] { R.drawable.menu_bookmark, R.drawable.menu_bookmark, R.drawable.menu_fullscreen };
    } else {
      /* "新建", "切换过滤条件" */
      menuOptions = new String[] { getString(R.string.str_new), getString(R.string.filter_but) };
      menuDrawableIDs = new int[] { R.drawable.menu_bookmark, R.drawable.menu_fullscreen };
    }

    bodyAdapter[0] = new TabMenu.MenuBodyAdapter(this, menuOptions, menuDrawableIDs, 13, 0xFFFFFFFF);

    Drawable griDrawable = getResources().getDrawable(R.drawable.gridview_item_selector);
    tabMenu = new TabMenu(MainExplorerActivity.this, griDrawable, new TitleClickEvent(), new BodyClickEvent(), titleAdapter, 0x55123456,// TabMenu的背景颜色
        R.style.PopupAnimation);// 出现与消失的动画

    tabMenu.update();
    tabMenu.SetTitleSelect(0);
    tabMenu.SetBodyAdapter(bodyAdapter[0]);
  }

  private void init() {
    showBut = (ImageButton) findViewById(R.id.showBut);

    if (SORT_ENABLE) {
      sortBut = (ImageButton) findViewById(R.id.sortBut);
    }
    filterBut = (ImageButton) findViewById(R.id.filterBut);

    intList = new ArrayList<Integer>();
    listFile = new ArrayList<File>();
    gridlayout = R.layout.gridfile_row;
    listlayout = R.layout.file_row;
    listView = (ListView) findViewById(R.id.listView);
    gridView = (GridView) findViewById(R.id.gridView);
    pathTxt = (TextView) findViewById(R.id.pathTxt);
    numInfo = (TextView) findViewById(R.id.ptxt);

    View titleView=findViewById(R.id.layout1);
    titleView.setAlpha(150);
    showMethod = getResources().getStringArray(R.array.show_method);
    filterMethod = getResources().getStringArray(R.array.filter_method);
    sortMethod = getResources().getStringArray(R.array.sort_method);

    expandableListView = (ExpandableListView) findViewById(R.id.expandlistView);
    getsdList();

    isNetworkFile = false;
  }

  /**
   * Obtain mount list CNcomment:获得挂载列表
   */
  public void getsdList() {

    getMountEquipmentList();
    ExpandAdapter adapter = new ExpandAdapter(this, groupList);
    expandableListView.setAdapter(adapter);
    for (int i = 0; i < groupList.size(); i++) {
      expandableListView.expandGroup(i);
    }

    expandableListView.setOnChildClickListener(new OnChildClickListener() {
      public boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
        String path = groupList.get(groupPosition).getChildList().get(childPosition).get(MOUNT_PATH);
        File dvdFile = new File(path);
        if (dvdFile.exists() && dvdFile.isDirectory() && mIsSupportBD && FileUtil.getMIMEType(dvdFile, MainExplorerActivity.this).equals("video/dvd")) {
          preCurrentPath = "";
          Intent intent = new Intent();
          intent.setClassName("com.hisilicon.android.videoplayer", "com.hisilicon.android.videoplayer.activity.MediaFileListService");
          intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
          intent.setDataAndType(Uri.parse(path), "video/bd");
          intent.putExtra("sortCount", sortCount);
          intent.putExtra("isNetworkFile", isNetworkFile);
          startService(intent);
        } else {
          mountSdPath = path;
          MainExplorerActivity.this.groupPosition = groupPosition;
          arrayFile.clear();
          arrayDir.clear();
          directorys = path;
          expandableListView.setVisibility(View.INVISIBLE);
          listView.setVisibility(View.VISIBLE);
          listFile.clear();
          clickPos = 0;
          myPosition = 0;
          // FileAdapter adapter = new FileAdapter(
          // MainExplorerActivity.this, li, listlayout);
          // listView.setAdapter(adapter);
          geDdirectory(directorys);
          intList.add(childPosition);
          updateList(true);
        }
        return false;
      }
    });
  }

  public void setMenuOptionsState() {
    SharedPreferences share = getSharedPreferences("OPERATE", SHARE_MODE);
    int num = share.getInt("NUM", 0);
    if (!OPERATER_ENABLE) {
      // menu.getItem(1).setVisible(false);
    }
    if (!pathTxt.getText().toString().equals("")) {
      menuItem5 = true;
      menuItem6 = true;
      if (listFile.size() == 0) {

        if (OPERATER_ENABLE) {
          menuItem1_0_copy = false;
          menuItem1_1_cut = false;
          menuItem1_3_delete = false;
          menuItem1_4_rename = false;

          if (num == 0) {
            menuItem1 = false;
            menuItem1_2_paste = false;
            listNull_pasteEnable = false;
          } else {
            menuItem1 = true;
            menuItem1_2_paste = true;
            listNull_pasteEnable = true;
          }
        }
        menuItem2 = true;
        menuItem3 = false;
        menuItem4 = false;
      } else {
        listNull_pasteEnable = false;
        menuItem1 = true;
        if (OPERATER_ENABLE) {
          menuItem1_0_copy = true;
          menuItem1_1_cut = true;
          menuItem1_3_delete = true;
          menuItem1_4_rename = true;
          if (num == 0) {
            menuItem1_2_paste = false;
            list_pasteEnable = false;
          } else {
            menuItem1_2_paste = true;
            list_pasteEnable = true;
          }
        }
        menuItem1 = true;
        menuItem2 = true;
        menuItem3 = true;
        if(listFile.get(myPosition).isDirectory()){
            menuItem8 = false;
        }else{
            menuItem8 = true;
        }
        menuItem4 = false;
      }
    } else {

      menuItem1 = false;
      menuItem2 = false; // 新建
      menuItem3 = false; // 搜索
      menuItem4 = true; // 弹出光驱
      menuItem5 = false;
      menuItem6 = false;
    }
  }

  class TitleClickEvent implements OnItemClickListener {
    @Override
    public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
      selTitle = arg2;
      tabMenu.SetTitleSelect(arg2);
      tabMenu.SetBodyAdapter(bodyAdapter[arg2]);
    }
  }

  class BodyClickEvent implements OnItemClickListener {
    @Override
    public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {

      if (menuItem4) {
        if (arg2 == 0) {
          if (hasCDROM) {
            try {
              getMs().unmountVolume(CDROM_PATH, true, false);
              hasCDROM = false;
            } catch (Exception e) {
              Log.e(TAG, "Exception : " + e);
            }
          } else {
            Toast.makeText(MainExplorerActivity.this, getString(R.string.no_cdrom), Toast.LENGTH_LONG).show();
          }
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
      } else if (menuItem2 && menuItem3 && (!menuItem4) && (!OPERATER_ENABLE)) {
        if (arg2 == 0 && menuItem2) {
          FileUtil util = new FileUtil(MainExplorerActivity.this);
          util.createNewDir(currentFileString);
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 1 && menuItem3) {
          searchFileDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }

        if (arg2 == 2 && menuItem5) {
          FilterDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 3 && menuItem6) {
          ShowDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
      } else if (menuItem2 && menuItem3 && (!menuItem4) && OPERATER_ENABLE &&(!menuItem8)) {
        if (arg2 == 0) {
          /* 操作 */
          operation();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 1) {
          FileUtil util = new FileUtil(MainExplorerActivity.this);
          util.createNewDir(currentFileString);
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 2) {
          searchFileDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }

        if (arg2 == 3) {
          FilterDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 4) {
          ShowDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 5) {
          /* 排序 */
          sortFiles();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
      }else if (menuItem2 && menuItem3 && (!menuItem4) &&menuItem8 && OPERATER_ENABLE) {
          if (arg2 == 0) {
              /* 操作 */
              operation();
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
              if (arg2 == 1) {
              preview(listFile.get(myPosition));
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
            if (arg2 == 2) {
              FileUtil util = new FileUtil(MainExplorerActivity.this);
              util.createNewDir(currentFileString);
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
            if (arg2 == 3) {
              searchFileDialog();
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }

            if (arg2 == 4) {
              FilterDialog();
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
            if (arg2 == 5) {
              ShowDialog();
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
            if (arg2 == 6) {
              /* 排序 */
              sortFiles();
              if (tabMenu.isShowing())
                tabMenu.dismiss();
            }
          }  else if (listNull_pasteEnable && (menuItem2) && (!menuItem3) && (!menuItem4) && OPERATER_ENABLE) {
        if (arg2 == 0) {
          operation();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 1) {
          FileUtil util = new FileUtil(MainExplorerActivity.this);
          util.createNewDir(currentFileString);
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 2) {
          FilterDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
      } else {
        if (arg2 == 0) {
          FileUtil util = new FileUtil(MainExplorerActivity.this);
          util.createNewDir(currentFileString);
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }
        if (arg2 == 1) {
          FilterDialog();
          if (tabMenu.isShowing())
            tabMenu.dismiss();
        }

      }

    }

  }

  /**
   * 文件排序
   */
  private void sortFiles() {

    LayoutInflater factory = LayoutInflater.from(MainExplorerActivity.this);
    View sortView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
    ListView sortListView = (ListView) sortView.findViewById(R.id.lvSambaServer);
    final AlertDialog sortAlertDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
    sortAlertDialog.setView(sortView);
    sortAlertDialog.show();
    ArrayList<String> filterList = new ArrayList<String>();
    String[] sortContent = getResources().getStringArray(R.array.sort_method);
    filterList.add(sortContent[0]);
    filterList.add(sortContent[1]);
    filterList.add(sortContent[2]);
    // filterList.add(sortContent[3]);
    ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(MainExplorerActivity.this, android.R.layout.simple_list_item_single_choice, filterList);
    sortListView.setAdapter(filterAdapter);
    sortListView.setItemsCanFocus(false);
    sortListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
    sortListView.setItemChecked(sortCount, true);
    Log.i("mainExplorer", "********sortCount*********" + sortCount);
    sortListView.setSelection(sortCount);
    sortListView.setOnItemClickListener(new OnItemClickListener() {

      @Override
      public void onItemClick(AdapterView<?> arg0, View arg1, int itemCount, long arg3) {
        // TODO Auto-generated method stub
        if (itemCount == 0) {
          sortCount = 0;
        }
        if (itemCount == 1) {
          sortCount = 1;
        }
        if (itemCount == 2) {
          sortCount = 2;
        }
        FileUtil.showClickToast(MainExplorerActivity.this, sortMethod[sortCount]);
        updateList(true);
        sortAlertDialog.dismiss();

      }
    });

  }

  @Override
  /**
   * 创建MENU
   */
  public boolean onCreateOptionsMenu(Menu menu) {
    menu.add("menu");// 必须创建一项
    return super.onCreateOptionsMenu(menu);
  }

  @Override
  /**
   * 拦截MENU
   */
  public boolean onMenuOpened(int featureId, Menu menu) {
    setMenuOptionsState();
    intMenu();// ////////初始化menu
    if (tabMenu != null) {
      if (tabMenu.isShowing())
        tabMenu.dismiss();
      else {
        tabMenu.showAtLocation(findViewById(R.id.mainExplorerLayout01), Gravity.BOTTOM, 0, 0);
      }
    }
    return false;// 返回为true 则显示系统menu
  }

  private void operation() {
    LayoutInflater factory = LayoutInflater.from(MainExplorerActivity.this);
    View operationView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
    ListView filteListView = (ListView) operationView.findViewById(R.id.lvSambaServer);
    final AlertDialog operationAlertDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
    operationAlertDialog.setView(operationView);
    operationAlertDialog.show();
    ArrayList<String> filterList = new ArrayList<String>();
    // String filterString=getResources().getString(R.array.filter_method);
    if (listNull_pasteEnable) {
      filterList.add(getString(R.string.paste));
    }
    if (!list_pasteEnable&&!listNull_pasteEnable) {
      filterList.add(getString(R.string.copy));
      filterList.add(getString(R.string.cut));
      filterList.add(getString(R.string.delete));
      filterList.add(getString(R.string.str_rename));
    }
    if (list_pasteEnable&&!listNull_pasteEnable) {
      filterList.add(getString(R.string.copy));
      filterList.add(getString(R.string.cut));
      filterList.add(getString(R.string.paste));
      filterList.add(getString(R.string.delete));
      filterList.add(getString(R.string.str_rename));
    }
    ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(MainExplorerActivity.this, android.R.layout.simple_list_item_1, filterList);

    filteListView.setAdapter(filterAdapter);
    filteListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);

    filteListView.setSelection(filterCount);
    filteListView.setOnItemClickListener(new OnItemClickListener() {

      @Override
      public void onItemClick(AdapterView<?> arg0, View arg1, int itemCount, long arg3) {
        // TODO Auto-generated method stub
        /* 列表文件为空仅可粘贴  */
        if (listNull_pasteEnable) {
          if (itemCount == 0) {
            managerF(myPosition, MENU_PASTE);

          }
        }

        /* 列表文件不为空  粘贴不可用  */
        if (!list_pasteEnable&&!listNull_pasteEnable) {
          if (itemCount == 0) {
            managerF(myPosition, MENU_COPY);
          }
          if (itemCount == 1) {
            managerF(myPosition, MENU_CUT);
          }
          if (itemCount == 2) {
            managerF(myPosition, MENU_DELETE);
          }
          if (itemCount == 3) {
            managerF(myPosition, MENU_RENAME);
          }
        }

        /* 列表文件不为空  粘贴可用  */
        if (list_pasteEnable&&!listNull_pasteEnable) {
          if (itemCount == 0) {
            managerF(myPosition, MENU_COPY);
          }
          if (itemCount == 1) {
            managerF(myPosition, MENU_CUT);
          }
          if (itemCount == 2) {
            managerF(myPosition, MENU_PASTE);

          }
          if (itemCount == 3) {
            managerF(myPosition, MENU_DELETE);
          }
          if (itemCount == 4) {
            managerF(myPosition, MENU_RENAME);
          }
        }

        operationAlertDialog.dismiss();
      }
    });
  }
  protected void preview(File file){
      super.preview(file);
  }
  /**
   * 切换显示方式如列表或缩略图
   */
  private void ShowDialog() {
    LayoutInflater showFactory = LayoutInflater.from(MainExplorerActivity.this);
    View showView = showFactory.inflate(R.layout.samba_server_list_dlg_layout, null);
    ListView showListView = (ListView) showView.findViewById(R.id.lvSambaServer);
    final AlertDialog showAlertDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
    showAlertDialog.setView(showView);
    showAlertDialog.show();
    ArrayList<String> showList = new ArrayList<String>();
    String[] showContent = getResources().getStringArray(R.array.show_method);
    showList.add(showContent[0]);
    showList.add(showContent[1]);
    ArrayAdapter<String> showAdapter = new ArrayAdapter<String>(MainExplorerActivity.this, android.R.layout.simple_list_item_single_choice, showList);
    showListView.setAdapter(showAdapter);
    showListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
    showListView.setItemChecked(showCount, true);
    showListView.setSelection(showCount);
    showListView.setOnItemClickListener(new OnItemClickListener() {

      @Override
      public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
        // TODO Auto-generated method stub
        if (arg2 == 0) {
          gridView.setVisibility(View.INVISIBLE);
          listView.setVisibility(View.VISIBLE);
          showCount = 0;
        }
        if (arg2 == 1) {
          gridView.setVisibility(View.VISIBLE);
          listView.setVisibility(View.INVISIBLE);
          showCount = 1;
        }
        showAlertDialog.dismiss();
        FileUtil.showClickToast(MainExplorerActivity.this, showMethod[showCount]);
        updateList(true);
      }
    });

  }

  /**
   * 切换过滤显示文件条件：所有文件/图片/音频/视频
   */
  private void FilterDialog() {

    LayoutInflater factory = LayoutInflater.from(MainExplorerActivity.this);
    View filterView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
    ListView filteListView = (ListView) filterView.findViewById(R.id.lvSambaServer);
    final AlertDialog filterAlertDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
    filterAlertDialog.setView(filterView);
    filterAlertDialog.show();
    ArrayList<String> filterList = new ArrayList<String>();
    String[] filterString = getResources().getStringArray(R.array.filter_method);
    filterList.add(filterString[0]);
    filterList.add(filterString[1]);
    filterList.add(filterString[2]);
    filterList.add(filterString[3]);
    ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(MainExplorerActivity.this, android.R.layout.simple_list_item_single_choice, filterList);
    filteListView.setAdapter(filterAdapter);
    filteListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
    filteListView.setItemChecked(filterCount, true);
    filteListView.setSelection(filterCount);
    filteListView.setOnItemClickListener(new OnItemClickListener() {

      @Override
      public void onItemClick(AdapterView<?> arg0, View arg1, int itemCount, long arg3) {
        // TODO Auto-generated method stub
        if (itemCount == 0) {
          filterCount = 0;
        }
        if (itemCount == 1) {
          filterCount = 1;
        }
        if (itemCount == 2) {
          filterCount = 2;
        }
        if (itemCount == 3) {
          filterCount = 3;
        }
        filterAlertDialog.dismiss();
        FileUtil.showClickToast(MainExplorerActivity.this, filterMethod[filterCount]);
        updateList(true);
      }
    });

  }

  IMountService getMs() {
    IBinder service = ServiceManager.getService("mount");
    if (service != null) {
      return IMountService.Stub.asInterface(service);
    } else {
      Log.e(TAG, "Can't get mount service");
    }
    return null;
  }

  private OnItemClickListener ItemClickListener = new OnItemClickListener() {

    public void onItemClick(AdapterView<?> l, View v, int position, long id) {
      if (listFile.size() > 0) {
        if (position >= listFile.size()) {
          position = listFile.size() - 1;
        }
        // for chmod the file
        chmodFile(listFile.get(position).getPath());
        if (listFile.get(position).isDirectory() && listFile.get(position).canRead()) {
          intList.add(position);
          clickPos = 0;
        } else {
          clickPos = position;
        }
        myPosition = clickPos;
        arrayFile.clear();
        arrayDir.clear();
        // for broken into the directory contains many files,click again
        // error
        preCurrentPath = currentFileString;
        keyBack = false;
        getFiles(listFile.get(position).getPath());
      }
    }
  };

  private OnItemClickListener deleListener = new OnItemClickListener() {

    public void onItemClick(AdapterView<?> l, View v, int position, long id) {
      ControlListAdapter adapter = (ControlListAdapter) list.getAdapter();
      CheckedTextView check = (CheckedTextView) v.findViewById(R.id.check);
      String path = adapter.getList().get(position).getPath();
      if (check.isChecked()) {
        selectList.add(path);
      } else {
        selectList.remove(path);
      }
    }
  };

  /**
   * Depending on the file directory path judgment do: Go to the directory the
   * file: Open the file system application CNcomment:根据文件路径判断执行的操作 目录:进入目录
   * 文件:系统应用打开文件
   *
   * @param path
   */

  public void getFiles(String path) {
    if (path == null)
      return;
    openFile = new File(path);
    if (openFile.exists()) {
      if (openFile.isDirectory()) {
        if (mIsSupportBD) {
          if (FileUtil.getMIMEType(openFile, this).equals("video/bd")) {
            preCurrentPath = "";
            // currentFileString = path;
            intList.remove(intList.size() - 1);
            Intent intent = new Intent();
            intent.setClassName("com.hisilicon.android.videoplayer", "com.hisilicon.android.videoplayer.activity.MediaFileListService");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setDataAndType(Uri.parse(path), "video/bd");
            intent.putExtra("sortCount", sortCount);
            intent.putExtra("isNetworkFile", isNetworkFile);
            startService(intent);
            return;
          } else if (FileUtil.getMIMEType(openFile, this).equals("video/dvd")) {
            preCurrentPath = "";
            // currentFileString = path;
            intList.remove(intList.size() - 1);
            Intent intent = new Intent();
            intent.setClassName("com.hisilicon.android.videoplayer", "com.hisilicon.android.videoplayer.activity.MediaFileListService");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setDataAndType(Uri.parse(path), "video/dvd");
            intent.putExtra("sortCount", sortCount);
            intent.putExtra("isNetworkFile", isNetworkFile);
            startService(intent);
            return;
          }
        }
        currentFileString = path;
        updateList(true);
      } else {
        super.openFile(this, openFile);
      }
    } else {
      refushList();
    }
  };

  /**
   * Populate the list of files to the data container CNcomment:将文件列表填充到数据容器中
   *
   * @param files
   * @param fileroot
   */
  public void fill(File fileroot) {
    try {
      // li = adapter.getFiles();
      if (clickPos >= listFile.size()) {
        clickPos = listFile.size() - 1;
      }
      pathTxt.setText(fileroot.getPath());
      numInfo.setText((clickPos + 1) + "/" + listFile.size());
      if (!fileroot.getPath().equals(directorys)) {
        parentPath = fileroot.getParent();
        currentFileString = fileroot.getPath();
      } else {
        currentFileString = directorys;
      }

      if (listFile.size() == 0) {
        numInfo.setText(0 + "/" + 0);
      }

      if (SORT_ENABLE) {
        if ((listFile.size() == 0) && (showBut.findFocus() == null) && (filterBut.findFocus() == null)) {
          sortBut.requestFocus();
        }
      }

      if (clickPos >= 0) {
        if (listView.getVisibility() == View.VISIBLE) {
          listView.requestFocus();
          listView.setSelection(clickPos);
        } else if (gridView.getVisibility() == View.VISIBLE) {
          gridView.requestFocus();
          gridView.setSelection(clickPos);
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  AlertDialog listview_renameDialog;

  /**
   * File Operations Management CNcomment:管理文件操作
   *
   * @param position
   * @param item
   */
  private void managerF(final int position, final int item) {

    // for while first delete more than one file then cause exception
    // if(position == listFile.size()){
    if (position >= listFile.size()) {
      if (listFile.size() != 0) {
        myPosition = listFile.size() - 1;
      } else {
        myPosition = 0;
      }
    }

    menu_item = item;
    if (item == MENU_PASTE) {
      getMenu(myPosition, item, list);
    } else if (item == MENU_RENAME) {

      LayoutInflater factory = LayoutInflater.from(MainExplorerActivity.this);
      View list_view = factory.inflate(R.layout.samba_server_list_dlg_but_layout, null);
      ListView lvServer = (ListView) list_view.findViewById(R.id.lvSambaServer);
      listview_renameDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
      listview_renameDialog.setView(list_view);
      Button list_but_ok = (Button) list_view.findViewById(R.id.list_dlg_ok);
      Button list_but_cancle = (Button) list_view.findViewById(R.id.list_dlg_cancle);
      listview_renameDialog.show();
      listview_renameDialog = FileUtil.setDialogParams(listview_renameDialog, MainExplorerActivity.this);
      list = (ListView) list_view.findViewById(R.id.lvSambaServer);
      selectList.clear();
      list.setItemsCanFocus(false);
      list.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
      list.setAdapter(new ControlListAdapter(MainExplorerActivity.this, listFile));
      list.setItemChecked(myPosition, true);
      list.setSelection(myPosition);
      selectList.add(listFile.get(myPosition).getPath());
      list.setOnItemClickListener(deleListener);
      list_but_ok.setOnClickListener(new OnClickListener() {

        @Override
        public void onClick(View arg0) {
          // TODO Auto-generated method stub
          if (selectList.size() > 0) {
            getMenu(myPosition, menu_item, list);
            listview_renameDialog.cancel();
          } else {
            FileUtil.showToast(MainExplorerActivity.this, MainExplorerActivity.this.getString(R.string.select_file));
          }
          // listview_renameDialog.dismiss();
        }
      });
      list_but_cancle.setOnClickListener(new OnClickListener() {

        @Override
        public void onClick(View arg0) {
          // TODO Auto-generated method stub
          listview_renameDialog.dismiss();
        }
      });
      list_but_ok.requestFocus();

    } else {

      LayoutInflater factory = LayoutInflater.from(MainExplorerActivity.this);
      View list_view = factory.inflate(R.layout.samba_server_list_dlg_but_layout, null);
      ListView lvServer = (ListView) list_view.findViewById(R.id.lvSambaServer);
      listview_renameDialog = new AlertDialog.Builder(MainExplorerActivity.this).create();
      listview_renameDialog.setView(list_view);
      Button list_but_ok = (Button) list_view.findViewById(R.id.list_dlg_ok);
      Button list_but_cancle = (Button) list_view.findViewById(R.id.list_dlg_cancle);
      listview_renameDialog.show();
      listview_renameDialog = FileUtil.setDialogParams(listview_renameDialog, MainExplorerActivity.this);
      list = (ListView) list_view.findViewById(R.id.lvSambaServer);
      list.setItemsCanFocus(false);
      list.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
      selectList.clear();
      list.setAdapter(new ControlListAdapter(MainExplorerActivity.this, listFile));
      list.setItemChecked(myPosition, true);
      list.setSelection(myPosition);
      selectList.add(listFile.get(myPosition).getPath());
      list.setOnItemClickListener(deleListener);
      list_but_ok.requestFocus();
      list_but_ok.setOnClickListener(new OnClickListener() {

        @Override
        public void onClick(View arg0) {
          // TODO Auto-generated method stub
          if (selectList.size() > 0) {
            getMenu(myPosition, menu_item, list);
          } else {
            FileUtil.showToast(MainExplorerActivity.this, MainExplorerActivity.this.getString(R.string.select_file));
          }
          listview_renameDialog.dismiss();
        }
      });
      list_but_cancle.setOnClickListener(new OnClickListener() {

        @Override
        public void onClick(View arg0) {
          // TODO Auto-generated method stub
          listview_renameDialog.dismiss();
        }
      });

    }
  }

  /**
   * operation menu CNcomment:操作菜单
   *
   * @param position
   *            CNcomment:目标文件位置
   * @param item
   *            CNcomment:操作
   * @param list
   *            CNcomment:数据容器
   */
  private void getMenu(final int position, final int item, final ListView list) {
    int selectionRowID = (int) position;
    File file = null;
    File myFile = null;
    myFile = new File(currentFileString);
    FileMenu menu = new FileMenu();
    SharedPreferences sp = getSharedPreferences("OPERATE", SHARE_MODE);

    if (item == MENU_RENAME) {
      fileArray = new ArrayList<File>();
      // file = new File(currentFileString + "/"
      // + listFile.get(selectionRowID).getName());
      for (int i = 0; i < selectList.size(); i++) {
        file = new File(selectList.get(i));
        fileArray.add(file);
      }
      fileArray.add(file);
      menu.getTaskMenuDialog(MainExplorerActivity.this, myFile, fileArray, sp, item, 0);
    } else if (item == MENU_PASTE) {
      fileArray = new ArrayList<File>();
      menu.getTaskMenuDialog(MainExplorerActivity.this, myFile, fileArray, sp, item, 1);
    } else {
      fileArray = new ArrayList<File>();
      for (int i = 0; i < selectList.size(); i++) {
        file = new File(selectList.get(i));
        fileArray.add(file);
      }
      menu.getTaskMenuDialog(MainExplorerActivity.this, myFile, fileArray, sp, item, 1);
    }

  }

  private Handler handler = new Handler() {
    public synchronized void handleMessage(Message msg) {
      switch (msg.what) {
      case SEARCH_RESULT:
        if (progress != null && progress.isShowing()) {
          progress.dismiss();
        }

        synchronized (lock) {
          if (arrayFile.size() == 0 && arrayDir.size() == 0) {
            FileUtil.showToast(MainExplorerActivity.this, getString(R.string.no_search_file));
            return;
          } else {
            updateList(true);
          }
        }
        break;
      case UPDATE_LIST:
        if (progress != null && progress.isShowing()) {
          progress.dismiss();
        }
        if (listView.getVisibility() == View.VISIBLE) {
          adapter = new FileAdapter(MainExplorerActivity.this, listFile, listlayout);
          listView.setAdapter(adapter);
          listView.setOnItemSelectedListener(itemSelect);
          listView.setOnItemClickListener(ItemClickListener);
        } else if (gridView.getVisibility() == View.VISIBLE) {
          adapter = new FileAdapter(MainExplorerActivity.this, listFile, gridlayout);
          gridView.setAdapter(adapter);
          gridView.setOnItemClickListener(ItemClickListener);
          gridView.setOnItemSelectedListener(itemSelect);
        }
        fill(new File(currentFileString));
        break;
      case ISO_MOUNT_SUCCESS:
        if (progress != null && progress.isShowing()) {
          progress.dismiss();
        }
        intList.add(myPosition);
        getFiles(mISOLoopPath);
        break;
      case ISO_MOUNT_FAILD:
        if (progress != null && progress.isShowing()) {
          progress.dismiss();
        }
        FileUtil.showToast(MainExplorerActivity.this, getString(R.string.new_mout_fail));
        break;
      case CHMOD_FILE:
        getMenu(myPosition, menu_item, list);
        break;
      }
    }
  };

  OnItemSelectedListener itemSelect = new OnItemSelectedListener() {

    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
      // invisiable();
      if (parent.equals(listView) || parent.equals(gridView)) {
        myPosition = position;
      }
      numInfo.setText((position + 1) + "/" + listFile.size());
    }

    public void onNothingSelected(AdapterView<?> parent) {

    }
  };

  /**
   * File list sorting CNcomment:文件列表排序
   *
   * @param sort
   *            CNcomment:排序方式
   */
  public void updateList(boolean flag) {

    if (flag) {
      // for broken into the directory contains many files,click again
      // error
      listFile.clear();
      Log.i(TAG, "updateList");
      if (SORT_ENABLE) {
        sortBut.setOnClickListener(clickListener);
      }
      showBut.setOnClickListener(clickListener);
      filterBut.setOnClickListener(clickListener);

      if (progress != null && progress.isShowing()) {
        progress.dismiss();
      }

      progress = new ProgressDialog(MainExplorerActivity.this);
      progress.show();

      if (adapter != null) {
        adapter.notifyDataSetChanged();
      }
      waitThreadToIdle(thread);
      thread = new MyThread();
      thread.setStopRun(false);
      progress.setOnCancelListener(new OnCancelListener() {
        public void onCancel(DialogInterface arg0) {
          thread.setStopRun(true);
          if (keyBack) {
            intList.add(clickPos);
          } else {
            clickPos = myPosition;
            currentFileString = preCurrentPath;
            Log.v("\33[32m Main1", "onCancel" + currentFileString + "\33[0m");
            intList.remove(intList.size() - 1);
          }
          FileUtil.showToast(MainExplorerActivity.this, getString(R.string.cause_anr));
        }
      });
      thread.start();
    } else {
      adapter.notifyDataSetChanged();
      fill(new File(currentFileString));
    }

  }

  /**
   * Obtain a collection of files directory CNcomment:获得目录下文件集合
   *
   * @param path
   */
  private void geDdirectory(String path) {
    directorys = path;
    parentPath = path;
    currentFileString = path;
  }

  DialogInterface.OnClickListener imageButClick = new DialogInterface.OnClickListener() {

    public void onClick(DialogInterface dialog, int which) {
      if (which == DialogInterface.BUTTON_POSITIVE) {
        if (selectList.size() > 0) {
          getMenu(myPosition, menu_item, list);
          dialog.cancel();
        } else {
          FileUtil.showToast(MainExplorerActivity.this, MainExplorerActivity.this.getString(R.string.select_file));
        }
      } else {
        dialog.cancel();
      }
    }
  };

  int clickPos = 0;

  public boolean onKeyDown(int keyCode, KeyEvent event) {
    Log.w(" = ", " = " + keyCode);
    switch (keyCode) {
    case KeyEvent.KEYCODE_ENTER:
    case KeyEvent.KEYCODE_DPAD_CENTER:
      super.onKeyDown(KeyEvent.KEYCODE_ENTER, event);
      return true;

    case KeyEvent.KEYCODE_BACK:// KEYCODE_BACK
      keyBack = true;
      String newName = pathTxt.getText().toString();
      // The current directory is the root directory
      // CNcomment:当前目录是根目录
      if (newName.equals("")) {
        clickCount++;
        // if (clickCount == 1) {
        // // for not choice the srt file then quit the FileM
        // // FileUtil.showToast(MainExplorerActivity.this,
        // // getString(R.string.quit_app));
        // if (getIntent().getBooleanExtra("subFlag", false)) {
        // Intent intent = new Intent();
        // intent.setClassName("com.huawei.activity",
        // "com.huawei.activity.VideoActivity");
        // intent.putExtra("path", "");
        // intent.putExtra("pathFlag", false);
        // startActivity(intent);
        // finish();
        // } else {
        // FileUtil.showToast(MainExplorerActivity.this,
        // getString(R.string.quit_app));
        // }
        // } else if (clickCount == 2) {
        // // Empty the contents of the clipboard
        // // CNcomment:清空剪贴板内容
        // SharedPreferences share = getSharedPreferences("OPERATE",
        // SHARE_MODE);
        // share.edit().clear().commit();
        // if (FileUtil.getToast() != null) {
        // FileUtil.getToast().cancel();
        // }
        // onBackPressed();
        // }
        if (clickCount == 1) {
          // Empty the contents of the clipboard
          // CNcomment:清空剪贴板内容
          SharedPreferences share = getSharedPreferences("OPERATE", SHARE_MODE);
          share.edit().clear().commit();
          if (FileUtil.getToast() != null) {
            FileUtil.getToast().cancel();
          }
          onBackPressed();
        }
      } else {
        clickCount = 0;
        if (!currentFileString.equals(directorys)) {
          arrayDir.clear();
          arrayFile.clear();
          if (newName.equals(ISO_PATH)) {
            getFiles(prevPath);
          } else {
            getFiles(parentPath);
          }
        } else {
          pathTxt.setText("");
          numInfo.setText("");
          showBut.setOnClickListener(null);
          showBut.setImageResource(showArray[0]);
          showCount = 0;
          if (SORT_ENABLE) {
            sortBut.setOnClickListener(null);
            sortBut.setImageResource(sortArray[0]);
          }
          filterBut.setOnClickListener(null);
          filterBut.setImageResource(filterArray[0]);
          filterCount = 0;
          gridView.setVisibility(View.INVISIBLE);
          listView.setVisibility(View.INVISIBLE);
          expandableListView.setVisibility(View.VISIBLE);
          listFile.clear();
          getsdList();
        }
        // Click the location of the parent directory
        // CNcomment:点击的父目录位置
        int pos = -1;
        if (intList.size() <= 0) {
          groupPosition = 0;
          intList.add(0);
        }

        pos = intList.size() - 1;
        if (pos >= 0) {
          if (listView.getVisibility() == View.VISIBLE) {
            clickPos = intList.get(pos);
            myPosition = clickPos;
            intList.remove(pos);
          } else if (gridView.getVisibility() == View.VISIBLE) {
            clickPos = intList.get(pos);
            myPosition = clickPos;
            intList.remove(pos);
          } else if (expandableListView.getVisibility() == View.VISIBLE) {
            expandableListView.requestFocus();
            if (groupPosition < groupList.size()) {
              if (intList.get(pos) >= groupList.get(groupPosition).getChildList().size()) {
                expandableListView.setSelectedChild(groupPosition, 0, true);
              } else {
                expandableListView.setSelectedChild(groupPosition, intList.get(pos), true);
              }
            } else {
              groupPosition = 0;
              expandableListView.setSelectedChild(groupPosition, intList.get(pos), true);
            }
          }

        }
      }
      return true;
    case KeyEvent.KEYCODE_SEARCH: // search
      if (expandableListView.getVisibility() == View.INVISIBLE) {
        searchFileDialog();
      }
      return true;
    case KeyEvent.KEYCODE_INFO: // info
      if (expandableListView.getVisibility() == View.INVISIBLE) {
        FileUtil util = new FileUtil(this);
        if (listFile.size() < myPosition) {
          return true;
        }
        util.showFileInfo(listFile.get(myPosition));
      }
      return true;

    case KeyEvent.KEYCODE_PAGE_UP:
      super.onKeyDown(keyCode, event);
      break;

    case KeyEvent.KEYCODE_PAGE_DOWN:
      super.onKeyDown(keyCode, event);
      break;
    }
    return false;
  }

  public String getCurrentFileString() {
    return currentFileString;
  }

  protected void onResume() {
    super.onResume();

    // for grally3D delete the file, flush the data
    if (!currentFileString.equals("") && preCurrentPath.equals(currentFileString)) {
      updateList(true);
    }
  }

  public ListView getListView() {
    return listView;
  }

  private void getMountEquipmentList() {
    String[] mountType = getResources().getStringArray(R.array.mountType);
    MountInfo info = new MountInfo(this);
    groupList = new ArrayList<GroupInfo>();
    childList = new ArrayList<Map<String, String>>();
    GroupInfo group = null;
    for (int j = 0; j < mountType.length; j++) {
      group = new GroupInfo();
      childList = new ArrayList<Map<String, String>>();
      for (int i = 0; i < info.index; i++) {
        if (info.type[i] == j) {
          if (info.path[i] != null && (info.path[i].contains("/mnt") || info.path[i].contains("/storage"))) {
            Map<String, String> map = new HashMap<String, String>();
            // map.put(MOUNT_DEV, info.dev[i]);
            map.put(MOUNT_TYPE, String.valueOf(info.type[i]));
            map.put(MOUNT_PATH, info.path[i]);
            // map.put(MOUNT_LABLE, info.label[i]);
            map.put(MOUNT_LABLE, "");
            map.put(MOUNT_NAME, info.partition[i]);
            if (CDROM_PATH.equals(info.path[i])) {
              Log.d(TAG, "------CDROM-----");
              hasCDROM = true;
            }
            childList.add(map);
          }
        }
      }
      if (childList.size() > 0) {
        group.setChildList(childList);
        group.setName(mountType[j]);
        groupList.add(group);
      }
    }
  }

  private BroadcastReceiver usbReceiver = new BroadcastReceiver() {

    public void onReceive(Context context, Intent intent) {
      String action = intent.getAction();
      if (action.equals(Intent.ACTION_MEDIA_MOUNTED) || action.equals(Intent.ACTION_MEDIA_REMOVED) || action.equals(Intent.ACTION_MEDIA_UNMOUNTED)) {
        mHandler.removeMessages(0);
        Message msg = new Message();
        msg.what = 0;
        mHandler.sendMessageDelayed(msg, 1000);
        if (!pathTxt.getText().toString().equals("")) {
          if (action.equals(Intent.ACTION_MEDIA_REMOVED) || action.equals(Intent.ACTION_MEDIA_UNMOUNTED)) {
            FileUtil.showToast(context, getString(R.string.uninstall_equi));
          }
        } else if (action.equals(Intent.ACTION_MEDIA_MOUNTED))
          FileUtil.showToast(context, getString(R.string.install_equi));
      }
    }
  };

  Handler mHandler = new Handler() {
    public void handleMessage(Message msg) {
      // if (pathTxt.getText().toString().equals("")) {
      refushList();
      // }
      super.handleMessage(msg);
    }

  };

  private void refushList() {
    getMountEquipmentList();
    expandableListView.setVisibility(View.VISIBLE);
    listView.setVisibility(View.INVISIBLE);
    gridView.setVisibility(View.INVISIBLE);
    intList.clear();
    numInfo.setText("");
    pathTxt.setText("");
    ExpandAdapter adapter = new ExpandAdapter(MainExplorerActivity.this, groupList);
    expandableListView.setAdapter(adapter);
    for (int i = 0; i < groupList.size(); i++) {
      expandableListView.expandGroup(i);
    }
  }

  private void getUSB() {
    IntentFilter usbFilter = new IntentFilter();
    usbFilter.addAction(Intent.ACTION_UMS_DISCONNECTED);
    usbFilter.addAction(Intent.ACTION_MEDIA_MOUNTED);
    usbFilter.addAction(Intent.ACTION_MEDIA_UNMOUNTED);
    usbFilter.addAction(Intent.ACTION_MEDIA_REMOVED);
    usbFilter.addDataScheme("file");
    registerReceiver(usbReceiver, usbFilter);
  }

  protected void onDestroy() {
    unregisterReceiver(usbReceiver);
    super.onDestroy();
  }

  // for broken into the directory contains many files,click again error
  class MyThread extends MyThreadBase {
    public void run() {
      if (getFlag()) {
        setFlag(false);
        synchronized (lock) {
          util = new FileUtil(MainExplorerActivity.this, filterCount, arrayDir, arrayFile, currentFileString);
        }
      } else {
        util = new FileUtil(MainExplorerActivity.this, filterCount, currentFileString);
      }
      if (currentFileString.startsWith(ISO_PATH)) {
        listFile = util.getFiles(sortCount, "net");
      } else {
        listFile = util.getFiles(sortCount, "local");
      }
      if (getStopRun()) {
        if (keyBack) {
          if (pathTxt.getText().toString().equals(ISO_PATH)) {
            currentFileString = util.currentFilePath;
          }
        }
      } else {
        currentFileString = util.currentFilePath;
        handler.sendEmptyMessage(UPDATE_LIST);
      }
    }

    /**
     * Blu-ray ISO file filter, for maximum video file
     * CNcomment:过滤蓝光ISO文件，获取最大视频文件
     */
    public File getMaxFile(List<File> listFile) {
      int temp = 0;
      for (int i = 0; i < listFile.size(); i++) {
        if (listFile.get(temp).length() <= listFile.get(i).length())
          temp = i;
      }
      return listFile.get(temp);
    }
  }

  public Handler getHandler() {
    return handler;
  }

  public void operateSearch(boolean b) {
    if (b) {
      for (int i = 0; i < fileArray.size(); i++) {
        listFile.remove(fileArray.get(i));
      }
    }
  }

  protected void onStop() {
    super.onStop();
    super.cancleToast();
  }

  public TextView getPathTxt() {
    return pathTxt;
  }

  private static IMountService getMountService() {
    IBinder service = ServiceManager.getService("mount");
    if (service != null) {
      return IMountService.Stub.asInterface(service);
    } else {
      Log.e(TAG, "Can't get mount service");
    }
    return null;
  }
}
