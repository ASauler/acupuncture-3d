package com.unity3d.player;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bumptech.glide.load.Key;
import com.facebook.share.internal.ShareConstants;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    UnityPlayer f408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    o f409b;
    Context c;
    int d;
    VideoView e;
    ImageView f;
    ImageView g;
    TextView h;
    Timer i;
    int j;
    int k;
    boolean l;
    TimerTask m;

    class a extends AsyncTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f416b;

        a() {
        }

        private static void a(String str) throws Throwable {
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL("https://splash.unity.cn/api/diagnosis").openConnection();
            } catch (Exception unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
                httpURLConnection.setDoOutput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("type", "tracking");
                jSONObject.put("reason", str);
                jSONObject.put("platform", "android");
                byte[] bytes = jSONObject.toString().getBytes();
                outputStream.write(bytes, 0, bytes.length);
                outputStream.flush();
                outputStream.close();
                httpURLConnection.getResponseCode();
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Exception unused2) {
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final Void doInBackground(String... strArr) throws Throwable {
            HttpURLConnection httpURLConnection;
            this.f416b = strArr;
            HttpURLConnection httpURLConnection2 = null;
            if (strArr == null) {
                return null;
            }
            int i = 0;
            while (true) {
                String[] strArr2 = this.f416b;
                if (i >= strArr2.length) {
                    return null;
                }
                String str = strArr2[i];
                if (str != null) {
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(p.f(str)).openConnection();
                        try {
                            try {
                                httpURLConnection.setConnectTimeout(30000);
                                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode >= 400) {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                                    String str2 = "";
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        str2 = str2 + line;
                                    }
                                    a(str + " - " + responseCode + " - " + str2);
                                    bufferedReader.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                httpURLConnection2 = httpURLConnection;
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                }
                                throw th;
                            }
                        } catch (Exception e) {
                            e = e;
                            a(str + " - " + e.toString());
                            if (httpURLConnection != null) {
                            }
                            i++;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        httpURLConnection = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
                i++;
            }
        }
    }

    public p(Context context, UnityPlayer unityPlayer, o oVar) {
        super(context);
        this.d = 5;
        this.j = 0;
        this.k = 5;
        this.m = new TimerTask() { // from class: com.unity3d.player.p.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                p.this.f408a.runOnUiThread(new Runnable() { // from class: com.unity3d.player.p.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (p.this.l) {
                            p pVar = p.this;
                            pVar.k--;
                            p.this.h.setText("Skip " + p.this.k);
                            if (p.this.k <= 0) {
                                p.this.i();
                            }
                        }
                    }
                });
            }
        };
        this.c = context;
        this.f408a = unityPlayer;
        this.f409b = oVar;
        d();
        e();
        g();
    }

    private static String a(String str, String str2) {
        if (str == null || str.indexOf(63) == -1) {
            return null;
        }
        for (String str3 : str.split("\\?")[1].split("&")) {
            String[] strArrSplit = str3.split("=");
            if (str2.equals(strArrSplit[0])) {
                return strArrSplit[1];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (!str.startsWith("deeplinker")) {
            if (e(str)) {
                c(str);
                return;
            }
            return;
        }
        String strF = f(a(str, "primaryUrl"));
        String strF2 = f(a(str, "fallbackUrl"));
        if (d(strF) && strF != null && e(strF)) {
            if (this.f409b.h() != null) {
                new a().execute(this.f409b.h());
            }
            c(strF);
        } else {
            if (strF2 == null || !e(strF2)) {
                return;
            }
            if (this.f409b.i() != null) {
                new a().execute(this.f409b.i());
            }
            c(strF2);
        }
    }

    private void c(String str) {
        if (str == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.c.startActivity(intent);
        if (this.f409b.e() != null) {
            new a().execute(this.f409b.e());
        }
    }

    private void d() {
        if (!ShareConstants.VIDEO_URL.equals(this.f409b.j())) {
            String strB = this.f409b.b();
            if (this.f409b.b() == null || this.f409b.b() == "" || this.f != null) {
                return;
            }
            if (strB.startsWith("file://")) {
                strB = strB.substring(7);
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(strB);
            if (bitmapDecodeFile == null) {
                return;
            }
            this.f = new ImageView(this.c);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(11);
            layoutParams.addRule(9);
            this.f.setLayoutParams(layoutParams);
            this.f.setImageBitmap(bitmapDecodeFile);
            this.f.setScaleType(ImageView.ScaleType.CENTER_CROP);
            addView(this.f);
            return;
        }
        if (this.f409b.k() == null || this.f409b.k() == "" || this.e != null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(11);
        layoutParams2.addRule(9);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(this.c, Uri.parse(this.f409b.k()));
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
        ImageView imageView = new ImageView(this.c);
        imageView.setLayoutParams(layoutParams2);
        imageView.setImageBitmap(frameAtTime);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(imageView);
        VideoView videoView = new VideoView(this.c);
        this.e = videoView;
        videoView.setLayoutParams(layoutParams2);
        this.e.setVideoPath(this.f409b.k());
        addView(this.e);
    }

    private boolean d(String str) {
        if (str == null) {
            return false;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return this.c.getPackageManager().resolveActivity(intent, 0) != null;
    }

    private void e() {
        if (this.f408a.getShowSplashSlogan().booleanValue()) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), getResources().getIdentifier("unity_splash_slogan", "drawable", this.c.getPackageName()), new BitmapFactory.Options());
            this.g = new ImageView(this.c);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f408a.getShowSplashSloganHeight());
            layoutParams.addRule(11);
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            this.g.setLayoutParams(layoutParams);
            this.g.setImageBitmap(bitmapDecodeResource);
            this.g.setScaleType(ImageView.ScaleType.CENTER);
            this.g.setBackgroundColor(-1);
            addView(this.g);
        }
    }

    private static boolean e(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("http");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Uri.encode(URLDecoder.decode(str, Key.STRING_CHARSET_NAME), "@#&=*+-_.,:!?()/~'%");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private void f() {
        this.h = new TextView(this.c);
        String str = "Skip " + this.d;
        if (this.e != null) {
            str = "Skip";
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        layoutParams.rightMargin = 48;
        layoutParams.topMargin = 72;
        this.h.setLayoutParams(layoutParams);
        this.h.setText(str);
        this.h.setTextSize(15.0f);
        this.h.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-7829368);
        gradientDrawable.setCornerRadius(12.0f);
        gradientDrawable.setStroke(3, -1);
        this.h.setBackground(gradientDrawable);
        this.h.setPadding(20, 5, 20, 5);
        this.h.setAlpha(0.8f);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.unity3d.player.p.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                p.this.h();
            }
        });
        addView(this.h);
    }

    private void g() {
        TextView textView = new TextView(this.c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.leftMargin = 32;
        layoutParams.topMargin = 64;
        textView.setLayoutParams(layoutParams);
        textView.setText("ADS");
        textView.setTextSize(8.0f);
        textView.setTextColor(-7829368);
        textView.setAlpha(0.8f);
        textView.setPadding(10, 5, 10, 5);
        addView(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        VideoView videoView = this.e;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        Timer timer = this.i;
        if (timer != null) {
            timer.cancel();
        }
        this.f408a.NotifySplashAdsFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f409b.l() != null) {
            new a().execute(this.f409b.l());
        }
        h();
    }

    public final void a() {
        if (this.f409b.f() > 0) {
            int iF = this.f409b.f();
            this.d = iF;
            this.k = iF;
        }
        f();
        VideoView videoView = this.e;
        if (videoView != null) {
            videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.unity3d.player.p.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    p.this.i();
                }
            });
            this.e.start();
        } else {
            Timer timer = new Timer();
            this.i = timer;
            this.l = true;
            timer.schedule(this.m, 1000L, 1000L);
        }
        if (this.f409b.d() != null) {
            new a().execute(this.f409b.d());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.unity3d.player.p.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return true;
                }
                p pVar = p.this;
                pVar.b(pVar.f409b.c());
                return true;
            }
        });
    }

    public final void b() {
        VideoView videoView = this.e;
        if (videoView != null) {
            videoView.pause();
            this.j = this.e.getCurrentPosition();
        }
        if (this.i != null) {
            this.l = false;
        }
    }

    public final void c() {
        VideoView videoView = this.e;
        if (videoView != null) {
            videoView.start();
            this.e.seekTo(this.j);
        }
        if (this.i != null) {
            this.l = true;
        }
    }
}
