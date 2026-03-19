package com.aptoide.sdk.billing.helpers;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: compiled from: BillingResultHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;", "", "()V", "ERROR_TYPE_INVALID_PRODUCT_TYPE", "", "ERROR_TYPE_INVALID_PUBLIC_KEY", "ERROR_TYPE_MAIN_THREAD", "ERROR_TYPE_PURCHASE_TOKEN_CANNOT_BE_NULL", "ERROR_TYPE_SERVICE_NOT_AVAILABLE", "getMessageFromErrorType", "", "errorType", "(Ljava/lang/Integer;)Ljava/lang/String;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BillingResultHelper {
    public static final int ERROR_TYPE_INVALID_PRODUCT_TYPE = 4;
    public static final int ERROR_TYPE_INVALID_PUBLIC_KEY = 0;
    public static final int ERROR_TYPE_MAIN_THREAD = 1;
    public static final int ERROR_TYPE_PURCHASE_TOKEN_CANNOT_BE_NULL = 3;
    public static final int ERROR_TYPE_SERVICE_NOT_AVAILABLE = 2;
    public static final BillingResultHelper INSTANCE = new BillingResultHelper();

    private BillingResultHelper() {
    }

    @JvmStatic
    public static final String getMessageFromErrorType(Integer errorType) {
        if (errorType == null) {
            return null;
        }
        errorType.intValue();
        int iIntValue = errorType.intValue();
        return iIntValue != 0 ? iIntValue != 1 ? iIntValue != 2 ? iIntValue != 3 ? iIntValue != 4 ? "Unknown error" : "Invalid product type." : "Purchase token cannot be null or empty." : "Service not available." : "Request from MainThread. Cancelling." : "Invalid public key.";
    }
}
