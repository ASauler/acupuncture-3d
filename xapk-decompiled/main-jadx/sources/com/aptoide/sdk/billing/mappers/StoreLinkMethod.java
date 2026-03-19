package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreLinkResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/StoreLinkMethod;", "", "deeplink", "", "priority", "", "(Ljava/lang/String;I)V", "getDeeplink", "()Ljava/lang/String;", "getPriority", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class StoreLinkMethod {
    private final String deeplink;
    private final int priority;

    public static /* synthetic */ StoreLinkMethod copy$default(StoreLinkMethod storeLinkMethod, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = storeLinkMethod.deeplink;
        }
        if ((i2 & 2) != 0) {
            i = storeLinkMethod.priority;
        }
        return storeLinkMethod.copy(str, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPriority() {
        return this.priority;
    }

    public final StoreLinkMethod copy(String deeplink, int priority) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        return new StoreLinkMethod(deeplink, priority);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StoreLinkMethod)) {
            return false;
        }
        StoreLinkMethod storeLinkMethod = (StoreLinkMethod) other;
        return Intrinsics.areEqual(this.deeplink, storeLinkMethod.deeplink) && this.priority == storeLinkMethod.priority;
    }

    public int hashCode() {
        return (this.deeplink.hashCode() * 31) + Integer.hashCode(this.priority);
    }

    public String toString() {
        return "StoreLinkMethod(deeplink=" + this.deeplink + ", priority=" + this.priority + ")";
    }

    public StoreLinkMethod(String deeplink, int i) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        this.deeplink = deeplink;
        this.priority = i;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final int getPriority() {
        return this.priority;
    }
}
