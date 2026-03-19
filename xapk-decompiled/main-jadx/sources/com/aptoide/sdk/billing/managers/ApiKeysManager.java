package com.aptoide.sdk.billing.managers;

import com.aptoide.sdk.billing.helpers.PrivateKeysNativeHelper;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: ApiKeysManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\f\u001a\u00020\nR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/managers/ApiKeysManager;", "", "()V", "privateKeysNativeHelper", "Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;", "getPrivateKeysNativeHelper", "()Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;", "privateKeysNativeHelper$delegate", "Lkotlin/Lazy;", "getIndicativeApiKey", "", "getMatomoApiKey", "getMatomoUrl", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiKeysManager {
    public static final ApiKeysManager INSTANCE = new ApiKeysManager();

    /* JADX INFO: renamed from: privateKeysNativeHelper$delegate, reason: from kotlin metadata */
    private static final Lazy privateKeysNativeHelper = LazyKt.lazy(new Function0<PrivateKeysNativeHelper>() { // from class: com.aptoide.sdk.billing.managers.ApiKeysManager$privateKeysNativeHelper$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final PrivateKeysNativeHelper invoke() {
            return new PrivateKeysNativeHelper();
        }
    });

    private ApiKeysManager() {
    }

    private final PrivateKeysNativeHelper getPrivateKeysNativeHelper() {
        return (PrivateKeysNativeHelper) privateKeysNativeHelper.getValue();
    }

    public final String getIndicativeApiKey() {
        return getPrivateKeysNativeHelper().getApiKey("release", "INDICATIVE_API_KEY");
    }

    public final String getMatomoUrl() {
        return getPrivateKeysNativeHelper().getApiKey("release", "MATOMO_URL");
    }

    public final String getMatomoApiKey() {
        return getPrivateKeysNativeHelper().getApiKey("release", "MATOMO_API_KEY");
    }
}
