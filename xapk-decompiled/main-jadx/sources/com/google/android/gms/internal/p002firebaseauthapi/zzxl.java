package com.google.android.gms.internal.p002firebaseauthapi;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.iid.InstanceID;
import com.google.common.net.HttpHeaders;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import net.openid.appauth.AuthState;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzxl {
    public static void zza(String str, zzwo zzwoVar, zzxi zzxiVar, Type type, zzws zzwsVar) throws IllegalAccessException, InvocationTargetException {
        try {
            Preconditions.checkNotNull(zzwoVar);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoOutput(true);
            byte[] bytes = zzwoVar.zza().getBytes(Charset.defaultCharset());
            int length = bytes.length;
            httpURLConnection.setFixedLengthStreamingMode(length);
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.setConnectTimeout(AuthState.EXPIRY_TIME_TOLERANCE_MS);
            zzwsVar.zza(httpURLConnection);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream(), length);
            try {
                bufferedOutputStream.write(bytes, 0, length);
                bufferedOutputStream.close();
                zzb(httpURLConnection, zzxiVar, type);
            } catch (Throwable th) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        } catch (IOException e) {
            e = e;
            zzxiVar.zza(e.getMessage());
        } catch (NullPointerException e2) {
            e = e2;
            zzxiVar.zza(e.getMessage());
        } catch (SocketTimeoutException unused) {
            zzxiVar.zza(InstanceID.ERROR_TIMEOUT);
        } catch (UnknownHostException unused2) {
            zzxiVar.zza("<<Network Error>>");
        } catch (JSONException e3) {
            e = e3;
            zzxiVar.zza(e.getMessage());
        }
    }

    private static void zzb(HttpURLConnection httpURLConnection, zzxi zzxiVar, Type type) {
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                InputStream inputStream = zzc(responseCode) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Key.STRING_CHARSET_NAME));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            sb.append(line);
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        }
                        throw th;
                    }
                }
                bufferedReader.close();
                String string = sb.toString();
                if (zzc(responseCode)) {
                    zzxiVar.zzb((zzwp) zzwn.zza(string, type));
                } else {
                    zzxiVar.zza((String) zzwn.zza(string, String.class));
                }
                httpURLConnection.disconnect();
            } catch (zzui e) {
                e = e;
                zzxiVar.zza(e.getMessage());
                httpURLConnection.disconnect();
            } catch (SocketTimeoutException unused) {
                zzxiVar.zza(InstanceID.ERROR_TIMEOUT);
                httpURLConnection.disconnect();
            } catch (IOException e2) {
                e = e2;
                zzxiVar.zza(e.getMessage());
                httpURLConnection.disconnect();
            }
        } catch (Throwable th3) {
            httpURLConnection.disconnect();
            throw th3;
        }
    }

    private static final boolean zzc(int i) {
        return i >= 200 && i < 300;
    }
}
