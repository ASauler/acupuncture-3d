package com.vesal.jlsx.international.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPreferencesUtil {
    public static final String FILE_NAME_BASE_URL = "file_name_base_url";
    private static Context mContext;

    public static void init(Context context) {
        mContext = context;
    }

    private static SharedPreferences newSharedPreferences(String str) {
        return mContext.getSharedPreferences(str, 0);
    }

    public static void removeDataSharedPreferences(String str, String str2) {
        newSharedPreferences(str).edit().remove(str2);
    }

    public static void putString(String str, String str2, String str3) {
        SharedPreferences.Editor editorEdit = newSharedPreferences(str).edit();
        editorEdit.putString(str2, str3);
        editorEdit.commit();
    }

    public static String getStringWithDefault(String str, String str2, String str3) {
        return newSharedPreferences(str).getString(str2, str3);
    }

    public static String getString(String str, String str2) {
        return newSharedPreferences(str).getString(str2, "");
    }

    public static void putInt(String str, String str2, int i) {
        SharedPreferences.Editor editorEdit = newSharedPreferences(str).edit();
        editorEdit.putInt(str2, i);
        editorEdit.commit();
    }

    public static int getInt(String str, String str2, int i) {
        return newSharedPreferences(str).getInt(str2, i);
    }

    public static void putBoolean(String str, String str2, boolean z) {
        SharedPreferences.Editor editorEdit = newSharedPreferences(str).edit();
        editorEdit.putBoolean(str2, z);
        editorEdit.commit();
    }

    public static boolean getBoolean(String str, String str2) {
        return getBoolean(str, str2, false);
    }

    public static boolean getBoolean(String str, String str2, boolean z) {
        return newSharedPreferences(str).getBoolean(str2, z);
    }

    public static void putFloat(String str, String str2, float f) {
        SharedPreferences.Editor editorEdit = newSharedPreferences(str).edit();
        editorEdit.putFloat(str2, f);
        editorEdit.commit();
    }

    public static float getFloat(Context context, String str, String str2) {
        return newSharedPreferences(str).getFloat(str2, 0.0f);
    }

    public static void putLong(String str, String str2, long j) {
        SharedPreferences.Editor editorEdit = newSharedPreferences(str).edit();
        editorEdit.putLong(str2, j);
        editorEdit.commit();
    }

    public static long getLong(String str, String str2) {
        return newSharedPreferences(str).getLong(str2, 0L);
    }

    public static <T> void putPreferences(Context context, String str, String str2, T t) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        if (t == null) {
            editorEdit.putString(str2, null);
            editorEdit.commit();
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ObjectOutputStream(byteArrayOutputStream).writeObject(t);
            editorEdit.putString(str2, new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0)));
            editorEdit.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static <T> T getPreferences(Context context, String str, String str2) {
        try {
            String string = context.getSharedPreferences(str, 0).getString(str2, "");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return (T) new ObjectInputStream(new ByteArrayInputStream(Base64.decode(string, 0))).readObject();
        } catch (OptionalDataException e) {
            e.printStackTrace();
            return null;
        } catch (StreamCorruptedException e2) {
            e2.printStackTrace();
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
