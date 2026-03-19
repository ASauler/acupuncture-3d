package org.matomo.sdk;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class LegacySettingsPorter {
    static final String LEGACY_PREF_FIRST_VISIT = "tracker.firstvisit";
    static final String LEGACY_PREF_OPT_OUT = "matomo.optout";
    static final String LEGACY_PREF_PREV_VISIT = "tracker.previousvisit";
    static final String LEGACY_PREF_USER_ID = "tracker.userid";
    static final String LEGACY_PREF_VISITCOUNT = "tracker.visitcount";
    private final SharedPreferences mLegacyPrefs;

    public LegacySettingsPorter(Matomo matomo) {
        this.mLegacyPrefs = matomo.getPreferences();
    }

    public void port(Tracker tracker) {
        SharedPreferences preferences = tracker.getPreferences();
        if (this.mLegacyPrefs.getBoolean(LEGACY_PREF_OPT_OUT, false)) {
            preferences.edit().putBoolean("tracker.optout", true).apply();
            this.mLegacyPrefs.edit().remove(LEGACY_PREF_OPT_OUT).apply();
        }
        if (this.mLegacyPrefs.contains(LEGACY_PREF_USER_ID)) {
            preferences.edit().putString(LEGACY_PREF_USER_ID, this.mLegacyPrefs.getString(LEGACY_PREF_USER_ID, UUID.randomUUID().toString())).apply();
            this.mLegacyPrefs.edit().remove(LEGACY_PREF_USER_ID).apply();
        }
        if (this.mLegacyPrefs.contains(LEGACY_PREF_FIRST_VISIT)) {
            preferences.edit().putLong(LEGACY_PREF_FIRST_VISIT, this.mLegacyPrefs.getLong(LEGACY_PREF_FIRST_VISIT, -1L)).apply();
            this.mLegacyPrefs.edit().remove(LEGACY_PREF_FIRST_VISIT).apply();
        }
        if (this.mLegacyPrefs.contains(LEGACY_PREF_VISITCOUNT)) {
            preferences.edit().putLong(LEGACY_PREF_VISITCOUNT, this.mLegacyPrefs.getInt(LEGACY_PREF_VISITCOUNT, 0)).apply();
            this.mLegacyPrefs.edit().remove(LEGACY_PREF_VISITCOUNT).apply();
        }
        if (this.mLegacyPrefs.contains(LEGACY_PREF_PREV_VISIT)) {
            preferences.edit().putLong(LEGACY_PREF_PREV_VISIT, this.mLegacyPrefs.getLong(LEGACY_PREF_PREV_VISIT, -1L)).apply();
            this.mLegacyPrefs.edit().remove(LEGACY_PREF_PREV_VISIT).apply();
        }
        for (Map.Entry<String, ?> entry : this.mLegacyPrefs.getAll().entrySet()) {
            if (entry.getKey().startsWith("downloaded:")) {
                preferences.edit().putBoolean(entry.getKey(), true).apply();
                this.mLegacyPrefs.edit().remove(entry.getKey()).apply();
            }
        }
    }
}
