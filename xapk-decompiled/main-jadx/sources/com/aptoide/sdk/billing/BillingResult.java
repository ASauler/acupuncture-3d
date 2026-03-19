package com.aptoide.sdk.billing;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: BillingResult.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \r2\u00020\u0001:\u0002\f\rB\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\u0005H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/aptoide/sdk/billing/BillingResult;", "", "responseCode", "", "debugMessage", "", "(ILjava/lang/String;)V", InAppPurchaseConstants.METHOD_GET_DEBUG_MESSAGE, "()Ljava/lang/String;", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()I", InAppPurchaseConstants.METHOD_TO_STRING, "Builder", "Companion", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingResult {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String debugMessage;
    private final int responseCode;

    @JvmStatic
    public static final Builder newBuilder() {
        return INSTANCE.newBuilder();
    }

    public BillingResult(int i, String str) {
        this.responseCode = i;
        this.debugMessage = str;
    }

    public final String getDebugMessage() {
        return this.debugMessage;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: compiled from: BillingResult.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/BillingResult$Companion;", "", "()V", InAppPurchaseConstants.METHOD_NEW_BUILDER, "Lcom/aptoide/sdk/billing/BillingResult$Builder;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Builder newBuilder() {
            return new Builder();
        }
    }

    /* JADX INFO: compiled from: BillingResult.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/BillingResult$Builder;", "", "()V", "debugMessage", "", "responseCode", "", "Ljava/lang/Integer;", InAppPurchaseConstants.METHOD_BUILD, "Lcom/aptoide/sdk/billing/BillingResult;", "setDebugMessage", "setResponseCode", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String debugMessage;
        private Integer responseCode;

        public final Builder setResponseCode(int responseCode) {
            this.responseCode = Integer.valueOf(responseCode);
            return this;
        }

        public final Builder setDebugMessage(String debugMessage) {
            this.debugMessage = debugMessage;
            return this;
        }

        public final BillingResult build() {
            Integer num = this.responseCode;
            return new BillingResult(num != null ? num.intValue() : 6, this.debugMessage);
        }
    }

    public String toString() {
        return "ResponseCode: " + this.responseCode + ", DebugMessage: " + this.debugMessage;
    }
}
