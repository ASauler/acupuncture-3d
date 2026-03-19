package org.matomo.sdk.extra;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import java.util.Collections;
import java.util.List;
import org.matomo.sdk.Matomo;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
public class InstallReferrerReceiver extends BroadcastReceiver {
    static final String ARG_KEY_GPLAY_REFERRER = "referrer";
    static final String PREF_KEY_INSTALL_REFERRER_EXTRAS = "referrer.extras";
    private static final String TAG = Matomo.tag(InstallReferrerReceiver.class);
    static final String REFERRER_SOURCE_GPLAY = "com.android.vending.INSTALL_REFERRER";
    static final List<String> RESPONSIBILITIES = Collections.singletonList(REFERRER_SOURCE_GPLAY);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        String str = TAG;
        Timber.tag(str).d(intent.toString(), new Object[0]);
        if (intent.getAction() == null || !RESPONSIBILITIES.contains(intent.getAction())) {
            Timber.tag(str).w("Got called outside our responsibilities: %s", intent.getAction());
            return;
        }
        if (intent.getBooleanExtra("forwarded", false)) {
            Timber.tag(str).d("Dropping forwarded intent", new Object[0]);
            return;
        }
        SharedPreferences preferences = Matomo.getInstance(context.getApplicationContext()).getPreferences();
        if (intent.getAction().equals(REFERRER_SOURCE_GPLAY) && (stringExtra = intent.getStringExtra(ARG_KEY_GPLAY_REFERRER)) != null) {
            preferences.edit().putString(PREF_KEY_INSTALL_REFERRER_EXTRAS, stringExtra).apply();
            Timber.tag(str).d("Stored Google Play referrer extras: %s", stringExtra);
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        intent.putExtra("forwarded", true);
        context.sendBroadcast(intent);
    }
}
