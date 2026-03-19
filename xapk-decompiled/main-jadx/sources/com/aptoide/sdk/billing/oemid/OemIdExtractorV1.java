package com.aptoide.sdk.billing.oemid;

import android.content.Context;
import android.content.pm.PackageManager;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.io.InputStream;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class OemIdExtractorV1 implements OemIdExtractor {
    private final Context context;

    public OemIdExtractorV1(Context context) {
        this.context = context;
    }

    @Override // com.aptoide.sdk.billing.oemid.OemIdExtractor
    public String extract(String str) {
        try {
            ZipFile zipFile = new ZipFile(getPackageName(this.context, str));
            ZipEntry entry = zipFile.getEntry("META-INF/attrib");
            if (entry == null) {
                return null;
            }
            InputStream inputStream = zipFile.getInputStream(entry);
            Properties properties = new Properties();
            properties.load(inputStream);
            if (properties.containsKey(SdkInitializationLabels.OEMID)) {
                return properties.getProperty(SdkInitializationLabels.OEMID);
            }
            return null;
        } catch (Exception e) {
            Logger.logWarning("Failed to obtain OEMID from Extractor V1: " + e);
            return null;
        }
    }

    private String getPackageName(Context context, String str) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir;
    }
}
