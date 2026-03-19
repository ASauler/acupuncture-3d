package com.aptoide.sdk.billing.sharedpreferences;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AttributionSharedPreferences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\b\u0010\t\u001a\u0004\u0018\u00010\nJ\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\b\u0010\f\u001a\u0004\u0018\u00010\nJ\b\u0010\r\u001a\u0004\u0018\u00010\nJ\b\u0010\u000e\u001a\u0004\u0018\u00010\nJ\b\u0010\u000f\u001a\u0004\u0018\u00010\nJ\b\u0010\u0010\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\bJ\u0012\u0010\u0015\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0016\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0017\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0018\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0019\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001a\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001b\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n¨\u0006\u001d"}, d2 = {"Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;", "Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "completeAttribution", "", "getInitialAttributionTimestamp", "", "getOemId", "", "getUtmCampaign", "getUtmContent", "getUtmMedium", "getUtmSource", "getUtmTerm", "getWalletId", "isAttributionComplete", "", "setInitialAttributionTimestamp", "value", "setOemId", "setUtmCampaign", "setUtmContent", "setUtmMedium", "setUtmSource", "setUtmTerm", "setWalletId", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttributionSharedPreferences extends SharedPreferencesRepository {

    @Deprecated
    public static final String ATTRIBUTION_COMPLETE_KEY = "ATTRIBUTION_COMPLETE";
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String INITIAL_ATTRIBUTION_TIMESTAMP_KEY = "INITIAL_ATTRIBUTION_TIMESTAMP";

    @Deprecated
    public static final String OEM_ID_KEY = "OEM_ID";

    @Deprecated
    public static final String UTM_CAMPAIGN_KEY = "UTM_CAMPAIGN";

    @Deprecated
    public static final String UTM_CONTENT_KEY = "UTM_CONTENT";

    @Deprecated
    public static final String UTM_MEDIUM_KEY = "UTM_MEDIUM";

    @Deprecated
    public static final String UTM_SOURCE_KEY = "UTM_SOURCE";

    @Deprecated
    public static final String UTM_TERM_KEY = "UTM_TERM";

    @Deprecated
    public static final String WALLET_ID_KEY = "WALLET_ID";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttributionSharedPreferences(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final String getWalletId() {
        return SharedPreferencesRepository.getString$default(this, WALLET_ID_KEY, null, 2, null);
    }

    public final String getOemId() {
        return SharedPreferencesRepository.getString$default(this, OEM_ID_KEY, null, 2, null);
    }

    public final String getUtmSource() {
        return SharedPreferencesRepository.getString$default(this, UTM_SOURCE_KEY, null, 2, null);
    }

    public final String getUtmMedium() {
        return SharedPreferencesRepository.getString$default(this, UTM_MEDIUM_KEY, null, 2, null);
    }

    public final String getUtmCampaign() {
        return SharedPreferencesRepository.getString$default(this, UTM_CAMPAIGN_KEY, null, 2, null);
    }

    public final String getUtmTerm() {
        return SharedPreferencesRepository.getString$default(this, UTM_TERM_KEY, null, 2, null);
    }

    public final String getUtmContent() {
        return SharedPreferencesRepository.getString$default(this, UTM_CONTENT_KEY, null, 2, null);
    }

    public final boolean isAttributionComplete() {
        return SharedPreferencesRepository.getBoolean$default(this, ATTRIBUTION_COMPLETE_KEY, false, 2, null);
    }

    public final long getInitialAttributionTimestamp() {
        return SharedPreferencesRepository.getLong$default(this, INITIAL_ATTRIBUTION_TIMESTAMP_KEY, 0L, 2, null);
    }

    public static /* synthetic */ void setWalletId$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setWalletId(str);
    }

    public final void setWalletId(String value) {
        setString(WALLET_ID_KEY, value);
    }

    public static /* synthetic */ void setOemId$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setOemId(str);
    }

    public final void setOemId(String value) {
        setString(OEM_ID_KEY, value);
    }

    public static /* synthetic */ void setUtmSource$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setUtmSource(str);
    }

    public final void setUtmSource(String value) {
        setString(UTM_SOURCE_KEY, value);
    }

    public static /* synthetic */ void setUtmMedium$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setUtmMedium(str);
    }

    public final void setUtmMedium(String value) {
        setString(UTM_MEDIUM_KEY, value);
    }

    public static /* synthetic */ void setUtmCampaign$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setUtmCampaign(str);
    }

    public final void setUtmCampaign(String value) {
        setString(UTM_CAMPAIGN_KEY, value);
    }

    public static /* synthetic */ void setUtmTerm$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setUtmTerm(str);
    }

    public final void setUtmTerm(String value) {
        setString(UTM_TERM_KEY, value);
    }

    public static /* synthetic */ void setUtmContent$default(AttributionSharedPreferences attributionSharedPreferences, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        attributionSharedPreferences.setUtmContent(str);
    }

    public final void setUtmContent(String value) {
        setString(UTM_CONTENT_KEY, value);
    }

    public final void completeAttribution() {
        setBoolean(ATTRIBUTION_COMPLETE_KEY, true);
    }

    public final void setInitialAttributionTimestamp(long value) {
        setLong(INITIAL_ATTRIBUTION_TIMESTAMP_KEY, value);
    }

    /* JADX INFO: compiled from: AttributionSharedPreferences.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;", "", "()V", "ATTRIBUTION_COMPLETE_KEY", "", "INITIAL_ATTRIBUTION_TIMESTAMP_KEY", "OEM_ID_KEY", "UTM_CAMPAIGN_KEY", "UTM_CONTENT_KEY", "UTM_MEDIUM_KEY", "UTM_SOURCE_KEY", "UTM_TERM_KEY", "WALLET_ID_KEY", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
