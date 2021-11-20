package com.explorer.activity;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Toast;
import android.os.storage.IMountService;
import android.os.ServiceManager;
import android.os.IBinder;

import com.explorer.R;
import com.explorer.activity.SambaActivity.BodyClickEvent;
import com.explorer.activity.SambaActivity.SambaServerAdapter;
import com.explorer.activity.SambaActivity.TitleClickEvent;
import com.explorer.common.CommonActivity;
import com.explorer.common.ControlListAdapter;
import com.explorer.common.FileAdapter;
import com.explorer.common.FileUtil;
import com.explorer.common.MyDialog;
import com.explorer.common.NewCreateDialog;
import com.explorer.common.SabMenu;
import com.explorer.ftp.DBHelper;
import android.os.SystemProperties;
import com.hisilicon.android.netshare.NfsClient;

public class NFSActivity extends CommonActivity implements Runnable {

	static final String TAG = "NFSActivity";

	private static final int MENU_EDIT = Menu.FIRST + 14;

	private static final int MENU_SHORT = Menu.FIRST + 16;

	private String parentPath = "";

	private List<File> fileArray = null;

	List<Map<String, Object>> list = null;

	private String directorys = "/sdcard";

	private int result;

	private int temp = 0;

	private String folder_position = "";

	private String serverName = "";

	private String Userserver = "";

	private EditText editServer;

	private EditText position;

	SubMenu suboper;

	private int myPosition = 0;

	MyDialog dialog;

	Button myOkBut;

	Button myCancelBut;

	private DBHelper dbHelper;

	private SQLiteDatabase sqlite;

	Cursor cursor;

	List<String> selected;

	int controlFlag = 0;

	int id = 0;

	int flagItem = 0;

	AlertDialog alertDialog;

	ListView listViews;

	String prevName = "";

	String prevFolder = "";

	List<Integer> intList;

	String localPath = "";

	static final String TABLE_NAME = "nfsclient";

	static final String ID = "_id";

	static final String SERVER_IP = "server_ip";

	static final String NICK_NAME = "nick_name";

	static final String WORK_PATH = "work_path";

	static final String MOUNT_POINT = "mount_point";

	static final String IMAGE = "image";

	static final String SHORT = "short";

	List<Map<String, Object>> workFolderList;

	static final String SERVER_INTRO = "infos";

	private String prePath = "";

	private CheckBox netCheck;

	AlertDialog nServerLogonDlg;

	private static final String BLANK = "";

	private TextView numInfo;

	ProgressDialog pgsDlg;

	long waitLong;

	String strWorkgrpups;

	long totalLong;

	Timer timer;

	NfsClient nfsClient;

	static final String DIR_ICON = "dirIcon";

	Map<String, Object> clickedNetServer;

	Map<String, List<Map<String, Object>>> server2groupDirs = new HashMap<String, List<Map<String, Object>>>(
		1);

	private MenuItem pasteMenuItem;

	private MenuItem cutMenuItem;

	private MenuItem copyMenuItem;

	private MenuItem renameMenuItem;

	private MenuItem musicPathItem;

	private MenuItem deleteMenuItem;

	private final static int NET_ERROR = -5;

	private String prevServer;

	private StringBuilder builder = null;

	private Map<String, Object> clickedServerDirItem;

	private static final int MOUNT_RESULT_1 = 11;

	private static final int MOUNT_RESULT_2 = 12;

	private static final int MOUNT_RESULT_3 = 13;

	private static final int MOUNT_RESULT_4 = 14;

	private AlertDialog sureDialog;

	private int allOrShort = 0;

	private String isoParentPath = new String();

	/* display prompt */
	/* CNcomment:显示方式提示 */
	private String[] showMethod;
	private String[] sortMethod;

	/* type of filtering tips */
	/* CNcomment:过滤类型提示 */
	private String[] filterMethod;

	/* 弹出menu */
	SabMenu.MenuBodyAdapter[] bodyAdapter = new SabMenu.MenuBodyAdapter[3];
	SabMenu.MenuTitleAdapter titleAdapter;
	SabMenu tabMenu;
	int selTitle = 0;
	Drawable griDrawable;

	/* 设置Menu子项的状态 */
	private boolean menuItem1;
	private boolean menuItem2;
	private boolean menuItem3;
	private boolean menuItem4;
	private boolean menuItem5;
	private boolean menuItem6;
	private boolean menuItem7;
	private boolean menuItem8 = true;
	/* 设置operater项的各子项状态 */
	private boolean menuItem1_0_copy = true;
	private boolean menuItem1_1_cut = true;
	private boolean menuItem1_2_paste = true;
	private boolean menuItem1_3_delete = true;
	private boolean menuItem1_4_rename = true;

