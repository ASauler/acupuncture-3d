package com.aptoide.sdk.core.analytics.matomo.models;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MatomoDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u001d\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J?\u0010\u0012\u001a\u00020\u00002\u001c\b\u0002\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR%\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;", "", "matomoCustomProperties", "Ljava/util/ArrayList;", "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;", "Lkotlin/collections/ArrayList;", "matomoUrl", "", "matomoApiKey", "(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V", "getMatomoApiKey", "()Ljava/lang/String;", "getMatomoCustomProperties", "()Ljava/util/ArrayList;", "getMatomoUrl", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MatomoDetails {
    private final String matomoApiKey;
    private final ArrayList<CustomProperty> matomoCustomProperties;
    private final String matomoUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MatomoDetails copy$default(MatomoDetails matomoDetails, ArrayList arrayList, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = matomoDetails.matomoCustomProperties;
        }
        if ((i & 2) != 0) {
            str = matomoDetails.matomoUrl;
        }
        if ((i & 4) != 0) {
            str2 = matomoDetails.matomoApiKey;
        }
        return matomoDetails.copy(arrayList, str, str2);
    }

    public final ArrayList<CustomProperty> component1() {
        return this.matomoCustomProperties;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMatomoUrl() {
        return this.matomoUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMatomoApiKey() {
        return this.matomoApiKey;
    }

    public final MatomoDetails copy(ArrayList<CustomProperty> matomoCustomProperties, String matomoUrl, String matomoApiKey) {
        return new MatomoDetails(matomoCustomProperties, matomoUrl, matomoApiKey);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MatomoDetails)) {
            return false;
        }
        MatomoDetails matomoDetails = (MatomoDetails) other;
        return Intrinsics.areEqual(this.matomoCustomProperties, matomoDetails.matomoCustomProperties) && Intrinsics.areEqual(this.matomoUrl, matomoDetails.matomoUrl) && Intrinsics.areEqual(this.matomoApiKey, matomoDetails.matomoApiKey);
    }

    public int hashCode() {
        ArrayList<CustomProperty> arrayList = this.matomoCustomProperties;
        int iHashCode = (arrayList == null ? 0 : arrayList.hashCode()) * 31;
        String str = this.matomoUrl;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.matomoApiKey;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "MatomoDetails(matomoCustomProperties=" + this.matomoCustomProperties + ", matomoUrl=" + this.matomoUrl + ", matomoApiKey=" + this.matomoApiKey + ")";
    }

    public MatomoDetails(ArrayList<CustomProperty> arrayList, String str, String str2) {
        this.matomoCustomProperties = arrayList;
        this.matomoUrl = str;
        this.matomoApiKey = str2;
    }

    public final ArrayList<CustomProperty> getMatomoCustomProperties() {
        return this.matomoCustomProperties;
    }

    public final String getMatomoUrl() {
        return this.matomoUrl;
    }

    public final String getMatomoApiKey() {
        return this.matomoApiKey;
    }
}
