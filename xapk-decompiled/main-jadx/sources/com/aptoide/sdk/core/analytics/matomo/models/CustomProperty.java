package com.aptoide.sdk.core.analytics.matomo.models;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: CustomProperty.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;", "", "sdkId", "", "matomoId", "(II)V", "getMatomoId", "()I", "getSdkId", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CustomProperty {
    private final int matomoId;
    private final int sdkId;

    public static /* synthetic */ CustomProperty copy$default(CustomProperty customProperty, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = customProperty.sdkId;
        }
        if ((i3 & 2) != 0) {
            i2 = customProperty.matomoId;
        }
        return customProperty.copy(i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSdkId() {
        return this.sdkId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMatomoId() {
        return this.matomoId;
    }

    public final CustomProperty copy(int sdkId, int matomoId) {
        return new CustomProperty(sdkId, matomoId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CustomProperty)) {
            return false;
        }
        CustomProperty customProperty = (CustomProperty) other;
        return this.sdkId == customProperty.sdkId && this.matomoId == customProperty.matomoId;
    }

    public int hashCode() {
        return (Integer.hashCode(this.sdkId) * 31) + Integer.hashCode(this.matomoId);
    }

    public String toString() {
        return "CustomProperty(sdkId=" + this.sdkId + ", matomoId=" + this.matomoId + ")";
    }

    public CustomProperty(int i, int i2) {
        this.sdkId = i;
        this.matomoId = i2;
    }

    public final int getMatomoId() {
        return this.matomoId;
    }

    public final int getSdkId() {
        return this.sdkId;
    }
}
