package a.a.a.d.a;

/* JADX INFO: loaded from: classes.dex */
public enum a {
    CameraPermissionsNotGranted,
    CameraDisabled,
    CameraIsAlreadyInUse,
    CameraDeviceError,
    MaxNumberOfCamerasInUse,
    CameraSettingUnavailableWhenNotStarted,
    CameraSettingNotSupported,
    CameraSettingOnlyAvailableWithCamera2,
    CameraSettingsUnavailableWhenNotActive,
    CameraNotOpened;

    public static final String k = "com.wikitude.camera.android";

    public int a() {
        return ordinal() + 1000;
    }
}
