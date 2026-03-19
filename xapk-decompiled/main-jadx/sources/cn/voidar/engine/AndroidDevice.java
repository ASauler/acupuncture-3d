package cn.voidar.engine;

import com.facebook.react.views.textinput.ReactEditTextInputConnectionWrapper;

/* JADX INFO: loaded from: classes.dex */
public class AndroidDevice {
    public static int AXIS_X = 1;
    public static int AXIS_Y = 2;
    public static int AXIS_Z = 3;
    public static int CAMERA_VERSION = 2;
    public static boolean flashSupported = true;
    public static boolean isCameraLandscape = false;
    public static int lockCameraIndex = -1;
    public static int lockOrientation = -1;
    public static int samplingPeriodUs = 0;
    public static int screenOrientation = -1;
    public static int sensorOrientation;

    public static String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("screenOrientation:" + screenOrientation + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("isCameraLandscape:" + isCameraLandscape + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("lockCameraIndex:" + lockCameraIndex + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("lockOrientation:" + lockOrientation + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("CAMERA_VERSION:" + CAMERA_VERSION + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("IMU samplingPeriodUs:" + samplingPeriodUs + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        sb.append("FlashSupported:" + flashSupported + ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE);
        return sb.toString();
    }
}
