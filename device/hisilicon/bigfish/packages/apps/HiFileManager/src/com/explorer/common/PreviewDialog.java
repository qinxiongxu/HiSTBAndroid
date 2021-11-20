package com.explorer.common;

import java.io.File;
import java.util.Calendar;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.explorer.R;
import com.explorer.common.FileUtil;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.provider.MediaStore;
import android.provider.MediaStore.Images;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class PreviewDialog extends Dialog {
    private ProgressBar progress ;
    private TextView tv_text ;
    private ImageView iv_image ;
    private LinearLayout ll_layout ;
    private String path ;
    private MyHandler handler ;
    private Bitmap bitmap;

    private int screenWidth,screenHeight;
    private CommonActivity mea;
    private Thread thread;
    private ExecutorService exec = Executors.newFixedThreadPool(1);

    public PreviewDialog(Context context ,String path,CommonActivity mea) {
        super(context);
        this.mea = mea;
        this.path = path ;
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_preview);
        init();
        initData();
    }
    private void init() {
        WindowManager windowManager = getWindow().getWindowManager();
        Display display = windowManager.getDefaultDisplay();
        screenWidth = display.getWidth() / 2;
        screenHeight = display.getHeight() / 2;
        progress = (ProgressBar) findViewById(R.id.preview_dialog_progressBar);
        tv_text = (TextView) findViewById( R.id.preview_dialog_text);
        iv_image = (ImageView) findViewById(R.id.preview_dialog_image);
        ll_layout = (LinearLayout) findViewById(R.id.preview_dialog_linea);
        iv_image.setLayoutParams(new LinearLayout.LayoutParams(screenHeight, screenHeight));
        ll_layout.setLayoutParams(new LinearLayout.LayoutParams(screenHeight, screenHeight));
    }

    private void initData() {
        handler = new MyHandler() ;
        StringBuffer sb = new StringBuffer();
        File file = new File(path);
        sb.append(file.getName() + "\n\n");
        sb.append(getContext().getString(R.string.file_size_1) + FileUtil.fileSizeMsg(file)
                + "\n\n");
        String type = FileUtil.getMIMEType(file, mea);
        if (type != null && !type.equals("null"))
            sb.append(getContext().getString(R.string.file_type) + type + "\n\n");
        else {
            type = FileUtil.getExtension(file);
            sb.append(getContext().getString(R.string.file_type) + type + "\n\n");
        }
        long time = file.lastModified();
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(time);
        sb.append(getContext().getString(R.string.last_modified)
                + cal.getTime().toLocaleString() + "\n");
        tv_text.setText(sb.toString());
        if (type != null && type.equals("image/*")) {
            thread = new Thread(){
                public void run() {
                    bitmap = getBitmap(path, screenWidth, screenHeight);
                    handler.sendEmptyMessage(1);
                };
            };
            exec.execute(thread);
        }else if (type != null && type.equals("video/*")) {
            thread =  new Thread(){
                public void run() {
                    bitmap = getVideoThumbnail(path);
                    handler.sendEmptyMessage(1);
                };
            };
            exec.execute(thread);
        }else if (type!=null&&type.equals("audio/*")){
            thread=new Thread(){
                public void run() {
                    try{
                    bitmap = getAudioThumbnail(path);
                    handler.sendEmptyMessage(1);
                    Thread.sleep(3);
                }catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                };
            };
            exec.execute(thread);
        }else{
            ll_layout.setVisibility(8);
            progress.setVisibility(8);
        }
    }

    @Override
    public void onBackPressed() {
        if(bitmap!=null){
            bitmap.recycle();
        }
        if(thread!=null&&thread.isAlive()){
            exec.shutdownNow();
        }
        System.gc();
        super.onBackPressed();
    }

    class MyHandler extends Handler{
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what==1){
                if (bitmap != null)
                    iv_image.setImageBitmap(bitmap);
                else {
                    iv_image.setImageResource(R.drawable.preview_error);
                }
                iv_image.setVisibility(0);
                progress.setVisibility(8);
            }
        }
    }

    public Bitmap getBitmap(String absolutePath, int screenWidth,
            int screenHeight) {

        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        Bitmap bm = BitmapFactory.decodeFile(absolutePath, opt);
        int picWidth = opt.outWidth;
        int picHeight = opt.outHeight;
        opt.inSampleSize = 1;
        if (picWidth > picHeight) {
            if (picWidth > screenWidth)
                opt.inSampleSize = picWidth / screenWidth;
        } else {
            if (picHeight > screenHeight)

                opt.inSampleSize = picHeight / screenHeight;
        }
        opt.inJustDecodeBounds = false;
        bm = BitmapFactory.decodeFile(absolutePath, opt);
        return bm;
    }

    public Bitmap getVideoThumbnail(String filePath) {
        Bitmap bitmap = null;
        int kind = MediaStore.Video.Thumbnails.MINI_KIND;
        bitmap = ThumbnailUtils.createVideoThumbnail(filePath, kind);
        bitmap = ThumbnailUtils.extractThumbnail(bitmap, screenWidth, screenHeight,
        ThumbnailUtils.OPTIONS_RECYCLE_INPUT);
        return bitmap;
    }

    public Bitmap getAudioThumbnail(String path){
        Bitmap bitmap = null;
        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        try {
            retriever.setDataSource(path);
            byte[] art = retriever.getEmbeddedPicture();
            if (art.length > 0) {
            BitmapFactory.Options opts = new BitmapFactory.Options();
            opts.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(art, 0, art.length, opts);
            opts.inSampleSize = 1;//ImageUtils.calculateInSampleSize(opts, 380,380);
            opts.inJustDecodeBounds = false;
            bitmap = BitmapFactory.decodeByteArray(art, 0, art.length, opts);
            }
        } catch(IllegalArgumentException ex) {
        } catch (RuntimeException ex) {
        } finally {
            try {
                retriever.release();
            } catch (RuntimeException ex) {
            }
        }
        return bitmap;
    }

}
