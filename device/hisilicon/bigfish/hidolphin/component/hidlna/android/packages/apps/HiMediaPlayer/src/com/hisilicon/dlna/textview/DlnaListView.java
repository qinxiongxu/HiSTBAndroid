package com.hisilicon.dlna.textview;

import android.content.Context;
import android.graphics.Rect;
import android.widget.ListView;
import android.util.AttributeSet;


public class DlnaListView extends ListView {

    private int lastPlayItem = 0;

    public DlnaListView(Context context) {
        super(context);
    }

    public DlnaListView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public DlnaListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public int setPlayItem(int playItem)
    {
        lastPlayItem = playItem;
        return 0;
    }

    @Override
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        //int lastSelectItem = getSelectedItemPosition();
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        if (gainFocus) {
            setSelection(lastPlayItem);
        }
    }
}
