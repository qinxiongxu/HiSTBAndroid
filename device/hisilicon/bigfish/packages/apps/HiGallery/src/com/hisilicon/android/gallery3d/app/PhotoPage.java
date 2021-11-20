/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.hisilicon.android.gallery3d.app;

import java.io.File;

import android.app.ActionBar;
import android.app.ActionBar.OnMenuVisibilityListener;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.widget.ShareActionProvider;
import android.widget.TextView;
import android.widget.Toast;

import com.hisilicon.android.gallery3d.R;
import com.hisilicon.android.gallery3d.data.DataManager;
import com.hisilicon.android.gallery3d.data.MediaDetails;
import com.hisilicon.android.gallery3d.data.MediaItem;
import com.hisilicon.android.gallery3d.data.MediaObject;
import com.hisilicon.android.gallery3d.data.MediaSet;
import com.hisilicon.android.gallery3d.data.MtpDevice;
import com.hisilicon.android.gallery3d.data.Path;
import com.hisilicon.android.gallery3d.ui.DetailsHelper;
import com.hisilicon.android.gallery3d.ui.FilmStripView;
import com.hisilicon.android.gallery3d.ui.GLCanvas;
import com.hisilicon.android.gallery3d.ui.GLView;
import com.hisilicon.android.gallery3d.ui.MenuExecutor;
import com.hisilicon.android.gallery3d.ui.PhotoView;
import com.hisilicon.android.gallery3d.ui.PositionRepository;
import com.hisilicon.android.gallery3d.ui.SelectionManager;
import com.hisilicon.android.gallery3d.ui.SynchronizedHandler;
import com.hisilicon.android.gallery3d.ui.UserInteractionListener;
import com.hisilicon.android.gallery3d.ui.DetailsHelper.CloseListener;
import com.hisilicon.android.gallery3d.ui.DetailsHelper.DetailsSource;
import com.hisilicon.android.gallery3d.ui.PositionRepository.Position;
import com.hisilicon.android.gallery3d.util.GalleryUtils;

import android.widget.Switch;

