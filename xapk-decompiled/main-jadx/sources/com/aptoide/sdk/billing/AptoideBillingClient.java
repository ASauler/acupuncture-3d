package com.aptoide.sdk.billing;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import com.aptoide.sdk.billing.helpers.AptoideAndroidBillingRepository;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.AptoideBillingClientStateListener;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;
import com.aptoide.sdk.billing.usecases.LogGeneralInformation;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.security.PurchasesSecurityHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class AptoideBillingClient {

    @Retention(RetentionPolicy.SOURCE)
    public @interface BillingResponseCode {
        public static final int BILLING_UNAVAILABLE = 3;
        public static final int DEVELOPER_ERROR = 5;
        public static final int ERROR = 6;
        public static final int FEATURE_NOT_SUPPORTED = -2;
        public static final int ITEM_ALREADY_OWNED = 7;
        public static final int ITEM_NOT_OWNED = 8;
        public static final int ITEM_UNAVAILABLE = 4;
        public static final int OK = 0;
        public static final int SERVICE_UNAVAILABLE = 2;
        public static final int USER_CANCELED = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FeatureType {
        public static final Integer SUBSCRIPTIONS = 0;
        public static final Integer OBFUSCATED_ACCOUNT_ID = 1;
        public static final Integer FREE_TRIALS = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProductType {
        public static final String INAPP = "inapp";
        public static final String SUBS = "subs";
    }

    public abstract void consumeAsync(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener);

    public abstract void endConnection();

    public abstract ReferralDeeplink getReferralDeeplink();

    public abstract boolean isAppUpdateAvailable();

    public abstract BillingResult isFeatureSupported(int i);

    public abstract boolean isReady();

    public abstract void launchAppUpdateDialog(Context context);

    public abstract void launchAppUpdateStore(Context context);

    public abstract BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams);

    public abstract void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener);

    public abstract void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener);

    public abstract void startConnection(AptoideBillingClientStateListener aptoideBillingClientStateListener);

    public static Builder newBuilder(Context context) {
        return new Builder(context);
    }

    public static final class Builder {
        private final Context context;
        private volatile String publicKey;
        private volatile PurchasesUpdatedListener purchasesUpdatedListener;

        private Builder(Context context) {
            this.context = context;
        }

        public Builder setListener(PurchasesUpdatedListener purchasesUpdatedListener) {
            this.purchasesUpdatedListener = purchasesUpdatedListener;
            return this;
        }

        public Builder setPublicKey(String str) {
            this.publicKey = str;
            return this;
        }

        public AptoideBillingClient build() {
            Logger.logInfo("Starting setup of AptoideBillingClient.");
            if (this.context == null) {
                throw new IllegalArgumentException("Please provide a valid Context for your application.");
            }
            if (this.purchasesUpdatedListener == null) {
                throw new IllegalArgumentException("Please provide a valid listener for the purchases updates.");
            }
            if (this.publicKey == null) {
                throw new IllegalArgumentException("Please provide a valid public key for the purchases updates.");
            }
            Logger.setupLogger(this.context);
            LogGeneralInformation.INSTANCE.invoke(this.context);
            AptoideAndroidBillingRepository aptoideAndroidBillingRepository = new AptoideAndroidBillingRepository(3, this.context.getPackageName());
            RepositoryServiceConnection repositoryServiceConnection = new RepositoryServiceConnection(this.context.getApplicationContext(), aptoideAndroidBillingRepository);
            WalletUtils.INSTANCE.setContext(this.context.getApplicationContext());
            PurchasesSecurityHelper.INSTANCE.setBase64DecodedPublicKey(Base64.decode(this.publicKey, 0));
            return new AptoideBillingClientImpl(new AptoideBilling(aptoideAndroidBillingRepository), repositoryServiceConnection, this.purchasesUpdatedListener);
        }
    }
}
