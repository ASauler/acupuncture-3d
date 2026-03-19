package com.aptoide.sdk.billing.usecases;

import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.mappers.AttributionResponse;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SaveAttributionResultOnPrefs.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0086\u0002J\f\u0010\r\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u000e\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u000f\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u0010\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u0011\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u0012\u001a\u00020\n*\u00020\fH\u0002J\f\u0010\u0013\u001a\u00020\n*\u00020\fH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "attributionSharedPreferences", "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "getAttributionSharedPreferences", "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "attributionSharedPreferences$delegate", "Lkotlin/Lazy;", "invoke", "", "attributionResponse", "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;", "processOemIdFromAttribution", "processUtmCampaignFromAttribution", "processUtmContentFromAttribution", "processUtmMediumFromAttribution", "processUtmSourceFromAttribution", "processUtmTermFromAttribution", "processWalletIdFromAttribution", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SaveAttributionResultOnPrefs extends UseCase {
    public static final SaveAttributionResultOnPrefs INSTANCE = new SaveAttributionResultOnPrefs();

    /* JADX INFO: renamed from: attributionSharedPreferences$delegate, reason: from kotlin metadata */
    private static final Lazy attributionSharedPreferences = LazyKt.lazy(new Function0<AttributionSharedPreferences>() { // from class: com.aptoide.sdk.billing.usecases.SaveAttributionResultOnPrefs$attributionSharedPreferences$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AttributionSharedPreferences invoke() {
            return new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
        }
    });

    private SaveAttributionResultOnPrefs() {
    }

    private final AttributionSharedPreferences getAttributionSharedPreferences() {
        return (AttributionSharedPreferences) attributionSharedPreferences.getValue();
    }

    public final void invoke(AttributionResponse attributionResponse) {
        Intrinsics.checkNotNullParameter(attributionResponse, "attributionResponse");
        super.invokeUseCase();
        SaveAttributionResultOnPrefs saveAttributionResultOnPrefs = INSTANCE;
        saveAttributionResultOnPrefs.processOemIdFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processUtmSourceFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processUtmMediumFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processUtmCampaignFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processUtmTermFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processUtmContentFromAttribution(attributionResponse);
        saveAttributionResultOnPrefs.processWalletIdFromAttribution(attributionResponse);
    }

    private final void processOemIdFromAttribution(AttributionResponse attributionResponse) {
        String oemId = attributionResponse.getOemId();
        if (oemId != null) {
            if (oemId.length() > 0) {
                Logger.logInfo("Setting new OEMID.");
                Logger.logDebug("OEMID: " + oemId);
                INSTANCE.getAttributionSharedPreferences().setOemId(oemId);
            }
        }
    }

    private final void processUtmSourceFromAttribution(AttributionResponse attributionResponse) {
        String utmSource = attributionResponse.getUtmSource();
        if (utmSource != null) {
            if (utmSource.length() > 0) {
                Logger.logInfo("Setting new UtmSource.");
                Logger.logDebug("UtmSource: " + utmSource);
                INSTANCE.getAttributionSharedPreferences().setUtmSource(utmSource);
            }
        }
    }

    private final void processUtmMediumFromAttribution(AttributionResponse attributionResponse) {
        String utmMedium = attributionResponse.getUtmMedium();
        if (utmMedium != null) {
            if (utmMedium.length() > 0) {
                Logger.logInfo("Setting new UtmMedium.");
                Logger.logDebug("UtmMedium: " + utmMedium);
                INSTANCE.getAttributionSharedPreferences().setUtmMedium(utmMedium);
            }
        }
    }

    private final void processUtmCampaignFromAttribution(AttributionResponse attributionResponse) {
        String utmCampaign = attributionResponse.getUtmCampaign();
        if (utmCampaign != null) {
            if (utmCampaign.length() > 0) {
                Logger.logInfo("Setting new UtmCampaign.");
                Logger.logDebug("UtmCampaign: " + utmCampaign);
                INSTANCE.getAttributionSharedPreferences().setUtmCampaign(utmCampaign);
            }
        }
    }

    private final void processUtmTermFromAttribution(AttributionResponse attributionResponse) {
        String utmTerm = attributionResponse.getUtmTerm();
        if (utmTerm != null) {
            if (utmTerm.length() > 0) {
                Logger.logInfo("Setting new UtmTerm.");
                Logger.logDebug("UtmTerm: " + utmTerm);
                INSTANCE.getAttributionSharedPreferences().setUtmTerm(utmTerm);
            }
        }
    }

    private final void processUtmContentFromAttribution(AttributionResponse attributionResponse) {
        String utmContent = attributionResponse.getUtmContent();
        if (utmContent != null) {
            if (utmContent.length() > 0) {
                Logger.logInfo("Setting new UtmContent.");
                Logger.logDebug("UtmContent: " + utmContent);
                INSTANCE.getAttributionSharedPreferences().setUtmContent(utmContent);
            }
        }
    }

    private final void processWalletIdFromAttribution(AttributionResponse attributionResponse) {
        String walletId = attributionResponse.getWalletId();
        if (walletId != null) {
            if (walletId.length() > 0) {
                Logger.logInfo("Setting new WalletId.");
                Logger.logDebug("WalletId: " + walletId);
                INSTANCE.getAttributionSharedPreferences().setWalletId(walletId);
            }
        }
    }
}
