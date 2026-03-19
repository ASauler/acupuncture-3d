package com.aptoide.sdk.billing.helpers;

import android.os.IBinder;
import com.appcoins.billing.AppcoinsBilling;
import com.aptoide.communication.requester.MessageRequesterFactory;
import com.aptoide.sdk.billing.UriCommunicationAptoideBilling;
import com.aptoide.sdk.billing.WalletBinderUtil;
import com.aptoide.sdk.billing.service.UnavailableBillingService;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import com.aptoide.sdk.billing.webpayment.WebAptoideBilling;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AptoideBillingStubHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper;", "", "()V", "Stub", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AptoideBillingStubHelper {
    public static final AptoideBillingStubHelper INSTANCE = new AptoideBillingStubHelper();

    private AptoideBillingStubHelper() {
    }

    /* JADX INFO: compiled from: AptoideBillingStubHelper.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;", "", "()V", "asInterface", "Lcom/appcoins/billing/AppcoinsBilling;", "service", "Landroid/os/IBinder;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Stub {
        public static final Stub INSTANCE = new Stub();

        /* JADX INFO: compiled from: AptoideBillingStubHelper.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[BindType.values().length];
                try {
                    iArr[BindType.BILLING_SERVICE_NOT_INSTALLED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[BindType.UNAVAILABLE_BILLING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Stub() {
        }

        @JvmStatic
        public static final AppcoinsBilling asInterface(IBinder service) {
            UriCommunicationAptoideBilling uriCommunicationAptoideBillingAsInterface;
            Intrinsics.checkNotNullParameter(service, "service");
            Logger.logInfo("Stub: BindType " + WalletBinderUtil.getBindType() + ", service " + service);
            BindType bindType = WalletBinderUtil.getBindType();
            int i = bindType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[bindType.ordinal()];
            if (i == 1) {
                Logger.logInfo("BillingService of type WebAptoideBilling.");
                return WebAptoideBilling.INSTANCE.getInstance();
            }
            if (i == 2) {
                Logger.logInfo("BillingService of type UnavailableBillingService.");
                return UnavailableBillingService.INSTANCE.getInstance();
            }
            AttributionSharedPreferences attributionSharedPreferences = new AttributionSharedPreferences(WalletUtils.INSTANCE.getContext());
            if (WalletBinderUtil.getBindType() == BindType.URI_CONNECTION) {
                Logger.logInfo("BillingService of type UriCommunicationAptoideBilling.");
                uriCommunicationAptoideBillingAsInterface = new UriCommunicationAptoideBilling(MessageRequesterFactory.create(WalletUtils.INSTANCE.getContext(), "com.appcoins.wallet", "appcoins://billing/communication/processor/1", "appcoins://billing/communication/requester/1", 30000));
            } else {
                Logger.logInfo("BillingService of type WalletBillingService.");
                uriCommunicationAptoideBillingAsInterface = AppcoinsBilling.Stub.asInterface(service);
                Intrinsics.checkNotNullExpressionValue(uriCommunicationAptoideBillingAsInterface, "asInterface(...)");
            }
            return new AptoideBillingWrapper(uriCommunicationAptoideBillingAsInterface, attributionSharedPreferences.getWalletId());
        }
    }
}
