package com.aptoide.sdk.core.device;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.webkit.ProxyConfig;
import com.aptoide.sdk.billing.oemid.Constants;
import com.facebook.react.views.textinput.ReactEditTextInputConnectionWrapper;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import net.lingala.zip4j.util.InternalZipConstants;

/* JADX INFO: compiled from: QGenerator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0002J\u000e\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011¨\u0006\u001a"}, d2 = {"Lcom/aptoide/sdk/core/device/QGenerator;", "", "()V", "DPI_120", "", "DPI_160", "DPI_213", "DPI_240", "DPI_320", "DPI_480", "DPI_640", "abis", "", "getAbis", "()Ljava/lang/String;", "supportedOpenGLExtensions", "", "[Ljava/lang/String;", "addOpenGLExtensions", "filters", "generateQ", "context", "Landroid/content/Context;", "getDensityDpi", "getScreenSizeInt", "Size", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QGenerator {
    private static final int DPI_120 = 120;
    private static final int DPI_160 = 160;
    private static final int DPI_213 = 213;
    private static final int DPI_240 = 240;
    private static final int DPI_320 = 320;
    private static final int DPI_480 = 480;
    private static final int DPI_640 = 640;
    public static final QGenerator INSTANCE = new QGenerator();
    private static final String[] supportedOpenGLExtensions = {"GL_OES_compressed_ETC1_RGB8_texture", "GL_OES_compressed_paletted_texture", "GL_AMD_compressed_3DC_texture", "GL_AMD_compressed_ATC_texture", "GL_EXT_texture_compression_latc", "GL_EXT_texture_compression_dxt1", "GL_EXT_texture_compression_s3tc", "GL_ATI_texture_compression_atitc", "GL_IMG_texture_compression_pvrtc"};

    private QGenerator() {
    }

    public final String generateQ(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i = Build.VERSION.SDK_INT;
        String lowerCase = Size.getEntries().get(getScreenSizeInt(context)).name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        byte[] bytes = addOpenGLExtensions((Intrinsics.areEqual(Build.DEVICE, "alien_jolla_bionic") ? "apkdwn=myapp&" : "") + "maxSdk=" + i + "&maxScreen=" + lowerCase + "&maxGles=" + ((ActivityManager) systemService).getDeviceConfigurationInfo().getGlEsVersion() + "&myCPU=" + getAbis() + "&myDensity=" + getDensityDpi(context)).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(bytes, 0);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(strEncodeToString, "=", "", false, 4, (Object) null), InternalZipConstants.ZIP_FILE_SEPARATOR, ProxyConfig.MATCH_ALL_SCHEMES, false, 4, (Object) null), "+", "_", false, 4, (Object) null), ReactEditTextInputConnectionWrapper.NEWLINE_RAW_VALUE, "", false, 4, (Object) null);
    }

    private final String addOpenGLExtensions(String filters) {
        String str;
        List<String> deviceSupportedExtensions = new OpenGLHelper().getDeviceSupportedExtensions();
        if (deviceSupportedExtensions != null) {
            boolean z = false;
            for (String str2 : deviceSupportedExtensions) {
                if (ArraysKt.contains(supportedOpenGLExtensions, str2)) {
                    if (!z) {
                        str = "&myGLTex=" + str2;
                    } else {
                        str = Constants.OEMID_SEPARATOR + str2;
                    }
                    filters = ((Object) filters) + str;
                    z = true;
                }
            }
        }
        return filters;
    }

    private final int getScreenSizeInt(Context context) {
        return context.getResources().getConfiguration().screenLayout & 15;
    }

    private final String getAbis() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb = new StringBuilder();
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(strArr[i]);
            if (i < strArr.length - 1) {
                sb.append(Constants.OEMID_SEPARATOR);
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    private final int getDensityDpi(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        return i <= DPI_120 ? DPI_120 : i <= DPI_160 ? DPI_160 : i <= DPI_213 ? DPI_213 : i <= DPI_240 ? DPI_240 : i <= DPI_320 ? DPI_320 : i <= DPI_480 ? DPI_480 : DPI_640;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: QGenerator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/core/device/QGenerator$Size;", "", "(Ljava/lang/String;I)V", "NOTFOUND", "SMALL", "NORMAL", "LARGE", "XLARGE", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Size {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Size[] $VALUES;
        public static final Size NOTFOUND = new Size("NOTFOUND", 0);
        public static final Size SMALL = new Size("SMALL", 1);
        public static final Size NORMAL = new Size("NORMAL", 2);
        public static final Size LARGE = new Size("LARGE", 3);
        public static final Size XLARGE = new Size("XLARGE", 4);

        private static final /* synthetic */ Size[] $values() {
            return new Size[]{NOTFOUND, SMALL, NORMAL, LARGE, XLARGE};
        }

        public static EnumEntries<Size> getEntries() {
            return $ENTRIES;
        }

        public static Size valueOf(String str) {
            return (Size) Enum.valueOf(Size.class, str);
        }

        public static Size[] values() {
            return (Size[]) $VALUES.clone();
        }

        private Size(String str, int i) {
        }

        static {
            Size[] sizeArr$values = $values();
            $VALUES = sizeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sizeArr$values);
        }
    }
}
