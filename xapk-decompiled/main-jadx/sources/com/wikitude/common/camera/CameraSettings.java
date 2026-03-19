package com.wikitude.common.camera;

/* JADX INFO: loaded from: classes2.dex */
public class CameraSettings {

    public enum Camera2SupportLevel {
        LIMITED,
        FULL,
        LEGACY,
        LEVEL_3
    }

    public enum CameraFocusMode {
        ONCE,
        CONTINUOUS,
        OFF
    }

    public enum CameraPosition {
        BACK,
        FRONT,
        DEFAULT
    }

    public enum CameraResolution {
        SD_640x480,
        HD_1280x720,
        FULL_HD_1920x1080,
        AUTO
    }

    public enum TorchMode {
        OFF,
        ON
    }

    private CameraSettings() {
    }
}
