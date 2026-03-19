package com.aptoide.sdk.billing.mappers;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreLinkResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0019\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0003J4\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0001¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;", "", "responseCode", "", "storeLinkMethods", "Ljava/util/ArrayList;", "Lcom/aptoide/sdk/billing/mappers/StoreLinkMethod;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/Integer;Ljava/util/ArrayList;)V", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStoreLinkMethods", "()Ljava/util/ArrayList;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/util/ArrayList;)Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class StoreLinkResponse {
    private final Integer responseCode;
    private final ArrayList<StoreLinkMethod> storeLinkMethods;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoreLinkResponse copy$default(StoreLinkResponse storeLinkResponse, Integer num, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            num = storeLinkResponse.responseCode;
        }
        if ((i & 2) != 0) {
            arrayList = storeLinkResponse.storeLinkMethods;
        }
        return storeLinkResponse.copy(num, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final ArrayList<StoreLinkMethod> component2() {
        return this.storeLinkMethods;
    }

    public final StoreLinkResponse copy(Integer responseCode, ArrayList<StoreLinkMethod> storeLinkMethods) {
        Intrinsics.checkNotNullParameter(storeLinkMethods, "storeLinkMethods");
        return new StoreLinkResponse(responseCode, storeLinkMethods);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StoreLinkResponse)) {
            return false;
        }
        StoreLinkResponse storeLinkResponse = (StoreLinkResponse) other;
        return Intrinsics.areEqual(this.responseCode, storeLinkResponse.responseCode) && Intrinsics.areEqual(this.storeLinkMethods, storeLinkResponse.storeLinkMethods);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        return ((num == null ? 0 : num.hashCode()) * 31) + this.storeLinkMethods.hashCode();
    }

    public String toString() {
        return "StoreLinkResponse(responseCode=" + this.responseCode + ", storeLinkMethods=" + this.storeLinkMethods + ")";
    }

    public StoreLinkResponse(Integer num, ArrayList<StoreLinkMethod> storeLinkMethods) {
        Intrinsics.checkNotNullParameter(storeLinkMethods, "storeLinkMethods");
        this.responseCode = num;
        this.storeLinkMethods = storeLinkMethods;
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public /* synthetic */ StoreLinkResponse(Integer num, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? new ArrayList() : arrayList);
    }

    public final ArrayList<StoreLinkMethod> getStoreLinkMethods() {
        return this.storeLinkMethods;
    }
}
