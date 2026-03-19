package com.vesal.jlsx.international.utils;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPreferenceData {
    public static final String SHARE_PREFERENCE_AGREEMENT = "sp_agreement";
    public static final String SHARE_PREFERENCE_LAST_LOGIN = "sp_last_login";
    public static final String SHARE_PREFERENCE_LAST_VERSION = "last_version";
    public static String SHARE_PREFERENCE_NAME = "anatomy_master";
    public static final String SHARE_PREFERENCE_ORIENTATION = "display_orientation";
    public static final String SHARE_PREFERENCE_START_MODULE = "sp_start_module";

    public static boolean isAgreement() {
        return SharedPreferencesUtil.getBoolean(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_AGREEMENT);
    }

    public static void setAgreement(boolean z) {
        SharedPreferencesUtil.putBoolean(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_AGREEMENT, z);
    }

    public static int getLastVersion() {
        return SharedPreferencesUtil.getInt(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_LAST_VERSION, 0);
    }

    public static void setLastVersion(int i) {
        SharedPreferencesUtil.putInt(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_LAST_VERSION, i);
    }

    public static String getDisplayOrientation() {
        return SharedPreferencesUtil.getString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_ORIENTATION);
    }

    public static void setDisplayOrientation(String str) {
        SharedPreferencesUtil.putString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_ORIENTATION, str);
    }

    public static String getLastLoginType() {
        return SharedPreferencesUtil.getString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_LAST_LOGIN);
    }

    public static void setLastLoginType(String str) {
        SharedPreferencesUtil.putString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_LAST_LOGIN, str);
    }

    public static String getQuickStartModule() {
        return SharedPreferencesUtil.getString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_START_MODULE);
    }

    public static void setQuickStartModule(String str) {
        SharedPreferencesUtil.putString(SHARE_PREFERENCE_NAME, SHARE_PREFERENCE_START_MODULE, str);
    }
}
