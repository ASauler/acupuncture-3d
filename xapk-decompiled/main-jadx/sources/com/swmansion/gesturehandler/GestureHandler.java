package com.swmansion.gesturehandler;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.react.bridge.UiThreadUtil;
import com.swmansion.gesturehandler.GestureHandler;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GestureHandler<T extends GestureHandler> {
    public static final int DIRECTION_DOWN = 8;
    public static final int DIRECTION_LEFT = 2;
    public static final int DIRECTION_RIGHT = 1;
    public static final int DIRECTION_UP = 4;
    private static final int HIT_SLOP_BOTTOM_IDX = 3;
    private static final int HIT_SLOP_HEIGHT_IDX = 5;
    private static final int HIT_SLOP_LEFT_IDX = 0;
    public static final float HIT_SLOP_NONE = Float.NaN;
    private static final int HIT_SLOP_RIGHT_IDX = 2;
    private static final int HIT_SLOP_TOP_IDX = 1;
    private static final int HIT_SLOP_WIDTH_IDX = 4;
    private static int MAX_POINTERS_COUNT = 12;
    public static final int STATE_ACTIVE = 4;
    public static final int STATE_BEGAN = 2;
    public static final int STATE_CANCELLED = 3;
    public static final int STATE_END = 5;
    public static final int STATE_FAILED = 1;
    public static final int STATE_UNDETERMINED = 0;
    private static short sNextEventCoalescingKey;
    private static MotionEvent.PointerCoords[] sPointerCoords;
    private static MotionEvent.PointerProperties[] sPointerProps;
    int mActivationIndex;
    private short mEventCoalescingKey;
    private float[] mHitSlop;
    private GestureHandlerInteractionController mInteractionController;
    boolean mIsActive;
    boolean mIsAwaiting;
    private float mLastEventOffsetX;
    private float mLastEventOffsetY;
    private float mLastX;
    private float mLastY;
    private OnTouchEventListener<T> mListener;
    private GestureHandlerOrchestrator mOrchestrator;
    private boolean mShouldCancelWhenOutside;
    private int mTag;
    private View mView;
    private boolean mWithinBounds;
    private float mX;
    private float mY;
    private final int[] mTrackedPointerIDs = new int[MAX_POINTERS_COUNT];
    private int mTrackedPointersCount = 0;
    private int mState = 0;
    private boolean mEnabled = true;
    private int mNumberOfPointers = 0;

    public static String stateToString(int i) {
        if (i == 0) {
            return "UNDETERMINED";
        }
        if (i == 1) {
            return "FAILED";
        }
        if (i == 2) {
            return "BEGIN";
        }
        if (i == 3) {
            return "CANCELLED";
        }
        if (i == 4) {
            return "ACTIVE";
        }
        if (i != 5) {
            return null;
        }
        return "END";
    }

    protected void onCancel() {
    }

    protected void onReset() {
    }

    protected void onStateChange(int i, int i2) {
    }

    private static void initPointerProps(int i) {
        if (sPointerProps == null) {
            int i2 = MAX_POINTERS_COUNT;
            sPointerProps = new MotionEvent.PointerProperties[i2];
            sPointerCoords = new MotionEvent.PointerCoords[i2];
        }
        while (i > 0) {
            MotionEvent.PointerProperties[] pointerPropertiesArr = sPointerProps;
            int i3 = i - 1;
            if (pointerPropertiesArr[i3] != null) {
                return;
            }
            pointerPropertiesArr[i3] = new MotionEvent.PointerProperties();
            sPointerCoords[i3] = new MotionEvent.PointerCoords();
            i--;
        }
    }

    private static boolean hitSlopSet(float f) {
        return !Float.isNaN(f);
    }

    void dispatchStateChange(int i, int i2) {
        OnTouchEventListener<T> onTouchEventListener = this.mListener;
        if (onTouchEventListener != null) {
            onTouchEventListener.onStateChange(this, i, i2);
        }
    }

    void dispatchTouchEvent(MotionEvent motionEvent) {
        OnTouchEventListener<T> onTouchEventListener = this.mListener;
        if (onTouchEventListener != null) {
            onTouchEventListener.onTouchEvent(this, motionEvent);
        }
    }

    public boolean hasCommonPointers(GestureHandler gestureHandler) {
        int i = 0;
        while (true) {
            int[] iArr = this.mTrackedPointerIDs;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] != -1 && gestureHandler.mTrackedPointerIDs[i] != -1) {
                return true;
            }
            i++;
        }
    }

    public T setShouldCancelWhenOutside(boolean z) {
        this.mShouldCancelWhenOutside = z;
        return this;
    }

    public T setEnabled(boolean z) {
        if (this.mView != null) {
            UiThreadUtil.runOnUiThread(new Runnable() { // from class: com.swmansion.gesturehandler.GestureHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    GestureHandler.this.cancel();
                }
            });
        }
        this.mEnabled = z;
        return this;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public T setHitSlop(float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.mHitSlop == null) {
            this.mHitSlop = new float[6];
        }
        float[] fArr = this.mHitSlop;
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        if (hitSlopSet(f5) && hitSlopSet(f) && hitSlopSet(f3)) {
            throw new IllegalArgumentException("Cannot have all of left, right and width defined");
        }
        if (hitSlopSet(f5) && !hitSlopSet(f) && !hitSlopSet(f3)) {
            throw new IllegalArgumentException("When width is set one of left or right pads need to be defined");
        }
        if (hitSlopSet(f6) && hitSlopSet(f4) && hitSlopSet(f2)) {
            throw new IllegalArgumentException("Cannot have all of top, bottom and height defined");
        }
        if (!hitSlopSet(f6) || hitSlopSet(f4) || hitSlopSet(f2)) {
            return this;
        }
        throw new IllegalArgumentException("When height is set one of top or bottom pads need to be defined");
    }

    public T setHitSlop(float f) {
        return (T) setHitSlop(f, f, f, f, Float.NaN, Float.NaN);
    }

    public T setInteractionController(GestureHandlerInteractionController gestureHandlerInteractionController) {
        this.mInteractionController = gestureHandlerInteractionController;
        return this;
    }

    public void setTag(int i) {
        this.mTag = i;
    }

    public int getTag() {
        return this.mTag;
    }

    public View getView() {
        return this.mView;
    }

    public float getX() {
        return this.mX;
    }

    public float getY() {
        return this.mY;
    }

    public int getNumberOfPointers() {
        return this.mNumberOfPointers;
    }

    public boolean isWithinBounds() {
        return this.mWithinBounds;
    }

    public short getEventCoalescingKey() {
        return this.mEventCoalescingKey;
    }

    public final void prepare(View view, GestureHandlerOrchestrator gestureHandlerOrchestrator) {
        if (this.mView != null || this.mOrchestrator != null) {
            throw new IllegalStateException("Already prepared or hasn't been reset");
        }
        Arrays.fill(this.mTrackedPointerIDs, -1);
        this.mTrackedPointersCount = 0;
        this.mState = 0;
        this.mView = view;
        this.mOrchestrator = gestureHandlerOrchestrator;
    }

    private int findNextLocalPointerId() {
        int[] iArr;
        int i = 0;
        while (i < this.mTrackedPointersCount) {
            int i2 = 0;
            while (true) {
                iArr = this.mTrackedPointerIDs;
                if (i2 >= iArr.length || iArr[i2] == i) {
                    break;
                }
                i2++;
            }
            if (i2 == iArr.length) {
                return i;
            }
            i++;
        }
        return i;
    }

    public void startTrackingPointer(int i) {
        int[] iArr = this.mTrackedPointerIDs;
        if (iArr[i] == -1) {
            iArr[i] = findNextLocalPointerId();
            this.mTrackedPointersCount++;
        }
    }

    public void stopTrackingPointer(int i) {
        int[] iArr = this.mTrackedPointerIDs;
        if (iArr[i] != -1) {
            iArr[i] = -1;
            this.mTrackedPointersCount--;
        }
    }

    private boolean needAdapt(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != this.mTrackedPointersCount) {
            return true;
        }
        int i = 0;
        while (true) {
            int[] iArr = this.mTrackedPointerIDs;
            if (i >= iArr.length) {
                return false;
            }
            int i2 = iArr[i];
            if (i2 != -1 && i2 != i) {
                return true;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.MotionEvent adaptEvent(android.view.MotionEvent r27) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.gesturehandler.GestureHandler.adaptEvent(android.view.MotionEvent):android.view.MotionEvent");
    }

    public final void handle(MotionEvent motionEvent) {
        int i;
        if (!this.mEnabled || (i = this.mState) == 3 || i == 1 || i == 5 || this.mTrackedPointersCount < 1) {
            return;
        }
        MotionEvent motionEventAdaptEvent = adaptEvent(motionEvent);
        this.mX = motionEventAdaptEvent.getX();
        this.mY = motionEventAdaptEvent.getY();
        this.mNumberOfPointers = motionEventAdaptEvent.getPointerCount();
        boolean zIsWithinBounds = isWithinBounds(this.mView, this.mX, this.mY);
        this.mWithinBounds = zIsWithinBounds;
        if (this.mShouldCancelWhenOutside && !zIsWithinBounds) {
            int i2 = this.mState;
            if (i2 == 4) {
                cancel();
                return;
            } else {
                if (i2 == 2) {
                    fail();
                    return;
                }
                return;
            }
        }
        this.mLastX = GestureUtils.getLastPointerX(motionEventAdaptEvent, true);
        this.mLastY = GestureUtils.getLastPointerY(motionEventAdaptEvent, true);
        this.mLastEventOffsetX = motionEventAdaptEvent.getRawX() - motionEventAdaptEvent.getX();
        this.mLastEventOffsetY = motionEventAdaptEvent.getRawY() - motionEventAdaptEvent.getY();
        onHandle(motionEventAdaptEvent);
        if (motionEventAdaptEvent != motionEvent) {
            motionEventAdaptEvent.recycle();
        }
    }

    private void moveToState(int i) {
        UiThreadUtil.assertOnUiThread();
        int i2 = this.mState;
        if (i2 == i) {
            return;
        }
        this.mState = i;
        if (i == 4) {
            short s = sNextEventCoalescingKey;
            sNextEventCoalescingKey = (short) (s + 1);
            this.mEventCoalescingKey = s;
        }
        this.mOrchestrator.onHandlerStateChange(this, i, i2);
        onStateChange(i, i2);
    }

    public boolean wantEvents() {
        int i;
        return (!this.mEnabled || (i = this.mState) == 1 || i == 3 || i == 5 || this.mTrackedPointersCount <= 0) ? false : true;
    }

    public int getState() {
        return this.mState;
    }

    public boolean shouldRequireToWaitForFailure(GestureHandler gestureHandler) {
        GestureHandlerInteractionController gestureHandlerInteractionController;
        if (gestureHandler == this || (gestureHandlerInteractionController = this.mInteractionController) == null) {
            return false;
        }
        return gestureHandlerInteractionController.shouldRequireHandlerToWaitForFailure(this, gestureHandler);
    }

    public boolean shouldWaitForHandlerFailure(GestureHandler gestureHandler) {
        GestureHandlerInteractionController gestureHandlerInteractionController;
        if (gestureHandler == this || (gestureHandlerInteractionController = this.mInteractionController) == null) {
            return false;
        }
        return gestureHandlerInteractionController.shouldWaitForHandlerFailure(this, gestureHandler);
    }

    public boolean shouldRecognizeSimultaneously(GestureHandler gestureHandler) {
        if (gestureHandler == this) {
            return true;
        }
        GestureHandlerInteractionController gestureHandlerInteractionController = this.mInteractionController;
        if (gestureHandlerInteractionController != null) {
            return gestureHandlerInteractionController.shouldRecognizeSimultaneously(this, gestureHandler);
        }
        return false;
    }

    public boolean shouldBeCancelledBy(GestureHandler gestureHandler) {
        GestureHandlerInteractionController gestureHandlerInteractionController;
        if (gestureHandler == this || (gestureHandlerInteractionController = this.mInteractionController) == null) {
            return false;
        }
        return gestureHandlerInteractionController.shouldHandlerBeCancelledBy(this, gestureHandler);
    }

    public boolean isWithinBounds(View view, float f, float f2) {
        float f3;
        float width = view.getWidth();
        float height = view.getHeight();
        float[] fArr = this.mHitSlop;
        if (fArr != null) {
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[2];
            float f7 = fArr[3];
            float f8 = hitSlopSet(f4) ? 0.0f - f4 : 0.0f;
            f = hitSlopSet(f5) ? 0.0f - f5 : 0.0f;
            if (hitSlopSet(f6)) {
                width += f6;
            }
            if (hitSlopSet(f7)) {
                height += f7;
            }
            float[] fArr2 = this.mHitSlop;
            float f9 = fArr2[4];
            float f10 = fArr2[5];
            if (hitSlopSet(f9)) {
                if (!hitSlopSet(f4)) {
                    f8 = width - f9;
                } else if (!hitSlopSet(f6)) {
                    width = f9 + f8;
                }
            }
            if (hitSlopSet(f10)) {
                if (!hitSlopSet(f5)) {
                    f = height - f10;
                } else if (!hitSlopSet(f7)) {
                    height = f + f10;
                }
            }
            f3 = f;
            f = f8;
        } else {
            f3 = 0.0f;
        }
        return f >= f && f <= width && f2 >= f3 && f2 <= height;
    }

    public final void cancel() {
        int i = this.mState;
        if (i == 4 || i == 0 || i == 2) {
            onCancel();
            moveToState(3);
        }
    }

    public final void fail() {
        int i = this.mState;
        if (i == 4 || i == 0 || i == 2) {
            moveToState(1);
        }
    }

    public final void activate() {
        int i = this.mState;
        if (i == 0 || i == 2) {
            moveToState(4);
        }
    }

    public final void begin() {
        if (this.mState == 0) {
            moveToState(2);
        }
    }

    public final void end() {
        int i = this.mState;
        if (i == 2 || i == 4) {
            moveToState(5);
        }
    }

    protected void onHandle(MotionEvent motionEvent) {
        moveToState(1);
    }

    public final void reset() {
        this.mView = null;
        this.mOrchestrator = null;
        Arrays.fill(this.mTrackedPointerIDs, -1);
        this.mTrackedPointersCount = 0;
        onReset();
    }

    public GestureHandler setOnTouchEventListener(OnTouchEventListener<T> onTouchEventListener) {
        this.mListener = onTouchEventListener;
        return this;
    }

    public String toString() {
        View view = this.mView;
        return getClass().getSimpleName() + "@[" + this.mTag + "]:" + (view == null ? null : view.getClass().getSimpleName());
    }

    public float getLastAbsolutePositionX() {
        return this.mLastX;
    }

    public float getLastAbsolutePositionY() {
        return this.mLastY;
    }

    public float getLastRelativePositionX() {
        return this.mLastX - this.mLastEventOffsetX;
    }

    public float getLastRelativePositionY() {
        return this.mLastY - this.mLastEventOffsetY;
    }
}
