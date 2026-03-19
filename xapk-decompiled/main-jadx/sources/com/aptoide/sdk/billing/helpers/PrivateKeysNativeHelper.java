package com.aptoide.sdk.billing.helpers;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: PrivateKeysNativeHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u0000 \b2\u00020\u0001:\u0002\u0007\bB\u0005¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0086 ¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;", "", "()V", "getApiKey", "", "buildType", SDKConstants.PARAM_KEY, "ApiKeys", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PrivateKeysNativeHelper {
    public final native String getApiKey(String buildType, String key);

    static {
        System.loadLibrary("native-keys-storer");
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PrivateKeysNativeHelper.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$ApiKeys;", "", "(Ljava/lang/String;I)V", "INDICATIVE_API_KEY", "MATOMO_URL", "MATOMO_API_KEY", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ApiKeys {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ApiKeys[] $VALUES;
        public static final ApiKeys INDICATIVE_API_KEY = new ApiKeys("INDICATIVE_API_KEY", 0);
        public static final ApiKeys MATOMO_URL = new ApiKeys("MATOMO_URL", 1);
        public static final ApiKeys MATOMO_API_KEY = new ApiKeys("MATOMO_API_KEY", 2);

        private static final /* synthetic */ ApiKeys[] $values() {
            return new ApiKeys[]{INDICATIVE_API_KEY, MATOMO_URL, MATOMO_API_KEY};
        }

        public static EnumEntries<ApiKeys> getEntries() {
            return $ENTRIES;
        }

        public static ApiKeys valueOf(String str) {
            return (ApiKeys) Enum.valueOf(ApiKeys.class, str);
        }

        public static ApiKeys[] values() {
            return (ApiKeys[]) $VALUES.clone();
        }

        private ApiKeys(String str, int i) {
        }

        static {
            ApiKeys[] apiKeysArr$values = $values();
            $VALUES = apiKeysArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(apiKeysArr$values);
        }
    }
}
