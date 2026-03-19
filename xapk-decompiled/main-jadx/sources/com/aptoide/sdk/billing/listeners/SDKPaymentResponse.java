package com.aptoide.sdk.billing.listeners;

import android.content.Intent;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SDKPaymentResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;", "", "resultCode", "", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "(ILandroid/content/Intent;)V", "getIntent", "()Landroid/content/Intent;", "getResultCode", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SDKPaymentResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Intent intent;
    private final int resultCode;

    public static /* synthetic */ SDKPaymentResponse copy$default(SDKPaymentResponse sDKPaymentResponse, int i, Intent intent, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = sDKPaymentResponse.resultCode;
        }
        if ((i2 & 2) != 0) {
            intent = sDKPaymentResponse.intent;
        }
        return sDKPaymentResponse.copy(i, intent);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getResultCode() {
        return this.resultCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Intent getIntent() {
        return this.intent;
    }

    public final SDKPaymentResponse copy(int resultCode, Intent intent) {
        return new SDKPaymentResponse(resultCode, intent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SDKPaymentResponse)) {
            return false;
        }
        SDKPaymentResponse sDKPaymentResponse = (SDKPaymentResponse) other;
        return this.resultCode == sDKPaymentResponse.resultCode && Intrinsics.areEqual(this.intent, sDKPaymentResponse.intent);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.resultCode) * 31;
        Intent intent = this.intent;
        return iHashCode + (intent == null ? 0 : intent.hashCode());
    }

    public String toString() {
        return "SDKPaymentResponse(resultCode=" + this.resultCode + ", intent=" + this.intent + ")";
    }

    public SDKPaymentResponse(int i, Intent intent) {
        this.resultCode = i;
        this.intent = intent;
    }

    public /* synthetic */ SDKPaymentResponse(int i, Intent intent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : intent);
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    public final Intent getIntent() {
        return this.intent;
    }

    /* JADX INFO: compiled from: SDKPaymentResponse.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;", "", "()V", "createCanceledTypeResponse", "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;", "createErrorTypeResponse", "createServiceUnavailableResponse", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SDKPaymentResponse createCanceledTypeResponse() {
            Intent intent = new Intent();
            intent.putExtra(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.USER_CANCELED.getValue());
            Unit unit = Unit.INSTANCE;
            return new SDKPaymentResponse(0, intent);
        }

        public final SDKPaymentResponse createErrorTypeResponse() {
            Intent intent = new Intent();
            intent.putExtra(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.ERROR.getValue());
            Unit unit = Unit.INSTANCE;
            return new SDKPaymentResponse(-1, intent);
        }

        public final SDKPaymentResponse createServiceUnavailableResponse() {
            Intent intent = new Intent();
            intent.putExtra(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.SERVICE_UNAVAILABLE.getValue());
            Unit unit = Unit.INSTANCE;
            return new SDKPaymentResponse(-1, intent);
        }
    }
}
