package cn.voidar.engine;

/* JADX INFO: loaded from: classes.dex */
public class VoidARNative {
    static {
        try {
            System.loadLibrary("VoidAR-Plugin");
        } catch (UnsatisfiedLinkError e) {
            i.a().c("loadLibrary Error: " + e.toString());
        }
    }

    public static native void newImageAvailable(int i, int i2, byte[] bArr, int i3, double d, double d2);

    public static native void onSensorChanged(int i, double d, float f, float f2, float f3, float f4);

    public static native void sendMessageToUnity(String str, String str2);
}
