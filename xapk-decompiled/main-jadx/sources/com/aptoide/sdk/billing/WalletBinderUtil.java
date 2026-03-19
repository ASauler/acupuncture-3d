package com.aptoide.sdk.billing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.aptoide.sdk.billing.helpers.BindType;
import com.aptoide.sdk.billing.helpers.IBinderWalletNotInstalled;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod;
import com.aptoide.sdk.billing.service.UnavailableBillingService;
import com.aptoide.sdk.billing.webpayment.WebAptoideBilling;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkInitializationLabels;
import com.aptoide.sdk.core.logger.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WalletBinderUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J(\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0018H\u0007J(\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0018H\u0002J\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R*\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/aptoide/sdk/billing/WalletBinderUtil;", "", "()V", "<set-?>", "Lcom/aptoide/sdk/billing/helpers/BindType;", "bindType", "getBindType$annotations", "getBindType", "()Lcom/aptoide/sdk/billing/helpers/BindType;", "billingServiceInstalledBehaviour", "", "context", "Landroid/content/Context;", "connection", "Landroid/content/ServiceConnection;", "serviceIntent", "Landroid/content/Intent;", "paymentFlowMethod", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "bindBillingService", "finishBillingRepository", "", "initializeBillingRepository", "paymentFlowMethods", "", "processPaymentMethods", "walletBindingFailedBehaviour", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WalletBinderUtil {
    public static final WalletBinderUtil INSTANCE = new WalletBinderUtil();
    private static BindType bindType;

    /* JADX INFO: compiled from: WalletBinderUtil.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BindType.values().length];
            try {
                iArr[BindType.AIDL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BindType.BILLING_SERVICE_NOT_INSTALLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BindType.URI_CONNECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BindType.UNAVAILABLE_BILLING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static /* synthetic */ void getBindType$annotations() {
    }

    private WalletBinderUtil() {
    }

    public static final BindType getBindType() {
        return bindType;
    }

    @JvmStatic
    public static final void initializeBillingRepository(Context context, ServiceConnection connection, List<? extends PaymentFlowMethod> paymentFlowMethods) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(connection, "connection");
        WalletBinderUtil walletBinderUtil = INSTANCE;
        if (walletBinderUtil.processPaymentMethods(context, connection, paymentFlowMethods)) {
            return;
        }
        List<? extends PaymentFlowMethod> list = paymentFlowMethods;
        if (list == null || list.isEmpty()) {
            Logger.logInfo("Payment Flow methods from Payflow Service is " + paymentFlowMethods + ". Processing local Payment Flows list.");
            if (walletBinderUtil.processPaymentMethods(context, connection, WalletUtils.INSTANCE.getLocalPaymentFlowMethods())) {
                return;
            }
        }
        Logger.logInfo("Creating WebAptoideBilling service as a fallback.");
        bindType = BindType.BILLING_SERVICE_NOT_INSTALLED;
        WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(new PaymentFlowMethod.WebPayment("web_payment", 1, CollectionsKt.emptyList(), null, null, null));
        connection.onServiceConnected(new ComponentName("", "WebAptoideBilling"), new IBinderWalletNotInstalled());
        SdkAnalytics.sendServiceConnectedEvent$default(SdkAnalyticsUtils.INSTANCE.getSdkAnalytics(), "install_wallet_dialog", null, 2, null);
    }

    private final boolean processPaymentMethods(Context context, ServiceConnection connection, List<? extends PaymentFlowMethod> paymentFlowMethods) {
        if (paymentFlowMethods == null) {
            return false;
        }
        for (PaymentFlowMethod paymentFlowMethod : paymentFlowMethods) {
            if (paymentFlowMethod instanceof PaymentFlowMethod.Wallet ? true : paymentFlowMethod instanceof PaymentFlowMethod.GamesHub ? true : paymentFlowMethod instanceof PaymentFlowMethod.AptoideGames) {
                if (INSTANCE.bindBillingService(context, connection, paymentFlowMethod)) {
                    return true;
                }
            } else {
                if (paymentFlowMethod instanceof PaymentFlowMethod.WebPayment) {
                    Logger.logInfo("Creating WebAptoideBilling service.");
                    bindType = BindType.BILLING_SERVICE_NOT_INSTALLED;
                    WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(paymentFlowMethod);
                    connection.onServiceConnected(new ComponentName("", "WebAptoideBilling"), new IBinderWalletNotInstalled());
                    SdkAnalytics.sendServiceConnectedEvent$default(SdkAnalyticsUtils.INSTANCE.getSdkAnalytics(), paymentFlowMethod.getName(), null, 2, null);
                    return true;
                }
                if (paymentFlowMethod instanceof PaymentFlowMethod.UnavailableBilling) {
                    Logger.logInfo("Creating UnavailableBillingService.");
                    bindType = BindType.UNAVAILABLE_BILLING;
                    WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(paymentFlowMethod);
                    connection.onServiceConnected(new ComponentName("", "UnavailableBillingService"), new IBinderWalletNotInstalled());
                    SdkAnalytics.sendServiceConnectedEvent$default(SdkAnalyticsUtils.INSTANCE.getSdkAnalytics(), paymentFlowMethod.getName(), null, 2, null);
                    return true;
                }
            }
        }
        return false;
    }

    @JvmStatic
    public static final void finishBillingRepository(Context context, ServiceConnection connection) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(connection, "connection");
        try {
            BindType bindType2 = bindType;
            int i = bindType2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[bindType2.ordinal()];
            if (i == 1) {
                context.unbindService(connection);
            } else if (i == 2) {
                connection.onServiceDisconnected(new ComponentName(context, (Class<?>) WebAptoideBilling.class));
            } else if (i == 3) {
                connection.onServiceDisconnected(new ComponentName(context, (Class<?>) UriCommunicationAptoideBilling.class));
            } else if (i == 4) {
                connection.onServiceDisconnected(new ComponentName(context, (Class<?>) UnavailableBillingService.class));
            }
            WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(null);
        } catch (IllegalArgumentException e) {
            Logger.logError("Failed to finish Billing Repository: " + e);
        }
    }

    private final boolean walletBindingFailedBehaviour(ServiceConnection connection, PaymentFlowMethod paymentFlowMethod) {
        Logger.logError("Attempting URI Communication Protocol.");
        if (WalletUtils.INSTANCE.isUriBillingSupported()) {
            Logger.logInfo("Establishing URI Communication Protocol with Wallet.");
            bindType = BindType.URI_CONNECTION;
            WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(paymentFlowMethod);
            connection.onServiceConnected(new ComponentName("", "UriCommunicationAptoideBilling"), new IBinderWalletNotInstalled());
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectedEvent(paymentFlowMethod.getName(), "uri");
            return true;
        }
        Logger.logInfo("Failed to establish URI Communication Protocol with Wallet.");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionFailureEvent(paymentFlowMethod.getName(), "uri");
        return false;
    }

    private final boolean billingServiceInstalledBehaviour(Context context, ServiceConnection connection, Intent serviceIntent, PaymentFlowMethod paymentFlowMethod) {
        if (context.bindService(serviceIntent, connection, 1)) {
            Logger.logInfo("Binding to the wallet aidl.");
            bindType = BindType.AIDL;
            WalletUtils.INSTANCE.setCurrentPaymentFlowMethod(paymentFlowMethod);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectedEvent(paymentFlowMethod.getName(), SdkInitializationLabels.METHOD_BINDING);
            return true;
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionFailureEvent(paymentFlowMethod.getName(), SdkInitializationLabels.METHOD_BINDING);
        Logger.logError("Failed to Bind to Billing App.");
        if (paymentFlowMethod instanceof PaymentFlowMethod.Wallet) {
            return walletBindingFailedBehaviour(connection, paymentFlowMethod);
        }
        return false;
    }

    private final boolean bindBillingService(Context context, ServiceConnection connection, PaymentFlowMethod paymentFlowMethod) {
        Logger.logInfo("Attempting to bind to a Billing App: " + paymentFlowMethod.getName());
        String billingIabActionNameFromPaymentFlowMethod = WalletUtils.INSTANCE.getBillingIabActionNameFromPaymentFlowMethod(paymentFlowMethod);
        if (!WalletUtils.INSTANCE.isAppAvailableToBind(billingIabActionNameFromPaymentFlowMethod)) {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendServiceConnectionFailureEvent(paymentFlowMethod.getName(), SdkInitializationLabels.METHOD_BINDING);
            return false;
        }
        String billingPackageNameFromPaymentFlowMethod = WalletUtils.INSTANCE.getBillingPackageNameFromPaymentFlowMethod(paymentFlowMethod);
        Intent intent = new Intent(billingIabActionNameFromPaymentFlowMethod);
        intent.setPackage(billingPackageNameFromPaymentFlowMethod);
        return billingServiceInstalledBehaviour(context, connection, intent, paymentFlowMethod);
    }
}
