package com.aptoide.sdk.billing.service;

import com.aptoide.sdk.billing.oemid.OemIdExtractor;
import com.aptoide.sdk.core.logger.Logger;

/* JADX INFO: loaded from: classes.dex */
public class OemIdExtractorService {
    private final OemIdExtractor extractorV1;
    private final OemIdExtractor extractorV2;

    public OemIdExtractorService(OemIdExtractor oemIdExtractor, OemIdExtractor oemIdExtractor2) {
        this.extractorV1 = oemIdExtractor;
        this.extractorV2 = oemIdExtractor2;
    }

    public String extractOemId(String str) {
        String strExtract = this.extractorV2.extract(str);
        if (strExtract == null || strExtract.isEmpty()) {
            strExtract = this.extractorV1.extract(str);
        }
        Logger.logDebug("Extracted OemId -> " + strExtract);
        return strExtract;
    }
}
