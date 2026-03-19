package com.google.android.gms.internal.p002firebaseauthapi;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.common.net.HttpHeaders;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.internal.zzai;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import net.openid.appauth.AuthState;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzwg extends AsyncTask {
    private static final Logger zza = new Logger("FirebaseAuth", "GetAuthDomainTask");
    private final String zzb;
    private final String zzc;
    private final WeakReference zzd;
    private final Uri.Builder zze;
    private final String zzf;
    private final FirebaseApp zzg;

    public zzwg(String str, String str2, Intent intent, FirebaseApp firebaseApp, zzwi zzwiVar) {
        this.zzb = Preconditions.checkNotEmpty(str);
        this.zzg = (FirebaseApp) Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(intent);
        String strCheckNotEmpty = Preconditions.checkNotEmpty(intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY"));
        Uri.Builder builderBuildUpon = Uri.parse(zzwiVar.zzc(strCheckNotEmpty)).buildUpon();
        builderBuildUpon.appendPath("getProjectConfig").appendQueryParameter(SDKConstants.PARAM_KEY, strCheckNotEmpty).appendQueryParameter("androidPackageName", str).appendQueryParameter("sha1Cert", (String) Preconditions.checkNotNull(str2));
        this.zzc = builderBuildUpon.build().toString();
        this.zzd = new WeakReference(zzwiVar);
        this.zze = zzwiVar.zzb(intent, str, str2);
        this.zzf = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(zzwf zzwfVar) {
        String strZzc;
        String strZzd;
        Uri.Builder builder;
        zzwi zzwiVar = (zzwi) this.zzd.get();
        if (zzwfVar != null) {
            strZzc = zzwfVar.zzc();
            strZzd = zzwfVar.zzd();
        } else {
            strZzc = null;
            strZzd = null;
        }
        if (zzwiVar == null) {
            zza.e("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (TextUtils.isEmpty(strZzc) || (builder = this.zze) == null) {
            zzwiVar.zze(this.zzb, zzai.zza(strZzd));
        } else {
            builder.authority(strZzc);
            zzwiVar.zzf(this.zze.build(), this.zzb);
        }
    }

    private static byte[] zzb(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        String str;
        if (!TextUtils.isEmpty(this.zzf)) {
            return zzwf.zza(this.zzf);
        }
        try {
            try {
                URL url = new URL(this.zzc);
                zzwi zzwiVar = (zzwi) this.zzd.get();
                HttpURLConnection httpURLConnectionZzd = zzwiVar.zzd(url);
                httpURLConnectionZzd.addRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json; charset=UTF-8");
                httpURLConnectionZzd.setConnectTimeout(AuthState.EXPIRY_TIME_TOLERANCE_MS);
                new zzws(zzwiVar.zza(), this.zzg, zzwq.zza().zzb()).zza(httpURLConnectionZzd);
                int responseCode = httpURLConnectionZzd.getResponseCode();
                if (responseCode != 200) {
                    try {
                    } catch (IOException e) {
                        zza.w("Error parsing error message from response body in getErrorMessageFromBody. ".concat(e.toString()), new Object[0]);
                    }
                    if (httpURLConnectionZzd.getResponseCode() >= 400) {
                        InputStream errorStream = httpURLConnectionZzd.getErrorStream();
                        str = errorStream == null ? "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again." : (String) zzwn.zza(new String(zzb(errorStream, 128)), String.class);
                    } else {
                        str = null;
                    }
                    zza.e(String.format("Error getting project config. Failed with %s %s", str, Integer.valueOf(responseCode)), new Object[0]);
                    return zzwf.zzb(str);
                }
                zzyz zzyzVar = new zzyz();
                zzyzVar.zzb(new String(zzb(httpURLConnectionZzd.getInputStream(), 128)));
                for (String str2 : zzyzVar.zzc()) {
                    if (str2.endsWith("firebaseapp.com") || str2.endsWith("web.app")) {
                        return zzwf.zza(str2);
                    }
                }
                return null;
            } catch (IOException e2) {
                zza.e("IOException occurred: ".concat(String.valueOf(e2.getMessage())), new Object[0]);
                return null;
            }
        } catch (zzui e3) {
            zza.e("ConversionException encountered: ".concat(String.valueOf(e3.getMessage())), new Object[0]);
            return null;
        } catch (NullPointerException e4) {
            zza.e("Null pointer encountered: ".concat(String.valueOf(e4.getMessage())), new Object[0]);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onCancelled(Object obj) {
        onPostExecute(null);
    }
}