	private boolean listFileFlag;
	private boolean listFileNullFlag;
	private boolean noServerFlag;

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom")){
		setContentView(R.layout.lan_iptv);
		OPERATER_ENABLE = true;
		SORT_ENABLE=true;
		}
		else{
		setContentView(R.layout.lan);
		OPERATER_ENABLE = false;
		}
		init();


	}

	/**
	 * 初始化menu
	 */
	private void intMenu() {
		titleAdapter = new SabMenu.MenuTitleAdapter(this, new String[] { " " }, 16, 0xFF222222, Color.LTGRAY, Color.WHITE);
		// 定义每项分页栏的内容

		//menu item项显示设置
		String[] menuOptions=null;
		int[] menuDrawableIDs=null;

		if (menuItem1&&menuItem2&&menuItem4) {
		/* "删除","新建","编辑" */
		menuOptions=new String[] { getString(R.string.delete),getString(R.string.str_server),getString(R.string.edit)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark,
		R.drawable.menu_bookmark,  R.drawable.menu_delete};
		}else if (menuItem1&&menuItem2&&(!menuItem4)) {
		/* "删除","新建" */
		menuOptions=new String[] {getString(R.string.delete),getString(R.string.str_server)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark,
		R.drawable.menu_bookmark};
		}
		else if ((noServerFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&(!OPERATER_ENABLE))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE)) {
		/* "新建" */

		menuOptions=new String[] {getString(R.string.str_server)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark};
		}
		else if((!menuItem1)&&(!menuItem2)&&(!menuItem3)&&(menuItem5)){
		/* "加入快捷菜单" */
		menuOptions=new String[] {getString(R.string.add_shortcut)};
		menuDrawableIDs=new int[]  {R.drawable.menu_fullscreen};
		}else if (menuItem2&&menuItem3&&menuItem5&&(!OPERATER_ENABLE)) {
		/* "新建","搜索","加入快捷菜单","切换过滤条件", "切换显示方式" */
		menuOptions=new String[] {getString(R.string.new_dir), getString(R.string.search), getString(R.string.add_shortcut), getString(R.string.filter_but), getString(R.string.show_but)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_edit,R.drawable.menu_fullscreen, R.drawable.menu_cut, R.drawable.menu_cut};
		}else if (menuItem2 && menuItem3 && (!menuItem5)&&OPERATER_ENABLE&&(!menuItem8)){
		/* "操作","新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
		menuOptions = new String[] { getString(R.string.operation),getString(R.string.new_dir), getString(R.string.search), getString(R.string.filter_but), getString(R.string.show_but),getString(R.string.sort_but) };
		menuDrawableIDs = new int[] { R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_cut, R.drawable.menu_edit, R.drawable.menu_cut,R.drawable.menu_cut };
		}else if (menuItem2 && menuItem3 && (!menuItem5)&&OPERATER_ENABLE&&(menuItem8)){
	        /* "操作","预览","新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
	        menuOptions = new String[] { getString(R.string.operation),getString(R.string.preview),getString(R.string.new_dir), getString(R.string.search), getString(R.string.filter_but), getString(R.string.show_but),getString(R.string.sort_but) };
	        menuDrawableIDs = new int[] { R.drawable.menu_bookmark, R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_cut, R.drawable.menu_edit, R.drawable.menu_cut,R.drawable.menu_cut };
	        }

		else if (menuItem2 && menuItem3 && menuItem5&&OPERATER_ENABLE&&(!menuItem8)){
		/* "操作","新建", "搜索", "加入快捷菜单", "切换过滤条件","切换显示方式","文件排序" */
		menuOptions = new String[] { getString(R.string.operation),getString(R.string.new_dir), getString(R.string.search), getString(R.string.add_shortcut), getString(R.string.filter_but), getString(R.string.show_but),getString(R.string.sort_but)  };
		menuDrawableIDs = new int[] { R.drawable.menu_bookmark,R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_fullscreen, R.drawable.menu_cut, R.drawable.menu_cut,R.drawable.menu_fullscreen };
		}else if (menuItem2 && menuItem3 && menuItem5&&OPERATER_ENABLE&&(menuItem8)){
	        /* "操作","预览","新建", "搜索", "加入快捷菜单", "切换过滤条件","切换显示方式","文件排序" */
		    menuOptions = new String[] { getString(R.string.operation), getString(R.string.preview),getString(R.string.new_dir), getString(R.string.search), getString(R.string.add_shortcut), getString(R.string.filter_but), getString(R.string.show_but),getString(R.string.sort_but)  };
	        menuDrawableIDs = new int[] { R.drawable.menu_bookmark,R.drawable.menu_bookmark,R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_fullscreen, R.drawable.menu_cut, R.drawable.menu_cut,R.drawable.menu_fullscreen };
	    }else if (menuItem2&&menuItem3&&(!menuItem5)&&(!OPERATER_ENABLE)) {
		/* "新建","搜索","切换过滤条件", "切换显示方式" */
		menuOptions=new String[] {getString(R.string.new_dir), getString(R.string.search), getString(R.string.filter_but), getString(R.string.show_but)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_edit, R.drawable.menu_cut, R.drawable.menu_cut};
		}else if (((!noServerFlag)&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&(!OPERATER_ENABLE))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE)) {
		/* "新建","切换过滤条件" */
		menuOptions=new String[] {getString(R.string.new_dir),getString(R.string.filter_but)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_cut};
		}else if (((!noServerFlag)&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&(!OPERATER_ENABLE))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&OPERATER_ENABLE)) {
		/* "新建","切换过滤条件" */
		menuOptions=new String[] {getString(R.string.new_dir),getString(R.string.filter_but)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_cut};
		}
		else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE){
		/* "操作","新建","切换过滤条件"*/
		menuOptions=new String[] {getString(R.string.operation),getString(R.string.new_dir),getString(R.string.filter_but)};
		menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_cut,R.drawable.menu_bookmark};
				}else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&OPERATER_ENABLE){
					menuOptions=new String[] {getString(R.string.operation),getString(R.string.new_dir),getString(R.string.filter_but),getString(R.string.add_shortcut)};
					menuDrawableIDs=new int[] {R.drawable.menu_bookmark, R.drawable.menu_cut,R.drawable.menu_bookmark,R.drawable.menu_fullscreen};
				}
				else {
		menuOptions=new String[] {};
		menuDrawableIDs=new int[]  {};
		}

		bodyAdapter[0] = new SabMenu.MenuBodyAdapter(this, menuOptions, menuDrawableIDs, 13, 0xFFFFFFFF);

		Drawable griDrawable = getResources().getDrawable(R.drawable.gridview_item_selector);
		tabMenu = new SabMenu(NFSActivity.this,griDrawable, new TitleClickEvent(), new BodyClickEvent(), titleAdapter, 0x55123456,// TabMenu的背景颜色
		R.style.PopupAnimation);// 出现与消失的动画

		tabMenu.update();
		tabMenu.SetTitleSelect(0);
		tabMenu.SetBodyAdapter(bodyAdapter[0]);
	}

	private void init() {

		showBut = (ImageButton) findViewById(R.id.showBut);
		// sortBut = (ImageButton) findViewById(R.id.sortBut);
		filterBut = (ImageButton) findViewById(R.id.filterBut);
		nfsClient = new NfsClient();
		listFile = new ArrayList<File>();
		intList = new ArrayList<Integer>();
		fileL = new ArrayList<File>();
		gridlayout = R.layout.gridfile_row;
		listlayout = R.layout.file_row;

		showMethod = getResources().getStringArray(R.array.show_method);
		filterMethod = getResources().getStringArray(R.array.filter_method);
		sortMethod= getResources().getStringArray(R.array.sort_method);

		listView = (ListView) findViewById(R.id.listView);
		pathTxt = (TextView) findViewById(R.id.textPath);
		gridView = (GridView) findViewById(R.id.gridView);
		list = new ArrayList<Map<String, Object>>(1);

		dbHelper = new DBHelper(this, DBHelper.DATABASE_NAME, null,
		DBHelper.DATABASE_VERSION);
		sqlite = dbHelper.getWritableDatabase();
		selected = new ArrayList<String>();

		numInfo = (TextView) findViewById(R.id.title);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.mainfile);
		map.put(NICK_NAME, getString(R.string.all_network));
		map.put(SHORT, 0);
		list.add(map);
		list.addAll(getServer());
		servers();

		isNetworkFile = true;
	}

	private void servers() {
		SimpleAdapter serveradapter = new SimpleAdapter(this, list,
		R.layout.file_row, new String[] { IMAGE, NICK_NAME },
		new int[] { R.id.image_Icon, R.id.text });
		listView.setAdapter(serveradapter);
		listView.setOnItemClickListener(ItemClickListener);
		listView.setOnItemSelectedListener(itemSelect);
		listView.setSelection(clickPos);

	}

	private void getDirectory(String path) {

		temp = 1;
		directorys = path;
		parentPath = path;
		currentFileString = path;

		getFiles(path);
	}

	private List<Map<String, Object>> getServer() {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		cursor = sqlite.query(TABLE_NAME, new String[] { ID, WORK_PATH,
		SERVER_IP }, null, null, null, null, null);
		while (cursor.moveToNext()) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.folder_file);
		String nickName = "//"
		+ cursor.getString(cursor.getColumnIndex(SERVER_IP)) + ":"
		+ cursor.getString(cursor.getColumnIndex(WORK_PATH));
		Log.d(TAG, "SHOWNAME = " + nickName);
		map.put(NICK_NAME, nickName);
		map.put(SHORT, 1);
		map.put(MOUNT_POINT, " ");
		map.put(SERVER_IP,
		cursor.getString(cursor.getColumnIndex(SERVER_IP)));
		map.put(WORK_PATH,
		cursor.getString(cursor.getColumnIndex(WORK_PATH)));
		list.add(map);
		}
		cursor.close();
		return list;
	}


	public void setMenuOptionsState(){
		String[] splitedPath = pathTxt.getText().toString().split("/");
		if (splitedPath.length == 1) {
		temp = 0;
		noServerFlag=true;

            if (!OPERATER_ENABLE) {
            }
            menuItem1=true;

		if (pathTxt.getText().toString().equals("")) {
		if (intList.size() == 0) {
		menuItem2=true;
		} else {
		menuItem2=false;
		}
		if (list.size() <= 1 || intList.size() == 1) {
		menuItem1=false;
		} else {
		menuItem1=true;
		}
		menuItem3=false;
		if (listView.getSelectedItemPosition() > 0
		&& intList.size() == 0) {
		menuItem4=true;
		} else {
		menuItem4=false;
		}
		menuItem5=false;
		} else {
		menuItem1=false;
		menuItem2=false;
		menuItem3=false;
		menuItem4=false;
		if (listView.getSelectedItemPosition() >= 0) {
		if (hasTheShortCut()) {
		menuItem5=false;
		} else {
		menuItem5=true;
		}

		} else {
		menuItem5=false;
		}
		}
		} else {
		temp = 1;
		noServerFlag=false;
		if (hasTheShortCut()) {
		menuItem5=false;
		} else {
		menuItem5=true;
		}
            if (!OPERATER_ENABLE) {
		/*    非IPTV不显示操作项      */
                menuItem1=false;
            }
		SharedPreferences share = getSharedPreferences("OPERATE",
		SHARE_MODE);
		int num = share.getInt("NUM", 0);
		if (listFile.size() == 0) {
		if (OPERATER_ENABLE) {
		menuItem1=false;
		 if (num == 0) {
		 menuItem1=false;
		 listFileNullFlag=false;
		 } else {
		 listFileNullFlag=true;
		 menuItem1_0_copy=false;
		 menuItem1_1_cut=false;
		 menuItem1_2_paste=true;
		 menuItem1_3_delete=false;
		 menuItem1_4_rename=false;
		 }
		}
		menuItem3=false;
		} else {
		if (OPERATER_ENABLE) {
		menuItem1=false;
		listFileNullFlag=false;
		 if (num == 0) {
		     listFileFlag=false;
		 menuItem1_0_copy=true;
		 menuItem1_1_cut=true;
		 menuItem1_2_paste=false;
		 menuItem1_3_delete=true;
		 menuItem1_4_rename=true;
		 } else {
		 listFileFlag=true;
		 menuItem1_0_copy=true;
		 menuItem1_1_cut=true;
		 menuItem1_2_paste=true;
		 menuItem1_3_delete=true;
		 menuItem1_4_rename=true;
		 }
		}
		menuItem3=true;
		 if(listFile.get(myPosition).isDirectory()){
		     menuItem8 = false;
		 }else{
		     menuItem8 = true;
		 }
		}
		menuItem2=true;
		menuItem4=false;
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

		if (menuItem1&&menuItem2&&menuItem4) {
		if (arg2 == 0) {
		managerF(myPosition, MENU_DELETE);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		controlFlag = 0;
		showDialogs(MENU_ADD);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 2) {
		controlFlag=1;
		showDialogs(MENU_EDIT);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}else if (menuItem1&&menuItem2&&(!menuItem4)) {
		if (arg2 == 0) {
		managerF(myPosition, MENU_DELETE);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		controlFlag = 0;
		showDialogs(MENU_ADD);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}
		else if ((noServerFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&(!OPERATER_ENABLE))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE)) {
		/* "新建服务器" */

		if (arg2 == 0) {
		controlFlag = 0;
		showDialogs(MENU_ADD);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}
		else if((!menuItem1)&&(!menuItem2)&&(!menuItem3)&&(menuItem5)){
		if (arg2 == 0) {
		addShortCut();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}else if (menuItem2&&menuItem3&&menuItem5&&(!OPERATER_ENABLE)) {
		if (arg2 == 0) {
		FileUtil util = new FileUtil(NFSActivity.this);
		util.createNewDir(currentFileString);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		searchFileDialog();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 2) {
		addShortCut();
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

		}else if (menuItem2&&menuItem3&&(!menuItem5)&&(!OPERATER_ENABLE)) {
		if (arg2 == 0) {
		FileUtil util = new FileUtil(NFSActivity.this);
		util.createNewDir(currentFileString);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		searchFileDialog();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 2) {
		FilterDialog();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 3) {
		ShowDialog();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}

		else if (menuItem2 && menuItem3 && menuItem5&&OPERATER_ENABLE&&(!menuItem8)){
		/* 粘贴可用            "操作","新建", "搜索", "加入快捷菜单","切换过滤条件", "切换显示方式","文件排序"  */
		if (arg2 == 0) {
		/* "操作"  */

		operation();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		FileUtil util = new FileUtil(NFSActivity.this);
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
		addShortCut();
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
		/* "文件排序"  */
		sortFiles();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}
		else if (menuItem2 && menuItem3 && menuItem5&&OPERATER_ENABLE&&(menuItem8)){
	        /* 粘贴可用         "操作","预览","新建", "搜索", "加入快捷菜单","切换过滤条件", "切换显示方式","文件排序"  */
	        if (arg2 == 0) {
	        /* "操作"  */

	        operation();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        if (arg2 == 1) {
	            preview(listFile.get(myPosition));
	            if (tabMenu.isShowing())
	              tabMenu.dismiss();
	          }
	        if (arg2 ==2) {
	        FileUtil util = new FileUtil(NFSActivity.this);
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
	        addShortCut();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        if (arg2 == 5) {
	        FilterDialog();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        if (arg2 == 6) {
	        ShowDialog();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        if (arg2 == 7) {
	        /* "文件排序"  */
	        sortFiles();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        }
		else if (menuItem2 && menuItem3 && (!menuItem5)&&OPERATER_ENABLE&&(!menuItem8)){
		/*   粘贴可用        "操作","新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
		if (arg2 == 0) {
		/* "操作"  */
		operation();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		FileUtil util = new FileUtil(NFSActivity.this);
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
		/* "文件排序"  */
		sortFiles();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}
		else if (menuItem2 && menuItem3 && (!menuItem5)&&OPERATER_ENABLE&&(menuItem8)){
	        /*   粘贴可用        "操作","预览","新建", "搜索", "切换过滤条件", "切换显示方式", "文件排序" */
	        if (arg2 == 0) {
	        /* "操作"  */
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
	        FileUtil util = new FileUtil(NFSActivity.this);
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
	        /* "文件排序"  */
	        sortFiles();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        }
		else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE&&(!menuItem8)){
		/* "操作","新建","切换过滤条件",//"文件排序" */
		if (arg2 == 0) {
		/* "操作"  */

		operation();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 1) {
		FileUtil util = new FileUtil(NFSActivity.this);
		util.createNewDir(currentFileString);
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		if (arg2 == 2) {
		FilterDialog();
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}

			}
		else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE&&(menuItem8)){
	        /* "操作","预览","新建","切换过滤条件",//"文件排序" */
	        if (arg2 == 0) {
	        /* "操作"  */

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
	        FileUtil util = new FileUtil(NFSActivity.this);
	        util.createNewDir(currentFileString);
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }
	        if (arg2 == 3) {
	        FilterDialog();
	        if (tabMenu.isShowing())
	        tabMenu.dismiss();
	        }

	            }
			else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&OPERATER_ENABLE&&(!menuItem8)){
					/* "操作","新建","切换过滤条件" "加入快捷菜单" */
				if (arg2 == 0) {
					/* "操作"  */

					operation();
					if (tabMenu.isShowing())
						tabMenu.dismiss();
				}
				if (arg2 == 1) {
					FileUtil util = new FileUtil(NFSActivity.this);
					util.createNewDir(currentFileString);
					if (tabMenu.isShowing())
						tabMenu.dismiss();
				}
				if (arg2 == 2) {
					FilterDialog();
					if (tabMenu.isShowing())
						tabMenu.dismiss();
				}
				if (arg2 == 3) {
					addShortCut();
					if (tabMenu.isShowing())
						tabMenu.dismiss();
				}
				}
			else if (listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&OPERATER_ENABLE&&(menuItem8)){
                /* "操作","预览","新建","切换过滤条件" "加入快捷菜单" */
            if (arg2 == 0) {
                /* "操作"  */

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
                FileUtil util = new FileUtil(NFSActivity.this);
                util.createNewDir(currentFileString);
                if (tabMenu.isShowing())
                    tabMenu.dismiss();
            }
            if (arg2 == 3) {
                FilterDialog();
                if (tabMenu.isShowing())
                    tabMenu.dismiss();
            }
            if (arg2 == 4) {
                addShortCut();
                if (tabMenu.isShowing())
                    tabMenu.dismiss();
            }
            }
		else if (((!noServerFlag)&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)&&OPERATER_ENABLE)){
		if (arg2 == 0) {
		FileUtil util = new FileUtil(NFSActivity.this);
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
		else if (((!noServerFlag)&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5))||(!listFileNullFlag&&(!menuItem1)&&menuItem2&&(!menuItem3)&&(!menuItem4)&&(menuItem5)&&OPERATER_ENABLE)){
		if (arg2 == 0) {
		FileUtil util = new FileUtil(NFSActivity.this);
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
	private void sortFiles(){

		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View sortView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
		ListView sortListView = (ListView) sortView.findViewById(R.id.lvSambaServer);
		final AlertDialog sortAlertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		sortAlertDialog.setView(sortView);
		sortAlertDialog.show();
		ArrayList<String> filterList = new ArrayList<String>();
		 String[] sortContent=getResources().getStringArray(R.array.sort_method);
		filterList.add(sortContent[0]);
		filterList.add(sortContent[1]);
		filterList.add(sortContent[2]);
//		filterList.add(sortContent[3]);
		ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(NFSActivity.this, android.R.layout.simple_list_item_single_choice, filterList);
		sortListView.setAdapter(filterAdapter);
		sortListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
		sortListView.setItemChecked(sortCount, true);
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
		FileUtil.showClickToast(NFSActivity.this, sortMethod[sortCount]);
		updateList(true);
		sortAlertDialog.dismiss();


		}
		});

	}

	private void operation() {
		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View operationView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
		ListView filteListView = (ListView) operationView.findViewById(R.id.lvSambaServer);
		final AlertDialog operationAlertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		operationAlertDialog.setView(operationView);
		operationAlertDialog.show();
		ArrayList<String> filterList = new ArrayList<String>();
		// String filterString=getResources().getString(R.array.filter_method);
		if (listFileNullFlag) {
		filterList.add(getString(R.string.paste));
		}
		if (!listFileFlag&&!listFileNullFlag) {
		filterList.add(getString(R.string.copy));
		filterList.add(getString(R.string.cut));
		filterList.add(getString(R.string.delete));
		filterList.add(getString(R.string.str_rename));
		}
		if (listFileFlag&&!listFileNullFlag) {
		filterList.add(getString(R.string.copy));
		filterList.add(getString(R.string.cut));
		filterList.add(getString(R.string.paste));
		filterList.add(getString(R.string.delete));
		filterList.add(getString(R.string.str_rename));
		}

		ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(NFSActivity.this, android.R.layout.simple_list_item_1, filterList);

		filteListView.setAdapter(filterAdapter);
		filteListView.setChoiceMode(ListView.CHOICE_MODE_SINGLE);

		filteListView.setSelection(filterCount);
		filteListView.setOnItemClickListener(new OnItemClickListener() {

		@Override
		public void onItemClick(AdapterView<?> arg0, View arg1, int itemCount, long arg3) {
		// TODO Auto-generated method stub
		if (listFileNullFlag) {
		if (itemCount == 0) {
		 managerF(myPosition, MENU_PASTE);

		}
		}
		if (!listFileFlag&&!listFileNullFlag) {
		if (itemCount == 0) {
		 managerF(myPosition, MENU_COPY);
		}
		if (itemCount == 1) {
		 managerF(myPosition, MENU_CUT);
		}

		if (itemCount == 2) {
		 managerF(myPosition, MENU_DELETE);
		}
		if (itemCount==3) {
		 managerF(myPosition, MENU_RENAME);
		}
		}
		if (listFileFlag&&!listFileNullFlag) {
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
		if (itemCount==4) {
		 managerF(myPosition, MENU_RENAME);
		}
		}

		operationAlertDialog.dismiss();
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
		intMenu();
		if (tabMenu != null) {
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		else {
		tabMenu.showAtLocation(findViewById(R.id.sambaActivityLayout01), Gravity.BOTTOM, 0, 0);
		}
		if ((!menuItem1)&&(!menuItem2)&&(!menuItem3)&&(!menuItem4)&&(!menuItem5)){
		if (tabMenu.isShowing())
		tabMenu.dismiss();
		}
		}
		return false;// 返回为true 则显示系统menu
	}

	/**
	 * 切换过滤显示文件条件：所有文件/图片/音频/视频
	 */
	private void FilterDialog() {

		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View filterView = factory.inflate(R.layout.samba_server_list_dlg_layout, null);
		ListView filteListView = (ListView) filterView.findViewById(R.id.lvSambaServer);
		final AlertDialog filterAlertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		filterAlertDialog.setView(filterView);
		filterAlertDialog.show();
		ArrayList<String> filterList = new ArrayList<String>();
		 String[] filterString=getResources().getStringArray(R.array.filter_method);
		filterList.add(filterString[0]);
		filterList.add(filterString[1]);
		filterList.add(filterString[2]);
		filterList.add(filterString[3]);
		ArrayAdapter<String> filterAdapter = new ArrayAdapter<String>(NFSActivity.this, android.R.layout.simple_list_item_single_choice, filterList);

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
		FileUtil.showClickToast(NFSActivity.this, filterMethod[filterCount]);
		updateList(true);
		}
		});

	}

	/**
	 * 切换显示方式如列表或缩略图
	 */
	private void ShowDialog() {
		LayoutInflater showFactory = LayoutInflater.from(NFSActivity.this);
		View showView = showFactory.inflate(R.layout.samba_server_list_dlg_layout, null);
		ListView showListView = (ListView) showView.findViewById(R.id.lvSambaServer);
		final AlertDialog showAlertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		showAlertDialog.setView(showView);
		showAlertDialog.show();
		ArrayList<String> showList = new ArrayList<String>();
		String[] showContent=getResources().getStringArray(R.array.show_method);
		showList.add(showContent[0]);
		showList.add(showContent[1]);
		ArrayAdapter<String> showAdapter = new ArrayAdapter<String>(NFSActivity.this, android.R.layout.simple_list_item_single_choice, showList);
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
		FileUtil.showClickToast(NFSActivity.this, showMethod[showCount]);
		updateList(true);
		}
		});

	}

	private void showDialogs(final int item) {
		if (item == MENU_ADD || item == MENU_EDIT) {
		if (temp == 0) {
		dialog = new MyDialog(this, R.layout.nfs_add);
		dialog.show();
		editServer = (EditText) dialog.findViewById(R.id.ipAddress1);
		position = (EditText) dialog.findViewById(R.id.serverFolder1);
		netCheck = (CheckBox) dialog.findViewById(R.id.add_shortcut);
		netCheck.setVisibility(View.GONE);

		if (controlFlag == 1) {
		serverName = pathTxt.getText().toString();
		prevFolder = list.get(listView.getSelectedItemPosition())
		.get(WORK_PATH).toString();
		position.setText(prevFolder);
		prevServer = list.get(listView.getSelectedItemPosition())
		.get(SERVER_IP).toString();
		editServer.setText(prevServer);
		String nick = list.get(listView.getSelectedItemPosition())
		.get(NICK_NAME).toString();
		cursor = sqlite.query(TABLE_NAME, new String[] { ID,
		SERVER_IP }, SERVER_IP + "=? and " + WORK_PATH
		+ "=?", new String[] { prevServer, prevFolder },
		null, null, null);
		if (cursor.moveToFirst()) {
		id = cursor.getInt(cursor.getColumnIndex(ID));
		}
		cursor.close();
		}
		myOkBut = (Button) dialog.findViewById(R.id.myOkBut);
		myCancelBut = (Button) dialog.findViewById(R.id.myCancelBut);
		myOkBut.setOnClickListener(butClick);
		myCancelBut.setOnClickListener(butClick);
		} else {
		FileUtil util = new FileUtil(this);
		util.createNewDir(currentFileString);
		}
		}
	}

	OnClickListener butClick = new OnClickListener() {
		public void onClick(View v) {
		if (v.equals(myOkBut)) {
		myOkBut.setEnabled(false);
		Userserver = editServer.getText().toString();
		folder_position = position.getText().toString();
		/*
		 * if (folder_position.startsWith("/")) { folder_position =
		 * folder_position.substring(1); }
		 */

		if (folder_position.endsWith("/")) {
		folder_position = folder_position.substring(0,
		folder_position.length() - 1);
		}

		if (Userserver.trim().equals("")) {
		myOkBut.setEnabled(true);
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.input_server));
		} else if (folder_position.trim().equals("")) {
		myOkBut.setEnabled(true);
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.work_path_null));
		} else {
		doMount();
		}
		} else {
		dialog.cancel();
		}
		}
	};

	private void doMount() {
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		if (controlFlag == 1) {
		boolean bServer = prevServer.equals(Userserver);
		boolean bDir = prevFolder.equals(folder_position);
		if (bDir && bServer) {
		dialog.cancel();
		} else {
		cursor = sqlite
		.query(TABLE_NAME, new String[] { ID }, SERVER_IP
		+ "=? and " + WORK_PATH + "=?", new String[] {
		Userserver, folder_position }, null, null, null);
		if (cursor.moveToFirst()) {
		myOkBut.setEnabled(true);
		FileUtil.showToast(this, getString(R.string.shortcut_exist));
		} else {
		progress = new ProgressDialog(this);
		progress.setOnKeyListener(new OnKeyListener() {
		public boolean onKey(DialogInterface arg0, int arg1,
		KeyEvent arg2) {
		return true;
		}
		});
		progress.show();
		MountThread thread = new MountThread(MOUNT_RESULT_2);
		thread.start();
		}
		cursor.close();
		}
		} else {
		cursor = sqlite.query(TABLE_NAME, new String[] { ID }, SERVER_IP
		+ "=? and " + WORK_PATH + "=?", new String[] { Userserver,
		folder_position }, null, null, null);
		if (cursor.moveToFirst()) {
		myOkBut.setEnabled(true);
		FileUtil.showToast(this, getString(R.string.shortcut_exist));
		} else {
		localPath = nfsClient.getMountPoint(builder.toString().replace(
		"\\", "/"));
		Log.w(TAG, builder.toString());
		Log.w(TAG, localPath);
		if (!localPath.equals("ERROR")) {
		showLading();
		dialog.cancel();
		} else {
		progress = new ProgressDialog(this);
		progress.setOnKeyListener(new OnKeyListener() {
		public boolean onKey(DialogInterface arg0, int arg1,
		KeyEvent arg2) {
		return true;
		}
		});
		progress.show();
		MountThread thread = new MountThread(MOUNT_RESULT_1);
		thread.start();
		}
		}
		cursor.close();
		}

	}

	private void showLading() {
		progress = new ProgressDialog(NFSActivity.this);
		progress.setTitle(getResources().getString(R.string.adding_server));
		progress.setMessage(getResources().getString(R.string.please_waitting));
		progress.show();

		Thread threas = new Thread(NFSActivity.this);
		threas.start();
	}

	public void run() {
		handler.sendEmptyMessage(0);
	}

	private Handler handler = new Handler() {
		public void handleMessage(Message msg) {

		switch (msg.what) {
		case SEARCH_RESULT:
		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}

		synchronized (lock) {
		if (arrayFile.size() == 0 && arrayDir.size() == 0) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.no_search_file));
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
		adapter = new FileAdapter(NFSActivity.this, listFile,
		listlayout);
		listView.setAdapter(adapter);
		listView.setOnItemSelectedListener(itemSelect);
		listView.setOnItemClickListener(ItemClickListener);
		} else if (gridView.getVisibility() == View.VISIBLE) {
		adapter = new FileAdapter(NFSActivity.this, listFile,
		gridlayout);
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
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_mout_fail));
		break;

		case END_SEARCH:
		case NET_NORMAL:
		if (NFSActivity.this != null && !NFSActivity.this.isFinishing()) {
		pgsDlg.dismiss();
		}
		if (timer != null) {
		timer.cancel();
		timer.purge();
		}
		if (!strWorkgrpups.toLowerCase().equals("error")) {
		Log.d(TAG, "2424::strWorkgroups=" + strWorkgrpups);
		if (willClickNetDir) {
		Log.e("ADD2100", "POSITION");
		intList.add(myPosition);
		}
		updateServerListAfterParse(strWorkgrpups);
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.net_time_out));
		}
		break;
		case NET_ERROR:
		if (NFSActivity.this != null && !NFSActivity.this.isFinishing()) {
		pgsDlg.dismiss();
		}
		if (timer != null) {
		timer.cancel();
		timer.purge();
		}
		strWorkgrpups = "";
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.no_server));
		break;
		case MOUNT_RESULT_1:
		myOkBut.setEnabled(true);
		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}

		if (result == 0) {
		localPath = nfsClient.getMountPoint(builder.toString()
		.replace("\\", "/"));
		Log.d(TAG, "LOCAL " + localPath);
		showLading();
		dialog.cancel();
		} else if (result == NET_ERROR) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.network_error));
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_server_error));
		}
		break;
		case MOUNT_RESULT_2:
		myOkBut.setEnabled(true);
		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}

		if (result == 0) {
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		localPath = nfsClient.getMountPoint(builder.toString()
		.replace("\\", "/"));
		Log.d(TAG, "LOCAL " + localPath);
		showLading();
		dialog.cancel();
		} else if (result == NET_ERROR) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.network_error));
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_server_error));
		}
		break;
		case MOUNT_RESULT_3:
		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}

		if (result == 0) {
		if (allOrShort == -1) {
		showData(builder.toString(), sureDialog, myPosition);
		} else {
		cursor = sqlite.query(TABLE_NAME, new String[] { ID },
		SERVER_IP + " =? and " + WORK_PATH + " = ?",
		new String[] { Userserver, folder_position },
		null, null, null);
		if (cursor.moveToFirst()) {
		showData(builder.toString(), sureDialog, myPosition);
		} else {
		AlertDialog.Builder alert = new AlertDialog.Builder(
		NFSActivity.this);
		alert.setMessage(getString(R.string.is_add_short));
		alert.setPositiveButton(getString(R.string.ok),
		new DialogInterface.OnClickListener() {

		public void onClick(
		DialogInterface dialog,
		int which) {
		addShortCut();
		showData(builder.toString(),
		sureDialog, myPosition);
		}
		});
		alert.setNegativeButton(getString(R.string.cancel),
		new DialogInterface.OnClickListener() {

		public void onClick(
		DialogInterface dialog,
		int which) {
		showData(builder.toString(),
		sureDialog, myPosition);
		}
		});
		sureDialog = alert.create();
		sureDialog.show();
		}
		cursor.close();
		}
		} else {
		if (result == NET_ERROR) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.network_error));
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_server_error));
		}
		}
		break;
		case MOUNT_RESULT_4:

		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}

		if (result == 0) {
		NFSActivity.this.clickedNetServer = null;

		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		Log.i(TAG, builder.toString());
		String returnStr = nfsClient.getMountPoint(builder
		.toString().replace("\\", "/"));
		if (returnStr.equals("ERROR")) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.user_or_pass));
		} else {
		localPath = returnStr;
		if (netCheck.isChecked()) {
		cursor = sqlite.query(TABLE_NAME,
		new String[] { ID }, SERVER_IP + " =? and "
		+ WORK_PATH + " = ?", new String[] {
		Userserver, folder_position },
		null, null, null);
		if (cursor.moveToFirst()) {
		int id = cursor.getInt(cursor
		.getColumnIndex(ID));
		ContentValues values = new ContentValues();
		sqlite.update(TABLE_NAME, values, ID + "=?",
		new String[] { String.valueOf(id) });
		} else {
		setValues(Userserver, folder_position,
		localPath, 1);
		}
		cursor.close();
		}

		clickedServerDirItem.put(MOUNT_POINT, localPath);
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_mout_successfully));
		getDirectory(localPath);
		if (getFileFlag(currentFileString, prePath) == 1) {
		intList.add(myPosition);
		}
		}
		} else if (result == NET_ERROR) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.network_error));
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.new_server_error));
		}
		dialog.dismiss();
		break;
		default:
		progress.dismiss();
		ContentValues values = new ContentValues();
		values.put(SERVER_IP, Userserver);
		values.put(WORK_PATH, folder_position);
		Map<String, Object> map = null;
		if (controlFlag == 0) {
		sqlite.insert(TABLE_NAME, ID, values);
		boolean flag = false;
		for (Map<String, Object> maps : list) {
		if (!maps.containsValue(Userserver)) {
		flag = true;
		break;
		}
		}
		Log.w(TAG, " = " + flag);
		if (flag) {
		map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.folder_file);
		String nickName = "//" + Userserver + ":"
		+ folder_position;
		Log.d(TAG, "SHOWNAME = " + nickName);
		map.put(NICK_NAME, nickName);
		map.put(SHORT, 1);
		map.put(MOUNT_POINT, localPath);
		map.put(SERVER_IP, Userserver);
		map.put(WORK_PATH, folder_position);
		list.add(map);
		}
		} else {
		sqlite.update(TABLE_NAME, values, ID + "=?",
		new String[] { String.valueOf(id) });
		map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.folder_file);
		String nickName = "//" + Userserver + ":" + folder_position;
		Log.d(TAG, "SHOWNAME = " + nickName);
		map.put(NICK_NAME, nickName);
		map.put(SHORT, 1);
		map.put(MOUNT_POINT, localPath);
		map.put(SERVER_IP, Userserver);
		map.put(WORK_PATH, folder_position);

		if (pathTxt.getText().toString().equals("")) {
		list.set(listView.getSelectedItemPosition(), map);
		}

		}
		pathTxt.setText("");
		intList.clear();
		servers();
		listView.requestFocus();
		highlightLastItem(listView, list.size());
		break;
		}
		}
	};

	boolean willClickNetDir = false;

	private OnItemClickListener ItemClickListener = new OnItemClickListener() {
		public void onItemClick(AdapterView<?> parent, View v, int position,
		long id) {
//			parent.setDescendantFocusability(ViewGroup.FOCUS_BEFORE_DESCENDANTS); //当此选中的item的子控件需要获得焦点时
		if (IsNetworkDisconnect()) {
		return;
		}
		if (listFile.size() > 0) {
		if (position >= listFile.size()) {
		position = listFile.size() - 1;
		}
		}
		myPosition = position;
		String[] splitedPath = pathTxt.getText().toString().split("/");
		TextView text = (TextView) v.findViewById(R.id.text);
		if (parent.equals(listView) && (splitedPath.length == 1)) {
		fileL.clear();

		if (pathTxt.getText().toString().equals("")
		&& (intList.size() == 0)) {
		Log.w(TAG, list.get(position).get(SHORT).toString());
		if (list.get(position).get(SHORT).toString().equals("1")) {
		Userserver = list.get(position).get(SERVER_IP)
		.toString();
		folder_position = list.get(position).get(WORK_PATH)
		.toString().replace("\\", "/");
		String nick = list.get(position).get(NICK_NAME)
		.toString();
		serverName = nick.substring(2, nick.length()
		- folder_position.length() - 1);
		mountPath(position, -1);
		} else {
		clickPos = 0;
		willClickNetDir = true;
		searchServers();
		}
		} else if (intList.size() == 1) {
		serverName = text.getText().toString();
		willClickNetDir = true;
		showServerFolderList(text.getText().toString());
		} else if (intList.size() == 2) {
		if (workFolderList != null) {
		for (int i = 0; i < workFolderList.size(); i++) {
		String str = workFolderList.get(i).get(WORK_PATH)
		.toString().replace("\\", "/");
		Log.w(TAG, " = " + str);
		}
		Userserver = workFolderList.get(position)
		.get(SERVER_IP).toString();
		folder_position = workFolderList.get(position)
		.get(WORK_PATH).toString().replace("\\", "/");
		mountPath(position, 0);
		}

		}
		} else {
		chmodFile(listFile.get(position).getPath());
		if (listFile.get(position).canRead()) {
		if (listFile.get(position).isDirectory()) {
		intList.add(myPosition);
		clickPos = 0;
		} else {
		clickPos = position;
		}
		preCurrentPath = currentFileString;
		keyBack = false;
		getFiles(listFile.get(position).getPath());
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.file_cannot_read));
		}
		}
		}
	};

	private void mountPath(final int position, int flag) {
		allOrShort = flag;
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		String returnStr = nfsClient.getMountPoint(builder.toString().replace(
		"\\", "/"));
		if (returnStr.equals("ERROR")) {
		progress = new ProgressDialog(this);
		progress.setOnKeyListener(new OnKeyListener() {
		public boolean onKey(DialogInterface arg0, int arg1,
		KeyEvent arg2) {
		return true;
		}
		});
		progress.show();
		MountThread thread = new MountThread(MOUNT_RESULT_3);
		thread.start();
		} else {
		localPath = returnStr;
		mountSdPath = localPath;
		clickPos = 0;
		File file = new File(localPath);
		if (file.isDirectory() && file.canRead()) {
		Log.e("ADD1165", "POSITION");
		intList.add(position);
		}
		myPosition = 0;
		getDirectory(returnStr);
		}
	}

	private void showData(String str, AlertDialog dialog, int position) {
		String returnStr = nfsClient.getMountPoint(str.toString().replace("\\",
		"/"));
		localPath = returnStr;
		mountSdPath = localPath;
		clickPos = 0;
		File file = new File(localPath);
		if (file.isDirectory() && file.canRead()) {
		intList.add(position);
		}
		getDirectory(returnStr);
	}

	private void showServerFolderList(String nickName) {
		List<Map<String, Object>> groupDetails;
		String detailGroup = nfsClient.getShareFolders(nickName);
		if (null != detailGroup && detailGroup.equals("ERROR")) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.error_folder));
		return;
		} else {
		if (null != detailGroup && !"".equals(detailGroup)
		&& !detailGroup.toLowerCase().equals("error")) {
		groupDetails = parse2DetailDirectories(detailGroup);
		workFolderList = new ArrayList<Map<String, Object>>();
		Map<String, Object> map = null;
		for (int i = 0; i < groupDetails.size(); i++) {
		map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.folder_file);
		String serverIp = groupDetails.get(i).get(SERVER_IP)
		.toString();
		map.put(SERVER_IP, serverIp);
		String workPath = groupDetails.get(i).get(WORK_PATH)
		.toString();
		map.put(WORK_PATH, workPath);
		map.put(NICK_NAME, nickName);
		workFolderList.add(map);
		}
		if (willClickNetDir) {
		intList.add(myPosition);
		}
		SimpleAdapter adapter = new SimpleAdapter(NFSActivity.this,
		workFolderList, R.layout.file_row, new String[] {
		IMAGE, WORK_PATH }, new int[] {
		R.id.image_Icon, R.id.text });
		pathTxt.setText(nickName);
		Log.d(TAG, "1372::[showServerFolderList]workFolderList.size="
		+ workFolderList.size());
		listView.setAdapter(adapter);
		listView.setOnItemClickListener(ItemClickListener);
		listView.setOnItemSelectedListener(itemSelect);
		}
		}
	}

	private OnItemClickListener deleListener = new OnItemClickListener() {

		public void onItemClick(AdapterView<?> l, View v, int position, long id) {
		ControlListAdapter adapter = (ControlListAdapter) l.getAdapter();
		CheckedTextView check = (CheckedTextView) v
		.findViewById(R.id.check);
		String path = adapter.getList().get(position).getPath();
		if (check.isChecked()) {
		selected.add(path);
		} else {
		selected.remove(path);
		}
		}
	};

	public void getFiles(String path) {
		openFile = new File(path);
		if (openFile.isDirectory()) {

		if (mIsSupportBD) {
		if (FileUtil.getMIMEType(openFile, this).equals("video/bd")) {
		preCurrentPath = "";
		// currentFileString = path;
		intList.remove(intList.size() - 1);
		Intent intent = new Intent();
		intent.setClassName("com.hisilicon.android.videoplayer",
		"com.hisilicon.android.videoplayer.activity.MediaFileListService");
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		intent.setDataAndType(Uri.parse(path), "video/bd");
		intent.putExtra("sortCount", sortCount);
		intent.putExtra("isNetworkFile", isNetworkFile);
		startService(intent);
		return;
		}
                else if (FileUtil.getMIMEType(openFile, this).equals("video/dvd"))
                {
                    preCurrentPath = "";
		    // currentFileString = path;
		intList.remove(intList.size() - 1);
		Intent intent = new Intent();
		intent.setClassName(
		"com.hisilicon.android.videoplayer",
		"com.hisilicon.android.videoplayer.activity.MediaFileListService");
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
		if (openFile.isFile()) {
		super.openFile(this, openFile);
		} else {
		FileUtil.showToast(this, getString(R.string.network_error));
		}
		}

	};

	public void fill(File fileroot) {
		try {
		if (clickPos >= listFile.size()) {
		clickPos = listFile.size() - 1;
		}
		numInfo.setText("[" + (clickPos + 1) + "-" + listFile.size() + "]");
		if (!fileroot.getPath().equals(directorys)) {
		parentPath = fileroot.getParent();
		currentFileString = fileroot.getPath();
		} else {
		currentFileString = directorys;
		}

		if (listFile.size() == 0) {
		numInfo.setText("[" + 0 + "-" + 0 + "]");
		}

		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		String tempStr = nfsClient.getMountPoint(builder.toString()
		.replace("\\", "/"));
		String display_path = fileroot.getPath().substring(
		tempStr.length(), fileroot.getPath().length());
		Log.i(TAG, "display_path" + display_path);
		pathTxt.setText(builder.toString() + display_path);

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

	AlertDialog attrServerDeletingDialog;

	private void managerF(final int position, final int item) {
		flagItem = item;
		if (temp == 1)// operate file
		{
		if (position >= listFile.size()) {
		myPosition = listFile.size() - 1;
		}
		if (item == MENU_PASTE) {
		getMenu(myPosition, item, listViews);
            } else if (item == MENU_RENAME){

		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View list_view = factory.inflate(R.layout.samba_server_list_dlg_but_layout, null);
		final ListView listViews = (ListView) list_view.findViewById(R.id.lvSambaServer);
		alertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		alertDialog.setView(list_view);
		Button list_but_ok = (Button) list_view.findViewById(R.id.list_dlg_ok);
		Button list_but_cancle = (Button) list_view.findViewById(R.id.list_dlg_cancle);
		alertDialog.show();
		alertDialog = FileUtil.setDialogParams(alertDialog, NFSActivity.this);
//				listViews = (ListView) list_view.findViewById(R.id.lvSambaServer);
		selected.clear();
		listViews.setItemsCanFocus(false);
		listViews.setChoiceMode(ListView.CHOICE_MODE_SINGLE);
		listViews.setAdapter(new ControlListAdapter(NFSActivity.this, listFile));
		listViews.setItemChecked(myPosition, true);
		listViews.setSelection(myPosition);
		selected.add(listFile.get(myPosition).getPath());
		listViews.setOnItemClickListener(deleListener);
		list_but_ok.requestFocus();
		list_but_ok.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		if (selected.size() > 0) {
		getMenu(myPosition, flagItem, listViews);
		alertDialog.cancel();
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.select_file));
		}
		alertDialog.dismiss();
		}
		});
		list_but_cancle.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		alertDialog.dismiss();
		}
		});

		} else {

		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View list_view = factory.inflate(R.layout.samba_server_list_dlg_but_layout, null);
		final ListView listViews = (ListView) list_view.findViewById(R.id.lvSambaServer);
		alertDialog = new AlertDialog.Builder(NFSActivity.this).create();
		alertDialog.setView(list_view);
		Button list_but_ok = (Button) list_view.findViewById(R.id.list_dlg_ok);
		Button list_but_cancle = (Button) list_view.findViewById(R.id.list_dlg_cancle);
		alertDialog.show();
		alertDialog = FileUtil.setDialogParams(alertDialog, NFSActivity.this);
		selected.clear();
		listViews.setItemsCanFocus(false);
				listViews.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
		listViews.setAdapter(new ControlListAdapter(NFSActivity.this, listFile));
		listViews.setItemChecked(myPosition, true);
		listViews.setSelection(myPosition);
		selected.add(listFile.get(myPosition).getPath());
		listViews.setOnItemClickListener(deleListener);
		list_but_ok.requestFocus();
		list_but_ok.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		if (selected.size() > 0) {
		getMenu(myPosition, flagItem, listViews);
		alertDialog.cancel();
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.select_file));
		}
		alertDialog.dismiss();
		}
		});
		list_but_cancle.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		alertDialog.dismiss();
		}
		});

		}
		} else {// server
		int selectedPos = listView.getSelectedItemPosition() - 1;
		Log.d(TAG, "1571::managerF()_selectedPosition=" + selectedPos);
		if (selectedPos == -1) {
		selectedPos = 0;
		}

		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View list_view = factory.inflate(R.layout.samba_server_list_dlg_but_layout, null);
		ListView lvServer = (ListView) list_view.findViewById(R.id.lvSambaServer);
		attrServerDeletingDialog = new AlertDialog.Builder(NFSActivity.this).create();
		attrServerDeletingDialog.setView(list_view);
		Button list_but_ok = (Button) list_view.findViewById(R.id.list_dlg_ok);
		Button list_but_cancle = (Button) list_view.findViewById(R.id.list_dlg_cancle);
		attrServerDeletingDialog.show();
		attrServerDeletingDialog = FileUtil.setDialogParams(attrServerDeletingDialog, NFSActivity.this);
			lvServer.setAdapter(new NFSServerAdapter(NFSActivity.this, convertMapToHashMap(list), -1));
		lvServer.setItemsCanFocus(false);
		lvServer.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
		lvServer.setClickable(true);
		lvServer.setItemChecked(selectedPos, true);
		list_but_ok.requestFocus();
		list_but_ok.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub

		final AlertDialog confirmDialog = new AlertDialog.Builder(NFSActivity.this).create();
		LayoutInflater factory = LayoutInflater.from(NFSActivity.this);
		View noticeView = factory.inflate(R.layout.new_file_notice, null);
		TextView noticetTextView = (TextView) noticeView.findViewById(R.id.new_file_notice);
		TextView noticeTitle = (TextView) noticeView.findViewById(R.id.notice);
		Button noticeButOk = (Button) noticeView.findViewById(R.id.but_ok);
		Button noticeButCancle = (Button) noticeView.findViewById(R.id.but_cancle);
		confirmDialog.setView(noticeView);
		noticeTitle.setText(R.string.del_server_dlg_title);
		noticetTextView.setText(R.string.comfirm_delete_hint);
		noticetTextView.setGravity(Gravity.CENTER);
		confirmDialog.show();
		noticeButOk.setText(R.string.ok);
		noticeButCancle.setText(R.string.cancel);
		noticeButOk.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		doDeleteSeletedServers(attrServerDeletingDialog,
		5, list);
		confirmDialog.dismiss();
		}
		});
		noticeButCancle.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		confirmDialog.dismiss();
		}
		});
		attrServerDeletingDialog.dismiss();
		}
		});
		list_but_cancle.setOnClickListener(new OnClickListener() {
		@Override
		public void onClick(View arg0) {
		// TODO Auto-generated method stub
		attrServerDeletingDialog.dismiss();
		}
		});

		}

	}

	private void getMenu(final int position, final int item, final ListView list) {
		int selectionRowID = (int) position;
		File file = null;
		File myFile = new File(currentFileString);
		FileMenu menu = new FileMenu();
		SharedPreferences sp = getSharedPreferences("OPERATE", SHARE_MODE);
		if (item == MENU_RENAME) {
		fileArray = new ArrayList<File>();
		//file = new File(currentFileString + "/"
		//+ listFile.get(selectionRowID).getName());
            for (int i = 0; i < selected.size(); i++) {
		file = new File(selected.get(i));
		fileArray.add(file);
		}
		fileArray.add(file);
		menu.getTaskMenuDialog(NFSActivity.this, myFile, fileArray, sp,
		item, 0);
		} else if (item == MENU_PASTE) {
		fileArray = new ArrayList<File>();
		menu.getTaskMenuDialog(NFSActivity.this, myFile, fileArray, sp,
		item, 0);
		} else {
		fileArray = new ArrayList<File>();
		for (int i = 0; i < selected.size(); i++) {
		file = new File(selected.get(i));
		fileArray.add(file);
		}
		menu.getTaskMenuDialog(NFSActivity.this, myFile, fileArray, sp,
		item, 0);
		}

	}

	List<File> fileL = null;

	private DialogInterface.OnClickListener imageButClick = new DialogInterface.OnClickListener() {

		public void onClick(DialogInterface dialog, int which) {
		if (which == DialogInterface.BUTTON_POSITIVE) {
		if (selected.size() > 0) {
		getMenu(myPosition, flagItem, listViews);
		alertDialog.cancel();
		} else {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.select_file));
		}
		} else {
		alertDialog.cancel();
		}
		}
	};

	OnItemSelectedListener itemSelect = new OnItemSelectedListener() {

		public void onItemSelected(AdapterView<?> parent, View view,
		int position, long id) {
		if (!pathTxt.getText().toString().equals("")
		&& !pathTxt.getText().toString().equals(serverName)) {
		myPosition = position;
		numInfo.setText("[" + (position + 1) + "-" + listFile.size()
		+ "]");
		}
		}

		public void onNothingSelected(AdapterView<?> parent) {

		}
	};

	File[] sortFile;
	FileUtil util;

	public void updateList(boolean flag) {
		if (flag) {
		Log.i(TAG, "updateList");
		listFile.clear();
		showBut.setOnClickListener(clickListener);
		// sortBut.setOnClickListener(clickListener);
		filterBut.setOnClickListener(clickListener);
		if (progress != null && progress.isShowing()) {
		progress.dismiss();
		}
		progress = new ProgressDialog(NFSActivity.this);
		progress.show();
		if (adapter != null) {
		adapter.notifyDataSetChanged();
		}

		waitThreadToIdle(thread);

		thread = new MyThread();
		thread.setStopRun(false);
		progress.setOnCancelListener(new OnCancelListener() {
		public void onCancel(DialogInterface arg0) {
		Log.v("\33[32m Main1", "onCancel" + "\33[0m");
		thread.setStopRun(true);
		if (keyBack) {
		intList.add(clickPos);
		} else {
		clickPos = myPosition;
		currentFileString = preCurrentPath;
		intList.remove(intList.size() - 1);
		}
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.cause_anr));
		}
		});
		thread.start();
		} else {
		adapter.notifyDataSetChanged();
		fill(new File(currentFileString));
		}
	}

	int clickCount = 0;
	int clickPos = 0;

	public boolean onKeyDown(int keyCode, KeyEvent event) {
		boolean flag = pathTxt.getText().toString().equals(serverName);
		switch (keyCode) {

		case KeyEvent.KEYCODE_ENTER:
		case KeyEvent.KEYCODE_DPAD_CENTER:
		super.onKeyDown(KeyEvent.KEYCODE_ENTER, event);
		return true;

		case KeyEvent.KEYCODE_BACK:// KEYCODE_BACK
		keyBack = true;
		willClickNetDir = false;
		if (intList.size() == 0) {
		clickCount++;
//				if (clickCount == 1) {
//					FileUtil.showToast(NFSActivity.this,
//							getString(R.string.quit_app));
//				} else if (clickCount == 2) {
//					SharedPreferences share = getSharedPreferences("OPERATE",
//							SHARE_MODE);
//					share.edit().clear().commit();
//					if (FileUtil.getToast() != null) {
//						FileUtil.getToast().cancel();
//					}
//					onBackPressed();
//				}
		if (clickCount == 1) {
		SharedPreferences share = getSharedPreferences("OPERATE",
		SHARE_MODE);
		share.edit().clear().commit();
		if (FileUtil.getToast() != null) {
		FileUtil.getToast().cancel();
		}
		onBackPressed();
		}
		} else {
		if (!pathTxt.getText().toString().equals("")) {
		clickCount = 0;
		if (currentFileString.equals("") && flag) {
		pathTxt.setText("");
		willClickNetDir = false;
		searchServers();

		} else if (currentFileString.equals(localPath)) {

		numInfo.setText("");
		showBut.setOnClickListener(null);
		showBut.setImageResource(showArray[0]);
		showCount = 0;
		// sortBut.setOnClickListener(null);
		// sortBut.setImageResource(sortArray[0]);
		filterBut.setOnClickListener(null);
		filterBut.setImageResource(filterArray[0]);
		filterCount = 0;
		gridView.setVisibility(View.INVISIBLE);
		listView.setVisibility(View.VISIBLE);
		currentFileString = "";
		listFile.clear();
		if (list.get(intList.get(0)).get(SHORT).toString()
		.equals("1")) {
		pathTxt.setText("");
		clickPos = intList.get(intList.size() - 1);
		servers();
		} else {
		willClickNetDir = false;
		showServerFolderList(workFolderList
		.get(intList.get(intList.size() - 1))
		.get(NICK_NAME).toString());
		pathTxt.setText(serverName);
		}
		} else {
		fileL.clear();
		if (currentFileString.equals(ISO_PATH)) {
		getFiles(prevPath);
		} else {
		getFiles(parentPath);
		}
		}
		if (intList.size() > 0) {
		int pos = intList.size() - 1;
		if (listView.getVisibility() == View.VISIBLE) {
		clickPos = intList.get(pos);
		listView.setSelection(clickPos);
		intList.remove(pos);
		} else if (gridView.getVisibility() == View.VISIBLE) {
		clickPos = intList.get(pos);
		intList.remove(pos);
		}
		}
		} else {
		servers();
		if (intList.size() > 0) {
		int pos = intList.size() - 1;
		if (listView.getVisibility() == View.VISIBLE) {
		clickPos = intList.get(pos);
		listView.setSelection(clickPos);
		intList.remove(pos);
		}

		}
		}
		}

		return true;

		case KeyEvent.KEYCODE_SEARCH: // search
		if (!pathTxt.getText().toString().equals("")
		&& !pathTxt.getText().toString().equals(serverName)) {
		searchFileDialog();
		}
		return true;
		case KeyEvent.KEYCODE_INFO: // info
		if (!pathTxt.getText().toString().equals("")
		&& !pathTxt.getText().toString().equals(serverName)) {
		FileUtil util = new FileUtil(this);
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

	void searchServers() {
		timer = new Timer();
		waitLong = 0;
		totalLong = 120 * 1000;
		pgsDlg = new ProgressDialog(NFSActivity.this);
		pgsDlg.setTitle(R.string.wait_str);
		pgsDlg.setMessage(getString(R.string.search_str));
		pgsDlg.show();
		timer.schedule(new TimerTask() {
		public void run() {

		if (pgsDlg != null && pgsDlg.isShowing()) {
		waitLong += 3000;
		if (waitLong >= totalLong) {
		strWorkgrpups = "error";
		handler.sendEmptyMessage(END_SEARCH);
		return;
		}

		if (!"".equals(strWorkgrpups) && null != strWorkgrpups) {
		if (strWorkgrpups.toLowerCase().equals("error")) {
		handler.sendEmptyMessage(NET_ERROR);
		} else {
		handler.sendEmptyMessage(NET_NORMAL);
		}

		return;
		}
		} else {
		return;
		}
		}

		}, 1000, 3000);

		new Thread(new Runnable() {

		public void run() {
		Log.d(TAG, "2508::call_getWorkgroups()");
		if (strWorkgrpups == null || "".equals(strWorkgrpups)
		|| strWorkgrpups.toLowerCase().equals("error")) {
		Log.d(TAG, "2511::call_getWorkgroups()");
		strWorkgrpups = nfsClient.getWorkgroups();
		if (strWorkgrpups.equals(""))
		handler.sendEmptyMessage(NET_ERROR);
		}
		}
		}).start();

	}

	private void updateServerListAfterParse(String workgroup) {
		List<HashMap<String, Object>> groups = new ArrayList<HashMap<String, Object>>(
		1);
		if (!workgroup.equals("")) {
		String[] workgroups = workgroup.split("\\|");
		HashMap<String, Object> detailMap;
		for (int i = 0; i < workgroups.length; i++) {
		detailMap = new HashMap<String, Object>(1);
		String[] details = workgroups[i].split(":");
		String trimStr = details[0].trim();
		String pcName = trimStr.substring(
		trimStr.lastIndexOf("\\") + 1, trimStr.length());
		detailMap.put(NICK_NAME, pcName);

		if (details.length == 2) {
		detailMap.put(SERVER_INTRO, details[1].trim());

		} else if (details.length == 1) {
		detailMap.put(SERVER_INTRO, "No Details");
		}
		detailMap.put(IMAGE, R.drawable.mainfile);
		groups.add(detailMap);
		}
		}
		listSearchedServers(groups);

	}

	AlertDialog serverDialog;

	NFSServerAdapter nfsAdapter;

	private void listSearchedServers(List<HashMap<String, Object>> groups) {

		nfsAdapter = new NFSServerAdapter(this, groups, 0);
		listView.setAdapter(nfsAdapter);
		listView.setSelection(clickPos);
		listView.setOnItemClickListener(ItemClickListener);
		listView.setOnItemSelectedListener(itemSelect);
	}

	static class NFSServerAdapter extends BaseAdapter {

		Context context;

		List<HashMap<String, Object>> groups;

		int flag;

		public NFSServerAdapter(Context context,
		List<HashMap<String, Object>> groups, int flag) {
		this.context = context;
		this.groups = groups;
		this.flag = flag;
		}

		public int getCount() {
		return groups.size();
		}

		public Object getItem(int position) {
		return position;
		}

		public long getItemId(int position) {
		return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
		LayoutInflater inflater = (LayoutInflater) context
		.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		if (flag == 0) {
		RelativeLayout layout = (RelativeLayout) inflater.inflate(
		R.layout.file_row, null);
		ImageView img = (ImageView) layout
		.findViewById(R.id.image_Icon);
		TextView text = (TextView) layout.findViewById(R.id.text);
		text.setText(groups.get(position).get(NICK_NAME).toString());
		img.setImageResource(R.drawable.mainfile);
		return layout;
		} else {
		CheckedTextView chktv = (CheckedTextView) inflater.inflate(
		R.layout.samba_server_checked_text_view, null);
		String textSamba = (String) groups.get(position).get(NICK_NAME);
		if (chktv.getWidth() < chktv.getPaint().measureText(textSamba)) {
		chktv.setEllipsize(TruncateAt.MARQUEE);
		chktv.setMarqueeRepeatLimit(-1);
		chktv.setHorizontallyScrolling(true);
		}
		chktv.setText(textSamba);
		return chktv;
		}
		}
	}

	class DialogClickListener implements DialogInterface.OnClickListener {

		List<Map<String, Object>> mainList;

		String svrName;

		public DialogClickListener() {
		}

		public DialogClickListener(String serverName) {
		this.svrName = serverName;
		}

		public DialogClickListener(Context context,
		List<Map<String, Object>> list) {
		this(context, null, list);
		}

		public DialogClickListener(Context context,
		List<HashMap<String, Object>> groups,
		List<Map<String, Object>> mainList) {
		this.mainList = mainList;
		}

		public void onClick(final DialogInterface dialog, int which) {
		if (nServerLogonDlg == dialog) {
		if (DialogInterface.BUTTON_POSITIVE == which) {
		EditText edtServerAccount = (EditText) ((AlertDialog) dialog)
		.findViewById(R.id.edtServerAccount);
		EditText edtServerPassword = (EditText) ((AlertDialog) dialog)
		.findViewById(R.id.edtServerPassword);
		showServerFolderList(svrName);
		return;
		}
		if (DialogInterface.BUTTON_NEGATIVE == which) {
		dialog.dismiss();
		return;
		}

		}

		if (attrServerDeletingDialog == dialog) {
		if (DialogInterface.BUTTON_POSITIVE == which) {

		AlertDialog confirmDialog = new AlertDialog.Builder(
		NFSActivity.this)
		.setIcon(R.drawable.alert)
		.setTitle(R.string.del_server_dlg_title)
		.setMessage(R.string.comfirm_delete_hint)
		.setPositiveButton(R.string.ok,
		new DialogInterface.OnClickListener() {

		public void onClick(
		DialogInterface confirmDialog,
		int which) {
		doDeleteSeletedServers(dialog,
		which, mainList);
		}
		})
		.setNegativeButton(R.string.cancel,
		new DialogInterface.OnClickListener() {

		public void onClick(
		DialogInterface confirmDialog,
		int which) {
		dialog.dismiss();
		}
		}).create();
		confirmDialog.show();
		return;
		}
		if (DialogInterface.BUTTON_NEGATIVE == which) {
		dialog.dismiss();
		return;
		}
		}
		}
	}

	private void setValues(String ip, String workPath, String mountPoint,
		int isMounted) {

		ContentValues values = new ContentValues();
		values.put(SERVER_IP, ip);
		values.put(WORK_PATH, workPath);
		sqlite.insert(TABLE_NAME, ID, values);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(IMAGE, R.drawable.folder_file);
		String nickName = "//" + ip + ":" + workPath;
		map.put(NICK_NAME, nickName);
		map.put(SHORT, 1);
		map.put(MOUNT_POINT, mountPoint);
		map.put(SERVER_IP, ip);
		map.put(WORK_PATH, workPath);
		list.add(map);
	}

	private void doDeleteSeletedServers(DialogInterface dialog, int which,
		List<Map<String, Object>> mainList) {
		ListView lvServerList = (ListView) ((AlertDialog) dialog)
		.findViewById(R.id.lvSambaServer);
		lvServerList.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
		lvServerList.setItemsCanFocus(true);
		lvServerList.setClickable(true);
		List<String> deletedServerNames = new ArrayList<String>(1);
		int count = lvServerList.getCount();
		int flag = 0;
		boolean foo = true;
		String failedName = null;

		for (int i = 0; i < count; i++) {
		if (lvServerList.getCheckedItemPositions().get(i)) {
		String svrName = mainList.get(i + 1).get(NICK_NAME).toString();

		int index = svrName.indexOf(":", 2);

		String serverip = svrName.substring(2, index);
		String workpath = svrName
		.substring(index + 1, svrName.length());
		cursor = sqlite.query(TABLE_NAME, new String[] { ID },
		SERVER_IP + "=? and " + WORK_PATH + "=?", new String[] {
		serverip, workpath }, null, null, null);
		int id = 0;
		while (cursor.moveToNext()) {
		id = cursor.getInt(cursor.getColumnIndex(ID));

		StringBuilder builder = new StringBuilder(serverip);
		builder.append(":").append(workpath);
		String returnStr = nfsClient.getMountPoint(builder
		.toString().replace("\\", "/"));
		if (!returnStr.equals("ERROR")) {
		flag = nfsClient.unmount(returnStr);
		}

		if (flag != 0) {
		failedName = mainList.get(i + 1).get(NICK_NAME)
		.toString();
		foo = false;
		break;
		}
		}
		if (flag == 0) {
		deletedServerNames.add(svrName);
		int deleteNums = sqlite.delete(TABLE_NAME, ID + "=?",
		new String[] { String.valueOf(id) });
		}
		cursor.close();
		if (flag != 0) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.pos_delete_failed, failedName));
		}
		}
		}// end for
		for (int j = 0; j < deletedServerNames.size(); j++) {
		for (int k = 1; k < mainList.size(); k++) {
		if (deletedServerNames.get(j).equals(
		mainList.get(k).get(NICK_NAME).toString())) {
		mainList.remove(k);
		break;
		}
		}
		}
        if (deletedServerNames.size() == 0) {
		FileUtil.showToast(NFSActivity.this, getString(R.string.delete_none));
		}
		else if (foo) {
		FileUtil.showToast(NFSActivity.this, getString(R.string.delete_v));
		}
		servers();
	}

	private List<Map<String, Object>> parse2DetailDirectories(String detailGroup) {
		Log.d(TAG, "2853::detailGroup=" + detailGroup);
		List<Map<String, Object>> detailInfos = new ArrayList<Map<String, Object>>(
		1);
		String[] details = detailGroup.split("\\|");
		HashMap<String, Object> map;
		String[] ipDetail = details[0].split(":");

		for (int i = 1; i < details.length; i++) {
		map = new HashMap<String, Object>(1);
		map.put(SERVER_IP, ipDetail[1]);
		String[] dirDetails = details[i].split(":");
		String dir = dirDetails[0].trim();
		String dirName = dir.substring(dir.lastIndexOf("\\") + 1,
		dir.length());
		map.put(WORK_PATH, dirName);
		map.put(MOUNT_POINT, "");
		Log.d(TAG, "2893::map=" + map);
		detailInfos.add(map);
		}
		Log.d(TAG, "2896::detailInfos=" + detailInfos);
		return detailInfos;
	}

	class ButtonSetOnNewShareDirListener implements View.OnClickListener {

		Dialog newShareDialog;

		Map<String, Object> clickedServerDirItem;

		int clickPosition;

		public ButtonSetOnNewShareDirListener(Context context,
		Dialog newShareDialog, Map<String, Object> clickedServerItem,
		Map<String, Object> clickedNetServer, int clickPosition) {
		this.newShareDialog = newShareDialog;
		this.clickedServerDirItem = clickedServerItem;
		this.clickPosition = clickPosition;
		}

		public void onClick(View v) {

		if (v.getId() == R.id.myOkBut) {
		Userserver = editServer.getText().toString();
		folder_position = position.getText().toString();

		if (null == Userserver || Userserver.trim().equals("")) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.input_server));
		return;
		}
		if (null == folder_position || "".equals(folder_position)) {
		FileUtil.showToast(NFSActivity.this,
		getString(R.string.work_path_null));
		return;
		}
		progress = new ProgressDialog(NFSActivity.this);
		progress.setOnKeyListener(new OnKeyListener() {
		public boolean onKey(DialogInterface arg0, int arg1,
		KeyEvent arg2) {
		return true;
		}
		});
		progress.show();
		MountThread thread = new MountThread(MOUNT_RESULT_4);
		thread.start();
		return;
		}
		if (v.getId() == R.id.myCancelBut) {
		newShareDialog.dismiss();
		return;
		}

		}
	}

	public ListView getListView() {
		return listView;
	}

	protected void onDestroy() {
		if (cursor != null) {
		cursor.close();
		sqlite.close();
		}
		super.onDestroy();
	}

	private View inflateLayout(Context context, int resId) {
		LayoutInflater inflater = (LayoutInflater) context
		.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View view = inflater.inflate(resId, null);
		return view;
	}

	private List<HashMap<String, Object>> convertMapToHashMap(
		List<Map<String, Object>> listMap) {
		List<HashMap<String, Object>> lst = new ArrayList<HashMap<String, Object>>(
		1);
		Log.d(TAG, "3126::convertMapToHashMap()_listMap.size=" + listMap);
		HashMap<String, Object> map = null;
		for (int i = 1; i < listMap.size(); i++) {
		map = (HashMap<String, Object>) listMap.get(i);
		lst.add(map);
		}
		return lst;
	}

	private void highlightLastItem(ListView lvList, int dataSize) {
		lvList.smoothScrollToPosition(dataSize - 1);
		lvList.setSelection(dataSize - 1);
	}

	public int getFileFlag(String currentPath, String prePath) {
		if (currentPath.length() > prePath.length()) {
		prePath = currentPath;
		return 1;
		} else if (currentPath.length() < prePath.length()) {
		prePath = currentPath;
		return -1;
		} else {
		return 0;
		}
	}

	private void addShortCut() {
		setValues(Userserver, folder_position, " ", 1);
		FileUtil.showToast(this, getString(R.string.add_short_succ));
		cursor.close();
	}

	private boolean hasTheShortCut() {
		String nick = "//" + Userserver + ":" + folder_position;
		for (int i = 1; i < list.size(); i++) {
		if (list.get(i).containsValue(nick)) {
		return true;
		}
		}
		return false;
	}

	class MyThread extends MyThreadBase {

		public void run() {
		if (getFlag()) {
		setFlag(false);
		synchronized (lock) {
		util = new FileUtil(NFSActivity.this, filterCount,
		arrayDir, arrayFile, currentFileString);
		}
		} else {
		util = new FileUtil(NFSActivity.this, filterCount,
		currentFileString);
		}

		listFile = util.getFiles(sortCount, "net");

		if (getStopRun()) {
		if (keyBack) {
		if (pathTxt.getText().toString()
		.substring(serverName.length()).equals(ISO_PATH)) {
		currentFileString = util.currentFilePath;
		}
		}
		} else {
		currentFileString = util.currentFilePath;
		handler.sendEmptyMessage(UPDATE_LIST);
		}
		}

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

	public String getServerName() {
		return serverName;
	}

	class MountThread extends Thread {

		private int mountFlag = 0;

		public MountThread(int mountFlag) {
		this.mountFlag = mountFlag;
		}

		public void run() {
		switch (mountFlag) {
		case MOUNT_RESULT_1:
		case MOUNT_RESULT_3:
		case MOUNT_RESULT_4:
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		result = nfsClient.mount(builder.toString());
		handler.sendEmptyMessage(mountFlag);
		break;
		case MOUNT_RESULT_2:
		builder = new StringBuilder(prevServer);
		builder.append(":").append(prevFolder);
		String returnStr = nfsClient.getMountPoint(builder.toString()
		.replace("\\", "/"));
		if (returnStr.equals("ERROR")) {
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		result = nfsClient.mount(builder.toString());
		} else {
		int code = nfsClient.unmount(returnStr);
		builder = new StringBuilder(Userserver);
		builder.append(":").append(folder_position);
		result = nfsClient.mount(builder.toString());
		}
		handler.sendEmptyMessage(MOUNT_RESULT_2);
		break;
		}
		}
	}

	protected void onResume() {
		super.onResume();
		if (!currentFileString.equals("")
		&& preCurrentPath.equals(currentFileString)) {
		updateList(true);
		}
	}
	protected void preview(File file){
	      super.preview(file);
	  }
}
