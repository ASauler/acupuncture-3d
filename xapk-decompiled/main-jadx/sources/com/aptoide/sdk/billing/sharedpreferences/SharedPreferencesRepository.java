package com.aptoide.sdk.billing.sharedpreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedPreferencesRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0015J\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0019\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\fJ\u0016\u0010\u001b\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0011J\u0016\u0010\u001c\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0013J\u0016\u0010\u001d\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0015J\u001a\u0010\u001e\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000eR\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u001f"}, d2 = {"Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "sharedPreferences", "Landroid/content/SharedPreferences;", "getSharedPreferences", "()Landroid/content/SharedPreferences;", "sharedPreferences$delegate", "Lkotlin/Lazy;", "getBoolean", "", SDKConstants.PARAM_KEY, "", "defaultValue", "getFloat", "", "getInt", "", "getLong", "", "getString", "remove", "", "setBoolean", "value", "setFloat", "setInt", "setLong", "setString", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SharedPreferencesRepository {

    /* JADX INFO: renamed from: sharedPreferences$delegate, reason: from kotlin metadata */
    private final Lazy sharedPreferences;

    public SharedPreferencesRepository(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.sharedPreferences = LazyKt.lazy(new Function0<SharedPreferences>() { // from class: com.aptoide.sdk.billing.sharedpreferences.SharedPreferencesRepository$sharedPreferences$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return PreferenceManager.getDefaultSharedPreferences(context);
            }
        });
    }

    private final SharedPreferences getSharedPreferences() {
        Object value = this.sharedPreferences.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    public static /* synthetic */ String getString$default(SharedPreferencesRepository sharedPreferencesRepository, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getString");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return sharedPreferencesRepository.getString(str, str2);
    }

    public final String getString(String key, String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getString(key, defaultValue);
    }

    public static /* synthetic */ int getInt$default(SharedPreferencesRepository sharedPreferencesRepository, String str, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getInt");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return sharedPreferencesRepository.getInt(str, i);
    }

    public final int getInt(String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getInt(key, defaultValue);
    }

    public static /* synthetic */ long getLong$default(SharedPreferencesRepository sharedPreferencesRepository, String str, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLong");
        }
        if ((i & 2) != 0) {
            j = 0;
        }
        return sharedPreferencesRepository.getLong(str, j);
    }

    public final long getLong(String key, long defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getLong(key, defaultValue);
    }

    public static /* synthetic */ float getFloat$default(SharedPreferencesRepository sharedPreferencesRepository, String str, float f, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFloat");
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return sharedPreferencesRepository.getFloat(str, f);
    }

    public final float getFloat(String key, float defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getFloat(key, defaultValue);
    }

    public static /* synthetic */ boolean getBoolean$default(SharedPreferencesRepository sharedPreferencesRepository, String str, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getBoolean");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return sharedPreferencesRepository.getBoolean(str, z);
    }

    public final boolean getBoolean(String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getBoolean(key, defaultValue);
    }

    public static /* synthetic */ void setString$default(SharedPreferencesRepository sharedPreferencesRepository, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setString");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        sharedPreferencesRepository.setString(str, str2);
    }

    public final void setString(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().putString(key, value).apply();
    }

    public final void setInt(String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().putInt(key, value).apply();
    }

    public final void setLong(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().putLong(key, value).apply();
    }

    public final void setFloat(String key, float value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().putFloat(key, value).apply();
    }

    public final void setBoolean(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().putBoolean(key, value).apply();
    }

    public final void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        getSharedPreferences().edit().remove(key).apply();
    }
}