public class PhotoPage extends ActivityState implements
        PhotoView.PhotoTapListener, FilmStripView.Listener,
        UserInteractionListener {
    private static final String TAG = "PhotoPage";

    private static final int MSG_HIDE_BARS = 1;

    private static final int HIDE_BARS_TIMEOUT = 3500;

    private static final int REQUEST_SLIDESHOW = 1;
    private static final int REQUEST_CROP = 2;
    private static final int REQUEST_CROP_PICASA = 3;

    public static final String KEY_MEDIA_SET_PATH = "media-set-path";
    public static final String KEY_MEDIA_ITEM_PATH = "media-item-path";
    public static final String KEY_INDEX_HINT = "index-hint";

    private GalleryApp mApplication;
    private SelectionManager mSelectionManager;

    private PhotoView mPhotoView;
    private PhotoPage.Model mModel;
    private FilmStripView mFilmStripView;
    private DetailsHelper mDetailsHelper;
    private boolean mShowDetails;
    private Path mPendingSharePath;

    // mMediaSet could be null if there is no KEY_MEDIA_SET_PATH supplied.
    // E.g., viewing a photo in gmail attachment
    private MediaSet mMediaSet;
    private Menu mMenu;

    private final Intent mResultIntent = new Intent();
    private int mCurrentIndex = 0;
    private Handler mHandler;
    private boolean mShowBars = true;
    // private ActionBar mActionBar;
    private MyMenuVisibilityListener mMenuVisibilityListener;
    private boolean mIsMenuVisible;
    private boolean mIsInteracting;
    private MediaItem mCurrentPhoto = null;
    private MenuExecutor mMenuExecutor;
    private boolean mIsActive;
    private ShareActionProvider mShareActionProvider;
    private Switch mAutoMusicSwitch;
    private PhotoDataAdapter pda;
    private boolean fromMusic = false;

    public static interface Model extends PhotoView.Model {
        public void resume();

        public void pause();

        public boolean isEmpty();

        public MediaItem getCurrentMediaItem();

        public int getCurrentIndex();

        public void setCurrentPhoto(Path path, int indexHint);
    }

    private class MyMenuVisibilityListener implements OnMenuVisibilityListener {
        public void onMenuVisibilityChanged(boolean isVisible) {
            mIsMenuVisible = isVisible;
            refreshHidingMessage();
        }
    }

    private final GLView mRootPane = new GLView() {

        @Override
        protected void renderBackground(GLCanvas view) {
            view.clearBuffer();
        }

        @Override
        protected void onLayout(boolean changed, int left, int top, int right,
                int bottom) {
            mPhotoView.layout(0, 0, right - left, bottom - top);
            PositionRepository.getInstance(mActivity).setOffset(0, 0);
            int filmStripHeight = 0;
            if (mFilmStripView != null) {
                mFilmStripView.measure(MeasureSpec.makeMeasureSpec(
                        right - left, MeasureSpec.EXACTLY),
                        MeasureSpec.UNSPECIFIED);
                filmStripHeight = mFilmStripView.getMeasuredHeight();
                mFilmStripView.layout(0, bottom - top - filmStripHeight, right
                        - left, bottom - top);
            }
            //if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom"))
                mShowDetails = false;
			//if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom"))
            //   mShowDetails = true;
            if (mShowDetails) {
                mDetailsHelper.layout(left,
                        GalleryActionBar.getHeight((Activity) mActivity),
                        right, bottom);
            }
        }
    };

    private void initFilmStripView() {
        Config.PhotoPage config = Config.PhotoPage.get((Context) mActivity);
        mFilmStripView = new FilmStripView(mActivity, mMediaSet,
                config.filmstripTopMargin, config.filmstripMidMargin,
                config.filmstripBottomMargin, config.filmstripContentSize,
                config.filmstripThumbSize, config.filmstripBarSize,
                config.filmstripGripSize, config.filmstripGripWidth);
        mRootPane.addComponent(mFilmStripView);
        mFilmStripView.setListener(this);
        mFilmStripView.setUserInteractionListener(this);
        mPhotoView.setUserInteractionListener(this);
        mFilmStripView.setFocusIndex(mCurrentIndex);
        mFilmStripView.setStartIndex(mCurrentIndex);
        mRootPane.requestLayout();
        if (mIsActive)
            mFilmStripView.resume();
        if (!mShowBars)
            mFilmStripView.setVisibility(GLView.INVISIBLE);
    }

    @Override
    public void onCreate(Bundle data, Bundle restoreState) {
        // mActionBar = ((Activity) mActivity).getActionBar();
        mSelectionManager = new SelectionManager(mActivity, false);
        mMenuExecutor = new MenuExecutor(mActivity, mSelectionManager);

        mPhotoView = new PhotoView(mActivity);
        mPhotoView.setPhotoTapListener(this);
        mRootPane.addComponent(mPhotoView);
        mApplication = (GalleryApp) ((Activity) mActivity).getApplication();
        //if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom"))
        //    showToast();
        // Add background music of the switch
        mAutoMusicSwitch = new Switch(mActivity.getAndroidContext());
        String setPathString = data.getString(KEY_MEDIA_SET_PATH);
        String filePathString = data.getString("photoFilePath");
        if (filePathString==null || filePathString.equals("")) {
            onDestroy();
        }
        Uri itemUri = Uri.fromFile(new File(filePathString));
        Path itemPath = mActivity.getDataManager().findPathByUri(itemUri);
        if (setPathString != null) {
            mCurrentIndex = data.getInt(KEY_INDEX_HINT, 0);
            mMediaSet = (MediaSet) mActivity.getDataManager().getMediaObject(
                    setPathString);
            if (mMediaSet == null) {
                Log.w(TAG, "failed to restore " + setPathString);
            }
            pda = new PhotoDataAdapter(mActivity, mPhotoView, mMediaSet,
                    itemPath, mCurrentIndex);
            mModel = pda;
            mPhotoView.setModel(mModel,filePathString);

            mResultIntent.putExtra(KEY_INDEX_HINT, mCurrentIndex);
            setStateResult(Activity.RESULT_OK, mResultIntent);

            pda.setDataListener(new PhotoDataAdapter.DataListener() {

                @Override
                public void onPhotoChanged(int index, Path item) {
                    if (mFilmStripView != null)
                        mFilmStripView.setFocusIndex(index);
                    mCurrentIndex = index;
                    int mediaCount = mApplication.getMediaFileListService()
                            .getSize();
                    GLView.mCurrrentPhotoSlotIndex = mCurrentIndex % mediaCount;
                    mResultIntent.putExtra(KEY_INDEX_HINT, index);
                    if (item != null) {
                        mResultIntent.putExtra(KEY_MEDIA_ITEM_PATH,
                                item.toString());
                        MediaItem photo = mModel.getCurrentMediaItem();
                        if (photo != null)
                            updateCurrentPhoto(photo);
                    } else {
                        mResultIntent.removeExtra(KEY_MEDIA_ITEM_PATH);
                    }
                    setStateResult(Activity.RESULT_OK, mResultIntent);
                }

                @Override
                public void onLoadingFinished() {
                    GalleryUtils.setSpinnerVisibility((Activity) mActivity,
                            false);
                    int curIndex = mModel.getCurrentIndex();
                    mCurrentIndex = curIndex;
                    GLView.mCurrrentPhotoSlotIndex = mCurrentIndex;
                    if (!mModel.isEmpty()) {
                        MediaItem photo = mModel.getCurrentMediaItem();
                        if (photo != null)
                            updateCurrentPhoto(photo);
                    } else if (mIsActive) {
                        mActivity.getStateManager().finishState(PhotoPage.this);
                    }
                }

                @Override
                public void onLoadingStarted() {
                    GalleryUtils.setSpinnerVisibility((Activity) mActivity,
                            true);
                }

                @Override
                public void onPhotoAvailable(long version, boolean fullImage) {
                    if (mFilmStripView == null)
                    {
                        if(SystemProperties.get("ro.product.target").equals("demo"))
                            initFilmStripView();
                    }
                }
            });
        } else {
            // Get default media set by the URI
            MediaItem mediaItem = (MediaItem) mActivity.getDataManager()
                    .getMediaObject(itemPath);
            mModel = new SinglePhotoDataAdapter(mActivity, mPhotoView,
                    mediaItem);
            mPhotoView.setModel(mModel,mModel.getCurrentMediaItem().getPath().toString());
            updateCurrentPhoto(mediaItem);
        }

        mHandler = new SynchronizedHandler(mActivity.getGLRoot()) {
            @Override
            public void handleMessage(Message message) {
                switch (message.what) {
                case MSG_HIDE_BARS: {
                    hideBars();
                    break;
                }
                default:
                    throw new AssertionError(message.what);
                }
            }
        };

        // start the opening animation
        mPhotoView.setOpenedItem(itemPath);
        // Background music switch
        // mActionBar.setDisplayOptions(ActionBar.DISPLAY_SHOW_CUSTOM,
        // ActionBar.DISPLAY_SHOW_CUSTOM);
        // mActionBar.setCustomView(mAutoMusicSwitch, new
        // ActionBar.LayoutParams(
        // ActionBar.LayoutParams.WRAP_CONTENT,
        // ActionBar.LayoutParams.WRAP_CONTENT, Gravity.CENTER_VERTICAL
        // | Gravity.RIGHT));
        mAutoMusicSwitch.setChecked(true);
        mAutoMusicSwitch.setVisibility(View.VISIBLE);
        mAutoMusicSwitch.setTextOff(mActivity.getResources().getText(
                R.string.close_music));
        mAutoMusicSwitch.setTextOn(mActivity.getResources().getText(
                R.string.open_music));
        // end
        WindowManager.LayoutParams params = ((Activity) mActivity).getWindow()
                .getAttributes();
        params.systemUiVisibility = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION;
        ((Activity) mActivity).getWindow().setAttributes(params);
        fromMusic = data.getBoolean("fromMusic",false);
        if((SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom")||SystemProperties.get("ro.product.target").equals("demo"))&&!fromMusic)
        {
            playBackgroundMusic();
        }
    }

    private void playBackgroundMusic(){
        Intent i = new Intent("com.hisilicon.android.music.musicservicecommand");
        i.putExtra("command", "pause");
        mActivity.getAndroidContext().sendBroadcast(i);
        Intent service = new Intent(mActivity.getAndroidContext(),
             BackgroundMusicService.class);
        mActivity.getAndroidContext().startService(service);
    }

    private void updateShareURI(Path path) {
        if (mShareActionProvider != null) {
            DataManager manager = mActivity.getDataManager();
            int type = manager.getMediaType(path);
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType(MenuExecutor.getMimeType(type));
            intent.putExtra(Intent.EXTRA_STREAM, manager.getContentUri(path));
            mShareActionProvider.setShareIntent(intent);
            mPendingSharePath = null;
        } else {
            // This happens when ActionBar is not created yet.
            mPendingSharePath = path;
        }
    }

    private void setTitle(String title) {
        if (title == null)
            return;
        // boolean showTitle = mActivity.getAndroidContext().getResources()
        // .getBoolean(R.bool.show_action_bar_title);
        // // if (showTitle)
        // mActionBar.setTitle(title);
        // else
        // mActionBar.setTitle("");
    }

    private void updateCurrentPhoto(MediaItem photo) {
        if (mCurrentPhoto == photo)
            return;
        mCurrentPhoto = photo;
        if (mCurrentPhoto == null)
            return;
        updateMenuOperations();
        if (mShowDetails) {
            mDetailsHelper.reloadDetails(mModel.getCurrentIndex());
        }
        setTitle(photo.getName());
        mPhotoView
                .showVideoPlayIcon(photo.getMediaType() == MediaObject.MEDIA_TYPE_VIDEO);

        updateShareURI(photo.getPath());
    }

    private void updateMenuOperations() {
        // if (mMenu == null) return;
        // MenuItem item = mMenu.findItem(R.id.action_slideshow);
        // if (item != null) {
        // item.setVisible(canDoSlideShow());
        // }
        // if (mCurrentPhoto == null) return;
        // int supportedOperations = mCurrentPhoto.getSupportedOperations();
        // if (!GalleryUtils.isEditorAvailable((Context) mActivity, "image/*"))
        // {
        // supportedOperations &= ~MediaObject.SUPPORT_EDIT;
        // }
        //
        // MenuExecutor.updateMenuOperation(mMenu, supportedOperations);
    }

    private boolean canDoSlideShow() {
        if (mMediaSet == null || mCurrentPhoto == null) {
            return false;
        }
        if (mCurrentPhoto.getMediaType() != MediaObject.MEDIA_TYPE_IMAGE) {
            return false;
        }
        if (mMediaSet instanceof MtpDevice) {
            return false;
        }
        return true;
    }

    private void showBars() {
        if (mShowBars)
            return;
        mShowBars = true;
        // mActionBar.show();
        // WindowManager.LayoutParams params = ((Activity)
        // mActivity).getWindow()
        // .getAttributes();
        // params.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE;
        // ((Activity) mActivity).getWindow().setAttributes(params);

        // mActionBar.hide();
        // WindowManager.LayoutParams params = ((Activity)
        // mActivity).getWindow()
        // .getAttributes();
        // params.systemUiVisibility = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION;
        // ((Activity) mActivity).getWindow().setAttributes(params);
        if (mFilmStripView != null) {
            mFilmStripView.show();
        }
    }

    private void hideBars() {
        if (!mShowBars)
            return;
        mShowBars = false;
        // mActionBar.hide();
        // WindowManager.LayoutParams params = ((Activity)
        // mActivity).getWindow()
        // .getAttributes();
        // params.systemUiVisibility = View.SYSTEM_UI_FLAG_HIDE_NAVIGATION;
        // ((Activity) mActivity).getWindow().setAttributes(params);
        if (mFilmStripView != null) {
            mFilmStripView.hide();
        }
    }

    private void refreshHidingMessage() {
        mHandler.removeMessages(MSG_HIDE_BARS);
        if (!mIsMenuVisible && !mIsInteracting) {
            mHandler.sendEmptyMessageDelayed(MSG_HIDE_BARS, HIDE_BARS_TIMEOUT);
        }
    }

    @Override
    public void onUserInteraction() {
        showBars();
        refreshHidingMessage();
    }

    public void onUserInteractionTap() {
        if (mShowBars) {
            hideBars();
            mHandler.removeMessages(MSG_HIDE_BARS);
        } else {
            showBars();
            refreshHidingMessage();
        }
    }

    @Override
    public void onUserInteractionBegin() {
        showBars();
        mIsInteracting = true;
        refreshHidingMessage();
    }

    @Override
    public void onUserInteractionEnd() {
        mIsInteracting = false;

        // This function could be called from GL thread (in SlotView.render)
        // and post to the main thread. So, it could be executed while the
        // activity is paused.
        if (mIsActive)
            refreshHidingMessage();
    }

    @Override
    protected void onBackPressed() {
        // mAutoMusicSwitch.setVisibility(View.INVISIBLE);
        if (mShowDetails) {
            hideDetails();
        } else {
            PositionRepository repository = PositionRepository
                    .getInstance(mActivity);
            repository.clear();
            if (mCurrentPhoto != null) {
                Position position = new Position();
                position.x = mRootPane.getWidth() / 2;
                position.y = mRootPane.getHeight() / 2;
                position.z = -1000;
                repository.putPosition(Long.valueOf(System
                        .identityHashCode(mCurrentPhoto.getPath())), position);
            }
            super.onBackPressed();
        }
    }

    @Override
    protected boolean onCreateActionBar(Menu menu) {
        MenuInflater inflater = ((Activity) mActivity).getMenuInflater();
        inflater.inflate(R.menu.photo, menu);
        mShareActionProvider = GalleryActionBar
                .initializeShareActionProvider(menu);
        if (mPendingSharePath != null)
            updateShareURI(mPendingSharePath);
        mMenu = menu;
        mShowBars = true;
        updateMenuOperations();
        return true;
    }

    @Override
    public void actionSlideshow() {
        MediaItem current = mModel.getCurrentMediaItem();
        if (current == null) {
            // item is not ready, ignore
            return;
        }
        int currentIndex = mModel.getCurrentIndex();
        Path path = current.getPath();
        Bundle data = new Bundle();
        data.putString(SlideshowPage.KEY_SET_PATH, mMediaSet.getPath()
                .toString());
        data.putString(SlideshowPage.KEY_ITEM_PATH, path.toString());
        data.putInt(SlideshowPage.KEY_PHOTO_INDEX, currentIndex);
        data.putBoolean(SlideshowPage.KEY_REPEAT, true);

        String fPath = path.toString();
        String type = fPath.substring(fPath.lastIndexOf(".") + 1);
        if ("gif".equalsIgnoreCase(type)) {
            DataManager manager = mActivity.getDataManager();
            GifUtils.playGif((Context) mActivity, manager.getContentUri(path));
        } else {
            if(SystemProperties.get("ro.product.target").equals("telecom")||SystemProperties.get("ro.product.target").equals("unicom")||
                  SystemProperties.get("ro.product.target").equals("demo"))
            {
                Intent intent = new Intent();
                intent.setClass(mActivity.getAndroidContext(), HiAnimationActivity.class);
                intent.putExtras(data);
                intent.putExtra("fromMusic",fromMusic);
                Gallery.GalleryActivity.startActivity(intent);
            }
            else
            {//use opengl_es
                mActivity.getStateManager().startStateForResult(SlideshowPage.class,
                    REQUEST_SLIDESHOW, data);
            }
        }
    }

    @Override
    protected boolean onItemSelected(MenuItem item) {
        MediaItem current = mModel.getCurrentMediaItem();

        if (current == null) {
            // item is not ready, ignore
            return true;
        }

        int currentIndex = mModel.getCurrentIndex();
        Path path = current.getPath();

        DataManager manager = mActivity.getDataManager();
        int action = item.getItemId();
        switch (action) {
        case R.id.action_slideshow: {
            // if (mAutoMusicSwitch.isChecked()) {
            // // Tell the music playback service to pause
            // Intent i = new Intent(
            // "com.hisilicon.android.music.musicservicecommand");
            // i.putExtra("command", "pause");
            // mActivity.getAndroidContext().sendBroadcast(i);o
            // }
            // Play the background music
            // Intent service = new Intent(mActivity.getAndroidContext(),
            // BackgroundMusicService.class);
            Bundle data = new Bundle();
            data.putString(SlideshowPage.KEY_SET_PATH, mMediaSet.getPath()
                    .toString());
            data.putString(SlideshowPage.KEY_ITEM_PATH, path.toString());
            data.putInt(SlideshowPage.KEY_PHOTO_INDEX, currentIndex);
            data.putBoolean(SlideshowPage.KEY_REPEAT, true);
            // data.putParcelable("bgMusicService", service);
            mActivity.getStateManager().startStateForResult(
                    SlideshowPage.class, REQUEST_SLIDESHOW, data);

            // if (mAutoMusicSwitch.isChecked()) {
            // mActivity.getAndroidContext().startService(service);
            // } else {
            // mActivity.getAndroidContext().stopService(service);
            // }
            return true;
        }
            // case R.id.action_crop: {
            // Activity activity = (Activity) mActivity;
            // Intent intent = new Intent(CropImage.CROP_ACTION);
            // intent.setClass(activity, CropImage.class);
            // intent.setData(manager.getContentUri(path));
            // activity.startActivityForResult(intent,
            // PicasaSource.isPicasaImage(current)
            // ? REQUEST_CROP_PICASA
            // : REQUEST_CROP);
            // return true;
            // }
            // case R.id.action_details: {
            // if (mShowDetails) {
            // hideDetails();
            // } else {
            // showDetails(currentIndex);
            // }
            // return true;
            // }
            // case R.id.action_setas:
            // case R.id.action_confirm_delete:
            // case R.id.action_rotate_ccw:
            // case R.id.action_rotate_cw:
            // case R.id.action_show_on_map:
            // case R.id.action_edit:
            // mSelectionManager.deSelectAll();
            // mSelectionManager.toggle(path);
            // mMenuExecutor.onMenuClicked(item, null);
            // clearAlbumFocus();
            // return true;
            // case R.id.action_import:
            // mSelectionManager.deSelectAll();
            // mSelectionManager.toggle(path);
            // mMenuExecutor.onMenuClicked(item,
            // new ImportCompleteListener(mActivity));
            // return true;
        default:
            return false;
        }
    }

    private void hideDetails() {
        mShowDetails = false;
        mDetailsHelper.hide();
    }

    private void showDetails(int index) {
        mShowDetails = true;
        if (mDetailsHelper == null) {
            mDetailsHelper = new DetailsHelper(mActivity, mRootPane,
                    new MyDetailsSource());
            mDetailsHelper.setCloseListener(new CloseListener() {
                public void onClose() {
                    hideDetails();
                }
            });
        }
        mDetailsHelper.reloadDetails(index);
        mDetailsHelper.show();
    }

    public void onSingleTapUp(int x, int y) {
        MediaItem item = mModel.getCurrentMediaItem();
        if (item == null) {
            // item is not ready, ignore
            return;
        }

        boolean playVideo = (item.getSupportedOperations() & MediaItem.SUPPORT_PLAY) != 0;

        if (playVideo) {
            // determine if the point is at center (1/6) of the photo view.
            // (The position of the "play" icon is at center (1/6) of the photo)
            int w = mPhotoView.getWidth();
            int h = mPhotoView.getHeight();
            playVideo = (Math.abs(x - w / 2) * 12 <= w)
                    && (Math.abs(y - h / 2) * 12 <= h);
        }

        DataManager manager = mActivity.getDataManager();
        if (playVideo) {
            playVideo((Activity) mActivity, item.getPlayUri(), item.getName());
        } else {
            if (GifUtils.isGifFile((Context) mActivity,
                    manager.getContentUri(item.getPath()))) {
                GifUtils.playGif((Context) mActivity,
                        manager.getContentUri(item.getPath()));
            } else {

                onUserInteractionTap();
            }
        }
    }

    @Override
    public void onShowBar() {
        onUserInteraction();
    }

    public void clearAlbumFocus() {
        if (null != mPhotoView.mglRootView) {
            GalleryUtils.setGlRootViewFocus(mPhotoView.mglRootView, false);
        }
        if (mPhotoView != null && mFilmStripView != null) {
            mFilmStripView.setFocusIndex(-1);
            mPhotoView.invalidate();
        }
    }

    public void drawAlbumFocus() {
        if (null != mPhotoView.mglRootView) {
            GalleryUtils.setGlRootViewFocus(mPhotoView.mglRootView, true);
        }
        if (GLView.mCurrrentPhotoSlotIndex == -1) {
            GLView.mCurrrentPhotoSlotIndex = 0;
        }
        if (mPhotoView != null && mFilmStripView != null) {
            mFilmStripView.setFocusIndex(GLView.mCurrrentPhotoSlotIndex);
            mPhotoView.invalidate();
        }

    }

    public static void playVideo(Activity activity, Uri uri, String title) {
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW).setDataAndType(uri,
                    "video/*");
            intent.putExtra(Intent.EXTRA_TITLE, title);
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(activity, activity.getString(R.string.video_err),
                    Toast.LENGTH_SHORT).show();
        }
    }

    // Called by FileStripView.
    // Returns false if it cannot jump to the specified index at this time.
    public boolean onSlotSelected(int slotIndex) {
        return mPhotoView.jumpTo(slotIndex);
    }

    @Override
    protected void onStateResult(int requestCode, int resultCode, Intent data) {
        int mediaCount = 0;
        if (mApplication.getMediaFileListService() != null) {
            mediaCount = mApplication.getMediaFileListService().getSize();
        }
        switch (requestCode) {
        case REQUEST_CROP:
            if (resultCode == Activity.RESULT_OK) {
                if (data == null)
                    break;
                Path path = mApplication.getDataManager().findPathByUri(
                        data.getData());
                if (path != null) {
                    mModel.setCurrentPhoto(path, mCurrentIndex);
                }
            }
            GLView.mCurrrentPhotoSlotIndex = mCurrentIndex;
            break;
        case REQUEST_CROP_PICASA: {
            int message = resultCode == Activity.RESULT_OK ? R.string.crop_saved
                    : R.string.crop_not_saved;
            Toast.makeText(mActivity.getAndroidContext(), message,
                    Toast.LENGTH_SHORT).show();
            break;
        }
        case REQUEST_SLIDESHOW: {
            if (data == null)
                break;
            String path = data.getStringExtra(SlideshowPage.KEY_ITEM_PATH);
            int index = data.getIntExtra(SlideshowPage.KEY_PHOTO_INDEX, 0);
            GLView.mCurrrentPhotoSlotIndex = index % mediaCount;
            drawAlbumFocus();
            if (path != null) {
                mModel.setCurrentPhoto(Path.fromString(path), index);
            }
        }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        mIsActive = false;
        if (mFilmStripView != null) {
            mFilmStripView.pause();
        }
        DetailsHelper.pause();
        mPhotoView.pause();
        mModel.pause();
        mHandler.removeMessages(MSG_HIDE_BARS);
        // mActionBar.removeOnMenuVisibilityListener(mMenuVisibilityListener);
        mMenuExecutor.pause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        mIsActive = true;
        setContentPane(mRootPane);
        mModel.resume();
        mPhotoView.resume();
        if (mFilmStripView != null) {
            mFilmStripView.resume();
        }
        if (mMenuVisibilityListener == null) {
            mMenuVisibilityListener = new MyMenuVisibilityListener();
        }
        // mActionBar.addOnMenuVisibilityListener(mMenuVisibilityListener);
        onUserInteraction();
    }

    private class MyDetailsSource implements DetailsSource {
        private int mIndex;

        @Override
        public MediaDetails getDetails() {
            return mModel.getCurrentMediaItem().getDetails();
        }

        @Override
        public int size() {
            return mMediaSet != null ? mMediaSet.getMediaItemCount() : 1;
        }

        @Override
        public int findIndex(int indexHint) {
            mIndex = indexHint;
            return indexHint;
        }

        @Override
        public int getIndex() {
            return mIndex;
        }
    }

    public void showToast() {
        View toastRoot = ((Activity) mActivity).getLayoutInflater().inflate(
                R.layout.customtost, null);
        TextView message = (TextView) toastRoot.findViewById(R.id.message);
        message.setText(R.string.toast_ok);
        Toast toastStart = new Toast((Activity) mActivity);
        toastStart.setGravity(Gravity.CENTER, 0, 0);
        toastStart.setDuration(Toast.LENGTH_SHORT);
        toastStart.setView(toastRoot);
        toastStart.show();
    }

}
