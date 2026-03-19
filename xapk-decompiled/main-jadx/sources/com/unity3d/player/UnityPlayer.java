package com.unity3d.player;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.TypedValue;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.aptoide.sdk.core.analytics.AnalyticsContent;
import com.bumptech.glide.load.Key;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.internal.ServerProtocol;
import com.unity3d.player.q;
import com.unity3d.player.v;
import com.unity3d.splash.UnityAds;
import com.unity3d.splash.services.core.device.Device;
import com.unity3d.splash.services.core.device.Storage;
import com.unity3d.splash.services.core.device.StorageManager;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.request.WebRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import net.lingala.zip4j.util.InternalZipConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UnityPlayer extends FrameLayout implements IUnityPlayerLifecycleEvents, com.unity3d.player.h {
    private static final int ANR_TIMEOUT_SECONDS = 4;
    private static final int RUN_STATE_CHANGED_MSG_CODE = 2269;
    private static final String SPLASH_ADS_GAME_ID = "unity.splash-ads-game-id";
    private static final String SPLASH_ADS_SLOGAN = "unity.splash-ads-slogan";
    private static final String SPLASH_ADS_SLOGAN_HEIGHT = "unity.splash-ads-slogan-height";
    private static final String SPLASH_CHECK_URL = "https://check.unity.cn/api/check-license";
    private static final String SPLASH_ENABLE_METADATA_NAME = "unity.splash-enable";
    private static final String SPLASH_MODE_METADATA_NAME = "unity.splash-mode";
    private static final String TANGO_ENABLE_METADATA_NAME = "unity.tango-enable";
    private static final String UNITY_BUILDER_ID = "unity.builder";
    public static Activity currentActivity;
    public static String m_AndroidFilesDir;
    private static String m_InstantGameEngine;
    private static String m_InstantGameName;
    AlertDialog ad;
    private boolean finishLaunchScreenAds;
    private Context mContext;
    private SurfaceView mGlView;
    private Handler mHanlder;
    private int mInitialScreenOrientation;
    private boolean mIsFullscreen;
    private BroadcastReceiver mKillingIsMyBusiness;
    private boolean mMainDisplayOverride;
    private int mNaturalOrientation;
    private OrientationEventListener mOrientationListener;
    private boolean mProcessKillRequested;
    private boolean mQuitting;
    n mSoftInputDialog;
    private s mState;
    private v mVideoPlayerProxy;
    private GoogleARCoreApi m_ARCoreApi;
    private boolean m_AddPhoneCallListener;
    private AudioVolumeHandler m_AudioVolumeHandler;
    private Camera2Wrapper m_Camera2Wrapper;
    private ClipboardManager m_ClipboardManager;
    private final ConcurrentLinkedQueue m_Events;
    private a m_FakeListener;
    private HFPStatus m_HFPStatus;
    g m_MainThread;
    private NetworkConnectivity m_NetworkConnectivity;
    private l m_PersistentUnitySurface;
    private c m_PhoneCallListener;
    private q m_SplashScreen;
    private TelephonyManager m_TelephonyManager;
    private IUnityPlayerLifecycleEvents m_UnityPlayerLifecycleEvents;
    private Uri m_launchUri;
    private p m_splashAdsScreen;
    private boolean shouldShowLaunchScreenAds;
    private Timer timer;
    private TimerTask timerTask;

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f349a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f350b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {1, 2, 3};
    }

    private class c extends PhoneStateListener {
        private c() {
        }

        /* synthetic */ c(UnityPlayer unityPlayer, byte b2) {
            this();
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCallStateChanged(int i, String str) {
            UnityPlayer.this.nativeMuteMasterAudio(i == 1);
        }
    }

    class d extends AsyncTask {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final Void doInBackground(String... strArr) {
            Boolean.valueOf(false);
            String str = strArr[0];
            String str2 = strArr[1];
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("game_bundle_id", str);
                jSONObject.put("game_bundle_hash", str2);
                WebRequest webRequest = new WebRequest(UnityPlayer.SPLASH_CHECK_URL, "POST", null);
                webRequest.setBody(jSONObject.toString());
                String strMakeRequest = webRequest.makeRequest();
                if (webRequest.getResponseCode() == 200 && Boolean.valueOf(new JSONObject(strMakeRequest).optBoolean("registered")).booleanValue()) {
                    i.Log(4, "Game Bundle Registered");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

    class e extends AsyncTask {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final Void doInBackground(String... strArr) {
            Boolean.valueOf(false);
            Boolean.valueOf(false);
            Boolean.valueOf(false);
            String str = strArr[0];
            try {
                String str2 = Build.MANUFACTURER + InternalZipConstants.ZIP_FILE_SEPARATOR + Build.MODEL + InternalZipConstants.ZIP_FILE_SEPARATOR + Build.DEVICE;
                String strHash_sha256 = UnityPlayer.hash_sha256(str);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("game_bundle_hash", strHash_sha256);
                jSONObject.put(AnalyticsContent.MODEL, str2);
                jSONObject.put("platform", "android");
                jSONObject.put("unity_hash", UnityPlayer.this.getDeviceId());
                jSONObject.put("splash_sdk_version", "2019.4.36f1c1");
                jSONObject.put("mcc", strArr[1]);
                jSONObject.put("builder", UnityPlayer.this.getBuilderUserId());
                WebRequest webRequest = new WebRequest(UnityPlayer.SPLASH_CHECK_URL + UnityPlayer.getQueryString(jSONObject), ShareTarget.METHOD_GET, null);
                String strMakeRequest = webRequest.makeRequest();
                if (webRequest.getResponseCode() != 200) {
                    return null;
                }
                JSONObject jSONObject2 = new JSONObject(strMakeRequest);
                Boolean boolValueOf = Boolean.valueOf(jSONObject2.optBoolean("blocked"));
                Boolean boolValueOf2 = Boolean.valueOf(jSONObject2.optBoolean("show_ads"));
                String strOptString = jSONObject2.optString("game_id");
                if (!Boolean.valueOf(jSONObject2.optBoolean("registered")).booleanValue()) {
                    UnityPlayer.this.new d().execute(str, strHash_sha256);
                }
                if (UnityPlayer.currentActivity == null) {
                    return null;
                }
                String splashGameId = UnityPlayer.this.getSplashGameId();
                if (splashGameId != null && splashGameId.length() > 0) {
                    boolValueOf2 = true;
                    strOptString = splashGameId;
                }
                SharedPreferences.Editor editorEdit = UnityPlayer.currentActivity.getSharedPreferences("game_detail", 0).edit();
                editorEdit.putString("game_id", strOptString);
                editorEdit.putBoolean("show_ads", boolValueOf2.booleanValue());
                editorEdit.putBoolean("blocked", boolValueOf.booleanValue());
                editorEdit.putString("url", jSONObject2.optString("url"));
                editorEdit.putString("hash", jSONObject2.optString("hash"));
                editorEdit.putString(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, jSONObject2.optString(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION));
                editorEdit.commit();
                if (boolValueOf.booleanValue() || !boolValueOf2.booleanValue() || strOptString == null || strOptString == "") {
                    return null;
                }
                UnityAds.initialize(UnityPlayer.currentActivity, strOptString, null);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    enum f {
        PAUSE,
        RESUME,
        QUIT,
        SURFACE_LOST,
        SURFACE_ACQUIRED,
        FOCUS_LOST,
        FOCUS_GAINED,
        NEXT_FRAME,
        URL_ACTIVATED,
        ORIENTATION_ANGLE_CHANGE,
        SPLASH_ADS_DISMISS
    }

    private class g extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Handler f356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f357b;
        boolean c;
        int d;
        int e;
        int f;
        int g;
        boolean h;
        int i;
        int j;

        private g() {
            this.f357b = false;
            this.c = false;
            this.d = b.f350b;
            this.e = 0;
            this.h = false;
            this.i = 5;
            this.j = 5;
        }

        /* synthetic */ g(UnityPlayer unityPlayer, byte b2) {
            this();
        }

        private void a(f fVar) {
            Handler handler = this.f356a;
            if (handler != null) {
                Message.obtain(handler, UnityPlayer.RUN_STATE_CHANGED_MSG_CODE, fVar).sendToTarget();
            }
        }

        public final void a() {
            a(f.QUIT);
        }

        public final void a(int i, int i2) {
            this.f = i;
            this.g = i2;
            a(f.ORIENTATION_ANGLE_CHANGE);
        }

        public final void a(Runnable runnable) {
            if (this.f356a == null) {
                return;
            }
            a(f.PAUSE);
            Message.obtain(this.f356a, runnable).sendToTarget();
        }

        public final void b() {
            a(f.RESUME);
        }

        public final void b(Runnable runnable) {
            if (this.f356a == null) {
                return;
            }
            a(f.SURFACE_LOST);
            Message.obtain(this.f356a, runnable).sendToTarget();
        }

        public final void c() {
            a(f.FOCUS_GAINED);
        }

        public final void c(Runnable runnable) {
            Handler handler = this.f356a;
            if (handler == null) {
                return;
            }
            Message.obtain(handler, runnable).sendToTarget();
            a(f.SURFACE_ACQUIRED);
        }

        public final void d() {
            a(f.FOCUS_LOST);
        }

        public final void d(Runnable runnable) {
            Handler handler = this.f356a;
            if (handler != null) {
                Message.obtain(handler, runnable).sendToTarget();
            }
        }

        public final void e() {
            a(f.URL_ACTIVATED);
        }

        public final void f() {
            a(f.SPLASH_ADS_DISMISS);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            setName("UnityMain");
            Looper.prepare();
            this.f356a = new Handler(new Handler.Callback() { // from class: com.unity3d.player.UnityPlayer.g.1
                private void a() {
                    if (g.this.d == b.c && g.this.c) {
                        UnityPlayer.this.nativeFocusChanged(true);
                        g.this.d = b.f349a;
                    }
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    if (message.what != UnityPlayer.RUN_STATE_CHANGED_MSG_CODE) {
                        return false;
                    }
                    f fVar = (f) message.obj;
                    if (fVar == f.NEXT_FRAME) {
                        g.this.e--;
                        UnityPlayer.this.executeGLThreadJobs();
                        if (!g.this.f357b || !g.this.c) {
                            return true;
                        }
                        if (g.this.i >= 0) {
                            if (g.this.i == 0 && UnityPlayer.this.getSplashEnabled()) {
                                UnityPlayer.this.DisableStaticSplashScreen();
                            }
                            g.this.i--;
                        }
                        if (g.this.i == 0 && UnityPlayer.this.shouldShowLaunchScreenAds) {
                            UnityPlayer.this.ShowSplashAdsScreen();
                        }
                        if (g.this.h && g.this.j >= 0) {
                            if (g.this.j == 0) {
                                UnityPlayer.this.DisableSplashAdsScreen();
                            }
                            g.this.j--;
                        }
                        if (!UnityPlayer.this.isFinishing() && !UnityPlayer.this.nativeRender()) {
                            UnityPlayer.this.finish();
                        }
                    } else if (fVar == f.QUIT) {
                        Looper.myLooper().quit();
                    } else if (fVar == f.RESUME) {
                        g.this.f357b = true;
                    } else if (fVar == f.PAUSE) {
                        g.this.f357b = false;
                    } else if (fVar == f.SURFACE_LOST) {
                        g.this.c = false;
                    } else {
                        if (fVar == f.SURFACE_ACQUIRED) {
                            g.this.c = true;
                        } else if (fVar == f.FOCUS_LOST) {
                            if (g.this.d == b.f349a) {
                                UnityPlayer.this.nativeFocusChanged(false);
                            }
                            g.this.d = b.f350b;
                        } else if (fVar == f.FOCUS_GAINED) {
                            g.this.d = b.c;
                        } else if (fVar == f.URL_ACTIVATED) {
                            UnityPlayer.this.nativeSetLaunchURL(UnityPlayer.this.getLaunchURL());
                        } else if (fVar == f.ORIENTATION_ANGLE_CHANGE) {
                            UnityPlayer.this.nativeOrientationChanged(g.this.f, g.this.g);
                        } else if (fVar == f.SPLASH_ADS_DISMISS) {
                            g.this.h = true;
                        }
                        a();
                    }
                    if (g.this.f357b && g.this.e <= 0) {
                        Message.obtain(g.this.f356a, UnityPlayer.RUN_STATE_CHANGED_MSG_CODE, f.NEXT_FRAME).sendToTarget();
                        g.this.e++;
                    }
                    return true;
                }
            });
            Looper.loop();
        }
    }

    private abstract class h implements Runnable {
        private h() {
        }

        /* synthetic */ h(UnityPlayer unityPlayer, byte b2) {
            this();
        }

        public abstract void a();

        @Override // java.lang.Runnable
        public final void run() {
            if (UnityPlayer.this.isFinishing()) {
                return;
            }
            a();
        }
    }

    static {
        new C0090r().a();
    }

    public UnityPlayer(Context context) {
        this(context, null);
    }

    public UnityPlayer(Context context, IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents) {
        super(context);
        this.mInitialScreenOrientation = -1;
        byte b2 = 0;
        this.mMainDisplayOverride = false;
        this.mIsFullscreen = true;
        this.mState = new s();
        this.m_Events = new ConcurrentLinkedQueue();
        this.mKillingIsMyBusiness = null;
        this.mOrientationListener = null;
        this.m_MainThread = new g(this, b2);
        this.m_AddPhoneCallListener = false;
        this.m_PhoneCallListener = new c(this, b2);
        this.m_ARCoreApi = null;
        this.m_FakeListener = new a();
        this.m_Camera2Wrapper = null;
        this.m_HFPStatus = null;
        this.m_AudioVolumeHandler = null;
        this.m_launchUri = null;
        this.m_NetworkConnectivity = null;
        this.finishLaunchScreenAds = false;
        this.shouldShowLaunchScreenAds = false;
        this.m_UnityPlayerLifecycleEvents = null;
        this.mProcessKillRequested = true;
        this.mSoftInputDialog = null;
        this.ad = null;
        this.mHanlder = null;
        this.timer = new Timer();
        this.timerTask = null;
        this.m_UnityPlayerLifecycleEvents = iUnityPlayerLifecycleEvents;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            currentActivity = activity;
            this.mInitialScreenOrientation = activity.getRequestedOrientation();
            this.m_launchUri = currentActivity.getIntent().getData();
            m_InstantGameName = currentActivity.getIntent().getStringExtra("instantGame");
            String stringExtra = currentActivity.getIntent().getStringExtra("engineFolder");
            m_InstantGameEngine = stringExtra;
            if (stringExtra == null) {
                m_InstantGameEngine = "2019";
            }
            m_AndroidFilesDir = context.getFilesDir().getAbsolutePath();
            if (m_InstantGameName != null) {
                String stringExtra2 = currentActivity.getIntent().getStringExtra("unity");
                currentActivity.getIntent().putExtra("unity", (((stringExtra2 == null ? "" : stringExtra2) + " -instantGame " + m_InstantGameName) + " -instantGameEngine " + m_InstantGameEngine) + " -overrideMonoSearchPath " + ((m_AndroidFilesDir + "/UnityPlayers/" + m_InstantGameEngine) + "/Managed"));
            }
        }
        EarlyEnableFullScreenIfVrLaunched(currentActivity);
        this.mContext = context;
        this.mNaturalOrientation = getNaturalOrientation(getResources().getConfiguration().orientation);
        if (currentActivity != null && getSplashEnabled()) {
            q qVar = new q(this.mContext, q.a.a()[getSplashMode()]);
            this.m_SplashScreen = qVar;
            addView(qVar);
        }
        hideStatusBar();
        String strLoadNative = loadNative(this.mContext.getApplicationInfo());
        if (currentActivity != null) {
            this.m_PersistentUnitySurface = new l(this.mContext);
        }
        if (!s.c()) {
            i.Log(6, "Your hardware does not support this application.");
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.mContext).setTitle("Failure to initialize!").setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.unity3d.player.UnityPlayer.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    UnityPlayer.this.finish();
                }
            }).setMessage("Your hardware does not support this application.\n\n" + strLoadNative + "\n\n Press OK to quit.").create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.show();
            return;
        }
        initJni(context);
        this.mState.c(true);
        registerLaunch();
        SurfaceView surfaceViewCreateGlView = CreateGlView();
        this.mGlView = surfaceViewCreateGlView;
        surfaceViewCreateGlView.setContentDescription(GetGlViewContentDescription(context));
        addView(this.mGlView);
        if (this.shouldShowLaunchScreenAds) {
            p pVarGenerateSplashView = generateSplashView(this.mContext);
            this.m_splashAdsScreen = pVarGenerateSplashView;
            if (pVarGenerateSplashView != null) {
                addView(pVarGenerateSplashView);
            } else {
                this.finishLaunchScreenAds = true;
            }
        }
        View view = this.m_SplashScreen;
        if (view != null) {
            bringChildToFront(view);
        }
        this.mQuitting = false;
        hideStatusBar();
        this.m_TelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        this.m_ClipboardManager = (ClipboardManager) this.mContext.getSystemService("clipboard");
        this.m_Camera2Wrapper = new Camera2Wrapper(this.mContext);
        this.m_HFPStatus = new HFPStatus(this.mContext);
        this.m_MainThread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SurfaceView CreateGlView() {
        SurfaceView surfaceView = new SurfaceView(this.mContext);
        surfaceView.setId(this.mContext.getResources().getIdentifier("unitySurfaceView", "id", this.mContext.getPackageName()));
        if (IsWindowTranslucent()) {
            surfaceView.getHolder().setFormat(-3);
            surfaceView.setZOrderOnTop(true);
        } else {
            surfaceView.getHolder().setFormat(-1);
        }
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.unity3d.player.UnityPlayer.30
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                UnityPlayer.this.updateGLDisplay(0, surfaceHolder.getSurface());
                UnityPlayer.this.sendSurfaceChangedEvent();
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                UnityPlayer.this.updateGLDisplay(0, surfaceHolder.getSurface());
                if (UnityPlayer.this.m_PersistentUnitySurface != null) {
                    UnityPlayer.this.m_PersistentUnitySurface.a(UnityPlayer.this);
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                if (UnityPlayer.this.m_PersistentUnitySurface != null) {
                    UnityPlayer.this.m_PersistentUnitySurface.a(UnityPlayer.this.mGlView);
                }
                UnityPlayer.this.updateGLDisplay(0, null);
            }
        });
        surfaceView.setFocusable(true);
        surfaceView.setFocusableInTouchMode(true);
        return surfaceView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DisableSplashAdsScreen() {
        if (this.m_splashAdsScreen != null) {
            final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.unity3d.player.UnityPlayer.28
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    UnityPlayer.this.runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.28.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            UnityPlayer.this.removeView(UnityPlayer.this.m_splashAdsScreen);
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.29
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.m_splashAdsScreen.startAnimation(alphaAnimation);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DisableStaticSplashScreen() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.22
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer unityPlayer = UnityPlayer.this;
                unityPlayer.removeView(unityPlayer.m_SplashScreen);
                UnityPlayer.this.m_SplashScreen = null;
            }
        });
    }

    private void EarlyEnableFullScreenIfVrLaunched(Activity activity) {
        View decorView;
        if (activity == null || !activity.getIntent().getBooleanExtra("android.intent.extra.VR_LAUNCH", false) || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        decorView.setSystemUiVisibility(7);
    }

    private String GetGlViewContentDescription(Context context) {
        return context.getResources().getString(context.getResources().getIdentifier("game_view_content_description", TypedValues.Custom.S_STRING, context.getPackageName()));
    }

    private boolean IsWindowTranslucent() {
        if (currentActivity == null) {
            return false;
        }
        TypedValue typedValue = new TypedValue();
        return currentActivity.getTheme().resolveAttribute(android.R.attr.windowIsTranslucent, typedValue, true) && typedValue.type == 18 && typedValue.data != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowSplashAdsScreen() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.27
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.m_splashAdsScreen != null) {
                    UnityPlayer unityPlayer = UnityPlayer.this;
                    unityPlayer.bringChildToFront(unityPlayer.m_splashAdsScreen);
                    UnityPlayer.this.m_splashAdsScreen.a();
                }
            }
        });
    }

    public static void UnitySendMessage(String str, String str2, String str3) {
        if (!s.c()) {
            i.Log(5, "Native libraries not loaded - dropping message for " + str + "." + str2);
        } else {
            try {
                nativeUnitySendMessage(str, str2, str3.getBytes(Key.STRING_CHARSET_NAME));
            } catch (UnsupportedEncodingException unused) {
            }
        }
    }

    private static String bin2hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Integer.valueOf(b2 & 255)));
        }
        return sb.toString();
    }

    private void checkResumePlayer() {
        Activity activity = currentActivity;
        if (this.mState.e(activity != null ? MultiWindowSupport.getAllowResizableWindow(activity) : false)) {
            this.mState.d(true);
            queueGLThreadEvent(new Runnable() { // from class: com.unity3d.player.UnityPlayer.6
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeResume();
                    UnityPlayer.this.runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.6.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (UnityPlayer.this.m_PersistentUnitySurface != null) {
                                UnityPlayer.this.m_PersistentUnitySurface.b(UnityPlayer.this);
                            }
                        }
                    });
                }
            });
            this.m_MainThread.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        Context context = this.mContext;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing()) {
            return;
        }
        ((Activity) this.mContext).finish();
    }

    private p generateSplashView(Context context) {
        StorageManager.init(context);
        Storage storage = StorageManager.getStorage(StorageManager.StorageType.PRIVATE);
        if (storage == null) {
            return null;
        }
        Object obj = storage.get("splash-show");
        if (obj != null) {
            try {
                o oVar = new o(new JSONObject(obj.toString()));
                if (oVar.a()) {
                    DeviceLog.info("splash show");
                    if (oVar.g() >= System.currentTimeMillis()) {
                        DeviceLog.info("splash show");
                        storage.delete("splash-show");
                        return new p(this.mContext, this, oVar);
                    }
                }
            } catch (JSONException unused) {
            }
        }
        Object obj2 = storage.get("splash-show-no-fill");
        if (obj2 != null) {
            try {
                DeviceLog.info("splash show no fill");
                o oVar2 = new o(new JSONObject(obj2.toString()));
                if (oVar2.a()) {
                    return new p(this.mContext, this, oVar2);
                }
            } catch (JSONException unused2) {
            }
        }
        DeviceLog.info("splash show nothing");
        return null;
    }

    private ApplicationInfo getApplicationInfo() {
        return this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128);
    }

    private int getNaturalOrientation(int i) {
        int rotation = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if ((rotation == 0 || rotation == 2) && i == 2) {
            return 0;
        }
        return ((rotation == 1 || rotation == 3) && i == 1) ? 0 : 1;
    }

    private String getProcessName() {
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.mContext.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getQueryString(JSONObject jSONObject) {
        if (jSONObject == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> itKeys = jSONObject.keys();
        sb.append("?");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObject.optString(next);
            if (strOptString != "") {
                try {
                    strOptString = URLEncoder.encode(strOptString, "utf-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                sb.append(next).append("=").append(strOptString).append("&");
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getSplashEnabled() {
        try {
            return getApplicationInfo().metaData.getBoolean(SPLASH_ENABLE_METADATA_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSplashGameId() {
        try {
            return getApplicationInfo().metaData.getString(SPLASH_ADS_GAME_ID);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean getTangoEnabled() {
        try {
            return getApplicationInfo().metaData.getBoolean(TANGO_ENABLE_METADATA_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String hash_sha256(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            return bin2hex(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private void hideStatusBar() {
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).getWindow().setFlags(1024, 1024);
        }
    }

    private final native void initJni(Context context);

    protected static boolean loadLibraryStatic(String str) {
        StringBuilder sbAppend;
        try {
            System.loadLibrary(str);
            return true;
        } catch (Exception e2) {
            sbAppend = new StringBuilder("Unknown error ").append(e2);
            i.Log(6, sbAppend.toString());
            return false;
        } catch (UnsatisfiedLinkError unused) {
            sbAppend = new StringBuilder("Unable to find ").append(str);
            i.Log(6, sbAppend.toString());
            return false;
        }
    }

    private static String loadNative(ApplicationInfo applicationInfo) {
        String string;
        String str = applicationInfo.nativeLibraryDir + "/libmain.so";
        try {
            System.loadLibrary("main");
            if (NativeLoader.load(m_InstantGameName == null ? applicationInfo.nativeLibraryDir : m_AndroidFilesDir + "/UnityPlayers/" + m_InstantGameEngine)) {
                s.a();
                return "";
            }
            i.Log(6, "NativeLoader.load failure, Unity libraries were not loaded.");
            return "NativeLoader.load failure, Unity libraries were not loaded.";
        } catch (SecurityException e2) {
            string = e2.toString();
            return logLoadLibMainError(str, string);
        } catch (UnsatisfiedLinkError e3) {
            string = e3.toString();
            return logLoadLibMainError(str, string);
        }
    }

    private static String logLoadLibMainError(String str, String str2) {
        String str3 = "Failed to load 'libmain.so'\n\n" + str2;
        i.Log(6, str3);
        return str3;
    }

    private final native void nativeApplicationUnload();

    private final native boolean nativeDone();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeFocusChanged(boolean z);

    private final native boolean nativeInjectEvent(InputEvent inputEvent);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativeIsAutorotationOn();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeLowMemory();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeMuteMasterAudio(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeOrientationChanged(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativePause();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeRecreateGfxState(int i, Surface surface);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativeRender();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeReportKeyboardConfigChanged();

    private final native void nativeRestartActivityIndicator();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeResume();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSendSurfaceChangedEvent();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputArea(int i, int i2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputSelection(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputString(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetKeyboardIsVisible(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetLaunchURL(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputCanceled();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputClosed();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputLostFocus();

    private static native void nativeUnitySendMessage(String str, String str2, byte[] bArr);

    private void pauseUnity() {
        reportSoftInputStr(null, 1, true);
        if (this.mState.f()) {
            if (s.c()) {
                final Semaphore semaphore = new Semaphore(0);
                this.m_MainThread.a(isFinishing() ? new Runnable() { // from class: com.unity3d.player.UnityPlayer.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnityPlayer.this.shutdown();
                        semaphore.release();
                    }
                } : new Runnable() { // from class: com.unity3d.player.UnityPlayer.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!UnityPlayer.this.nativePause()) {
                            semaphore.release();
                            return;
                        }
                        UnityPlayer.this.mQuitting = true;
                        UnityPlayer.this.shutdown();
                        semaphore.release(2);
                    }
                });
                try {
                    if (!semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                        i.Log(5, "Timeout while trying to pause the Unity Engine.");
                    }
                } catch (InterruptedException unused) {
                    i.Log(5, "UI thread got interrupted while trying to pause the Unity Engine.");
                }
                if (semaphore.drainPermits() > 0) {
                    destroy();
                }
            }
            this.mState.d(false);
            this.mState.b(true);
            if (this.m_AddPhoneCallListener) {
                this.m_TelephonyManager.listen(this.m_PhoneCallListener, 0);
            }
        }
    }

    private void queueGLThreadEvent(h hVar) {
        if (isFinishing()) {
            return;
        }
        queueGLThreadEvent((Runnable) hVar);
    }

    private void queueGLThreadEvent(Runnable runnable) {
        if (s.c()) {
            if (Thread.currentThread() == this.m_MainThread) {
                runnable.run();
            } else {
                this.m_Events.add(runnable);
            }
        }
    }

    private void registerLaunch() {
        Boolean.valueOf(false);
        Boolean.valueOf(false);
        Activity activity = currentActivity;
        if (activity != null) {
            SharedPreferences sharedPreferences = activity.getSharedPreferences("game_detail", 0);
            String string = sharedPreferences.getString("game_id", "");
            Boolean boolValueOf = Boolean.valueOf(sharedPreferences.getBoolean("show_ads", false));
            Boolean boolValueOf2 = Boolean.valueOf(sharedPreferences.getBoolean("blocked", false));
            if (boolValueOf2.booleanValue() || !boolValueOf.booleanValue() || string == "") {
                this.shouldShowLaunchScreenAds = false;
                if (boolValueOf2.booleanValue()) {
                    showBlockDialog();
                }
            } else {
                this.shouldShowLaunchScreenAds = true;
                UnityAds.initialize(currentActivity, string, null);
            }
        } else {
            this.shouldShowLaunchScreenAds = false;
        }
        new e().execute(getContext().getPackageName(), Device.getSIMMCC(getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSurfaceChangedEvent() {
        if (s.c() && this.mState.e()) {
            this.m_MainThread.d(new Runnable() { // from class: com.unity3d.player.UnityPlayer.31
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeSendSurfaceChangedEvent();
                }
            });
        }
    }

    private void showBlockDialog() {
        this.ad = new AlertDialog.Builder(this.mContext).setTitle("Sorry").setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.unity3d.player.UnityPlayer.23
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                UnityPlayer.this.mHanlder.sendEmptyMessage(1);
            }
        }).setMessage("The app is using unauthorized engine, please contact the publisher!").setCancelable(false).create();
        this.mHanlder = new Handler() { // from class: com.unity3d.player.UnityPlayer.24
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i = message.what;
                if (i != 0) {
                    if (i == 1 && UnityPlayer.this.ad != null && UnityPlayer.this.ad.isShowing()) {
                        UnityPlayer.this.ad.hide();
                    }
                } else if (UnityPlayer.this.ad != null && !UnityPlayer.this.ad.isShowing()) {
                    UnityPlayer.this.ad.show();
                }
                super.handleMessage(message);
            }
        };
        TimerTask timerTask = new TimerTask() { // from class: com.unity3d.player.UnityPlayer.25
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                UnityPlayer.this.mHanlder.sendEmptyMessage(0);
            }
        };
        this.timerTask = timerTask;
        this.timer.schedule(timerTask, 0L, AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdown() {
        this.mProcessKillRequested = nativeDone();
        this.mState.c(false);
    }

    private void swapViews(View view, View view2) {
        boolean z;
        if (this.mState.d()) {
            z = false;
        } else {
            pause();
            z = true;
        }
        if (view != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof UnityPlayer) || ((UnityPlayer) parent) != this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                addView(view);
                bringChildToFront(view);
                view.setVisibility(0);
            }
        }
        if (view2 != null && view2.getParent() == this) {
            view2.setVisibility(8);
            removeView(view2);
        }
        if (z) {
            resume();
        }
    }

    private static void unloadNative() {
        if (s.c()) {
            if (!NativeLoader.unload()) {
                throw new UnsatisfiedLinkError("Unable to unload libraries from libmain.so");
            }
            s.b();
        }
    }

    private boolean updateDisplayInternal(final int i, final Surface surface) {
        if (!s.c() || !this.mState.e()) {
            return false;
        }
        final Semaphore semaphore = new Semaphore(0);
        Runnable runnable = new Runnable() { // from class: com.unity3d.player.UnityPlayer.32
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.nativeRecreateGfxState(i, surface);
                semaphore.release();
            }
        };
        if (i == 0) {
            g gVar = this.m_MainThread;
            if (surface == null) {
                gVar.b(runnable);
            } else {
                gVar.c(runnable);
            }
        } else {
            runnable.run();
        }
        if (surface != null || i != 0) {
            return true;
        }
        try {
            if (semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                return true;
            }
            i.Log(5, "Timeout while trying detaching primary window.");
            return true;
        } catch (InterruptedException unused) {
            i.Log(5, "UI thread got interrupted while trying to detach the primary window from the Unity Engine.");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGLDisplay(int i, Surface surface) {
        if (this.mMainDisplayOverride) {
            return;
        }
        updateDisplayInternal(i, surface);
    }

    public void NotifySplashAdsFinished() {
        this.finishLaunchScreenAds = true;
        this.m_MainThread.f();
    }

    protected void addPhoneCallListener() {
        this.m_AddPhoneCallListener = true;
        this.m_TelephonyManager.listen(this.m_PhoneCallListener, 32);
    }

    @Override // com.unity3d.player.h
    public boolean addViewToPlayer(View view, boolean z) {
        swapViews(view, z ? this.mGlView : null);
        boolean z2 = true;
        boolean z3 = view.getParent() == this;
        boolean z4 = z && this.mGlView.getParent() == null;
        boolean z5 = this.mGlView.getParent() == this;
        if (!z3 || (!z4 && !z5)) {
            z2 = false;
        }
        if (!z2) {
            if (!z3) {
                i.Log(6, "addViewToPlayer: Failure adding view to hierarchy");
            }
            if (!z4 && !z5) {
                i.Log(6, "addViewToPlayer: Failure removing old view from hierarchy");
            }
        }
        return z2;
    }

    public void configurationChanged(Configuration configuration) {
        SurfaceView surfaceView = this.mGlView;
        if (surfaceView instanceof SurfaceView) {
            surfaceView.getHolder().setSizeFromLayout();
        }
        v vVar = this.mVideoPlayerProxy;
        if (vVar != null) {
            vVar.c();
        }
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.c();
        }
    }

    public void destroy() {
        if (GoogleVrApi.b() != null) {
            GoogleVrApi.a();
        }
        l lVar = this.m_PersistentUnitySurface;
        if (lVar != null) {
            lVar.a();
            this.m_PersistentUnitySurface = null;
        }
        Camera2Wrapper camera2Wrapper = this.m_Camera2Wrapper;
        if (camera2Wrapper != null) {
            camera2Wrapper.a();
            this.m_Camera2Wrapper = null;
        }
        HFPStatus hFPStatus = this.m_HFPStatus;
        if (hFPStatus != null) {
            hFPStatus.a();
            this.m_HFPStatus = null;
        }
        NetworkConnectivity networkConnectivity = this.m_NetworkConnectivity;
        if (networkConnectivity != null) {
            networkConnectivity.b();
            this.m_NetworkConnectivity = null;
        }
        this.mQuitting = true;
        if (!this.mState.d()) {
            pause();
        }
        this.m_MainThread.a();
        try {
            this.m_MainThread.join(4000L);
        } catch (InterruptedException unused) {
            this.m_MainThread.interrupt();
        }
        BroadcastReceiver broadcastReceiver = this.mKillingIsMyBusiness;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
        this.mKillingIsMyBusiness = null;
        if (s.c()) {
            removeAllViews();
        }
        if (this.mProcessKillRequested) {
            IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents = this.m_UnityPlayerLifecycleEvents;
            if (iUnityPlayerLifecycleEvents != null) {
                iUnityPlayerLifecycleEvents.onUnityPlayerQuitted();
            } else {
                onUnityPlayerQuitted();
            }
            kill();
        }
        unloadNative();
    }

    protected void disableLogger() {
        i.f392a = true;
    }

    public boolean displayChanged(int i, Surface surface) {
        if (i == 0) {
            this.mMainDisplayOverride = surface != null;
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (UnityPlayer.this.mMainDisplayOverride) {
                        UnityPlayer unityPlayer = UnityPlayer.this;
                        unityPlayer.removeView(unityPlayer.mGlView);
                    } else {
                        UnityPlayer unityPlayer2 = UnityPlayer.this;
                        unityPlayer2.addView(unityPlayer2.mGlView);
                    }
                }
            });
        }
        return updateDisplayInternal(i, surface);
    }

    protected void executeGLThreadJobs() {
        while (true) {
            Runnable runnable = (Runnable) this.m_Events.poll();
            if (runnable == null) {
                return;
            } else {
                runnable.run();
            }
        }
    }

    protected String getBuilderUserId() {
        try {
            return getApplicationInfo().metaData.getString(UNITY_BUILDER_ID);
        } catch (Exception unused) {
            return null;
        }
    }

    protected String getClipboardText() {
        ClipData primaryClip = this.m_ClipboardManager.getPrimaryClip();
        return primaryClip != null ? primaryClip.getItemAt(0).coerceToText(this.mContext).toString() : "";
    }

    public String getDeviceId() {
        Activity activity = currentActivity;
        if (activity == null) {
            return "";
        }
        SharedPreferences sharedPreferences = activity.getSharedPreferences("device_detail", 0);
        String string = sharedPreferences.getString("device_id", null);
        if (string != null) {
            return string;
        }
        String uniqueEventId = Device.getUniqueEventId();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("device_id", uniqueEventId);
        editorEdit.commit();
        return uniqueEventId;
    }

    protected String getKeyboardLayout() {
        n nVar = this.mSoftInputDialog;
        if (nVar == null) {
            return null;
        }
        return nVar.a();
    }

    protected String getLaunchURL() {
        Uri uri = this.m_launchUri;
        if (uri != null) {
            return uri.toString();
        }
        return null;
    }

    protected int getNetworkConnectivity() {
        if (!m.c) {
            return 0;
        }
        if (this.m_NetworkConnectivity == null) {
            this.m_NetworkConnectivity = new NetworkConnectivity(this.mContext);
        }
        return this.m_NetworkConnectivity.a();
    }

    public String getNetworkProxySettings(String str) {
        String str2;
        String str3;
        if (!str.startsWith("http:")) {
            if (str.startsWith("https:")) {
                str2 = "https.proxyHost";
                str3 = "https.proxyPort";
            }
            return null;
        }
        str2 = "http.proxyHost";
        str3 = "http.proxyPort";
        String property = System.getProperties().getProperty(str2);
        if (property != null && !"".equals(property)) {
            StringBuilder sb = new StringBuilder(property);
            String property2 = System.getProperties().getProperty(str3);
            if (property2 != null && !"".equals(property2)) {
                sb.append(":").append(property2);
            }
            String property3 = System.getProperties().getProperty("http.nonProxyHosts");
            if (property3 != null && !"".equals(property3)) {
                sb.append('\n').append(property3);
            }
            return sb.toString();
        }
        return null;
    }

    public Bundle getSettings() {
        return Bundle.EMPTY;
    }

    protected Boolean getShowSplashSlogan() {
        try {
            return Boolean.valueOf(getApplicationInfo().metaData.getBoolean(SPLASH_ADS_SLOGAN));
        } catch (Exception unused) {
            return false;
        }
    }

    protected int getShowSplashSloganHeight() {
        try {
            return getApplicationInfo().metaData.getInt(SPLASH_ADS_SLOGAN_HEIGHT, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        } catch (Exception unused) {
            return 150;
        }
    }

    protected int getSplashMode() {
        try {
            return getApplicationInfo().metaData.getInt(SPLASH_MODE_METADATA_NAME);
        } catch (Exception unused) {
            return 0;
        }
    }

    protected int getUaaLLaunchProcessType() {
        String processName = getProcessName();
        return (processName == null || processName.equals(this.mContext.getPackageName())) ? 0 : 1;
    }

    public View getView() {
        return this;
    }

    protected void hideSoftInput() {
        postOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.8
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.reportSoftInputArea(new Rect());
                UnityPlayer.this.reportSoftInputIsVisible(false);
                if (UnityPlayer.this.mSoftInputDialog != null) {
                    UnityPlayer.this.mSoftInputDialog.dismiss();
                    UnityPlayer.this.mSoftInputDialog = null;
                    UnityPlayer.this.nativeReportKeyboardConfigChanged();
                }
            }
        });
    }

    public void init(int i, boolean z) {
    }

    protected boolean initializeGoogleAr() {
        if (this.m_ARCoreApi != null || currentActivity == null || !getTangoEnabled()) {
            return false;
        }
        GoogleARCoreApi googleARCoreApi = new GoogleARCoreApi();
        this.m_ARCoreApi = googleARCoreApi;
        googleARCoreApi.initializeARCore(currentActivity);
        if (this.mState.d()) {
            return false;
        }
        this.m_ARCoreApi.resumeARCore();
        return false;
    }

    protected boolean initializeGoogleVr() {
        final GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB == null) {
            GoogleVrApi.a(this);
            googleVrProxyB = GoogleVrApi.b();
            if (googleVrProxyB == null) {
                i.Log(6, "Unable to create Google VR subsystem.");
                return false;
            }
        }
        final Semaphore semaphore = new Semaphore(0);
        final Runnable runnable = new Runnable() { // from class: com.unity3d.player.UnityPlayer.17
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.injectEvent(new KeyEvent(0, 4));
                UnityPlayer.this.injectEvent(new KeyEvent(1, 4));
            }
        };
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.18
            @Override // java.lang.Runnable
            public final void run() {
                if (!googleVrProxyB.a(UnityPlayer.currentActivity, UnityPlayer.this.mContext, UnityPlayer.this.CreateGlView(), runnable)) {
                    i.Log(6, "Unable to initialize Google VR subsystem.");
                }
                if (UnityPlayer.currentActivity != null) {
                    googleVrProxyB.a(UnityPlayer.currentActivity.getIntent());
                }
                semaphore.release();
            }
        });
        try {
            if (semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                return googleVrProxyB.a();
            }
            i.Log(5, "Timeout while trying to initialize Google VR.");
            return false;
        } catch (InterruptedException e2) {
            i.Log(5, "UI thread was interrupted while initializing Google VR. " + e2.getLocalizedMessage());
            return false;
        }
    }

    public boolean injectEvent(InputEvent inputEvent) {
        if (s.c()) {
            return nativeInjectEvent(inputEvent);
        }
        return false;
    }

    protected boolean isFinishing() {
        if (!this.mQuitting) {
            Context context = this.mContext;
            boolean z = (context instanceof Activity) && ((Activity) context).isFinishing();
            this.mQuitting = z;
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public boolean isLaunchScreenAdsFinished() {
        return this.finishLaunchScreenAds || UnityAds.isSkipLaunchScreenAds();
    }

    public boolean isShouldShowLaunchScreenAds() {
        return this.shouldShowLaunchScreenAds;
    }

    protected boolean isUaaLUseCase() {
        String callingPackage = ((Activity) this.mContext).getCallingPackage();
        return callingPackage != null && callingPackage.equals(this.mContext.getPackageName());
    }

    protected void kill() {
        Process.killProcess(Process.myPid());
    }

    protected boolean loadLibrary(String str) {
        return loadLibraryStatic(str);
    }

    public void lowMemory() {
        if (s.c()) {
            queueGLThreadEvent(new Runnable() { // from class: com.unity3d.player.UnityPlayer.5
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeLowMemory();
                }
            });
        }
    }

    public void newIntent(Intent intent) {
        this.m_launchUri = intent.getData();
        this.m_MainThread.e();
    }

    protected void notifyOnUnityPlayerUnloaded() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.21
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.pause();
                UnityPlayer.this.windowFocusChanged(false);
                if (UnityPlayer.this.m_UnityPlayerLifecycleEvents != null) {
                    UnityPlayer.this.m_UnityPlayerLifecycleEvents.onUnityPlayerUnloaded();
                } else {
                    UnityPlayer.this.onUnityPlayerUnloaded();
                }
            }
        });
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerQuitted() {
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerUnloaded() {
    }

    public void pause() {
        GoogleARCoreApi googleARCoreApi = this.m_ARCoreApi;
        if (googleARCoreApi != null) {
            googleARCoreApi.pauseARCore();
        }
        v vVar = this.mVideoPlayerProxy;
        if (vVar != null) {
            vVar.a();
        }
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.pauseGvrLayout();
        }
        AudioVolumeHandler audioVolumeHandler = this.m_AudioVolumeHandler;
        if (audioVolumeHandler != null) {
            audioVolumeHandler.a();
            this.m_AudioVolumeHandler = null;
        }
        p pVar = this.m_splashAdsScreen;
        if (pVar != null) {
            pVar.b();
        }
        pauseUnity();
    }

    void postOnUiThread(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    public void quit() {
        destroy();
    }

    @Override // com.unity3d.player.h
    public void removeViewFromPlayer(View view) {
        swapViews(this.mGlView, view);
        boolean z = view.getParent() == null;
        boolean z2 = this.mGlView.getParent() == this;
        if (z && z2) {
            return;
        }
        if (!z) {
            i.Log(6, "removeViewFromPlayer: Failure removing view from hierarchy");
        }
        if (z2) {
            return;
        }
        i.Log(6, "removeVireFromPlayer: Failure agging old view to hierarchy");
    }

    @Override // com.unity3d.player.h
    public void reportError(String str, String str2) {
        i.Log(6, str + ": " + str2);
    }

    protected void reportSoftInputArea(final Rect rect) {
        queueGLThreadEvent(new h() { // from class: com.unity3d.player.UnityPlayer.15
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.h
            public final void a() {
                UnityPlayer.this.nativeSetInputArea(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    protected void reportSoftInputIsVisible(final boolean z) {
        queueGLThreadEvent(new h() { // from class: com.unity3d.player.UnityPlayer.16
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.h
            public final void a() {
                UnityPlayer.this.nativeSetKeyboardIsVisible(z);
            }
        });
    }

    protected void reportSoftInputSelection(final int i, final int i2) {
        queueGLThreadEvent(new h() { // from class: com.unity3d.player.UnityPlayer.14
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.h
            public final void a() {
                UnityPlayer.this.nativeSetInputSelection(i, i2);
            }
        });
    }

    protected void reportSoftInputStr(final String str, final int i, final boolean z) {
        if (i == 1) {
            hideSoftInput();
        }
        queueGLThreadEvent(new h() { // from class: com.unity3d.player.UnityPlayer.13
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.h
            public final void a() {
                if (z) {
                    UnityPlayer.this.nativeSoftInputCanceled();
                } else {
                    String str2 = str;
                    if (str2 != null) {
                        UnityPlayer.this.nativeSetInputString(str2);
                    }
                }
                if (i == 1) {
                    UnityPlayer.this.nativeSoftInputClosed();
                }
            }
        });
    }

    protected void requestUserAuthorization(String str) {
        if (!m.f398b || str == null || str.isEmpty() || currentActivity == null) {
            return;
        }
        m.d.a(currentActivity, str);
    }

    public void resume() {
        GoogleARCoreApi googleARCoreApi = this.m_ARCoreApi;
        if (googleARCoreApi != null) {
            googleARCoreApi.resumeARCore();
        }
        this.mState.b(false);
        v vVar = this.mVideoPlayerProxy;
        if (vVar != null) {
            vVar.b();
        }
        p pVar = this.m_splashAdsScreen;
        if (pVar != null) {
            pVar.c();
        }
        checkResumePlayer();
        if (s.c()) {
            nativeRestartActivityIndicator();
        }
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.b();
        }
        this.m_AudioVolumeHandler = new AudioVolumeHandler(this.mContext);
    }

    void runOnAnonymousThread(Runnable runnable) {
        new Thread(runnable).start();
    }

    void runOnUiThread(Runnable runnable) {
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            i.Log(5, "Not running Unity from an Activity; ignored...");
        }
    }

    protected void setCharacterLimit(final int i) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.10
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.mSoftInputDialog != null) {
                    UnityPlayer.this.mSoftInputDialog.a(i);
                }
            }
        });
    }

    protected void setClipboardText(String str) {
        this.m_ClipboardManager.setPrimaryClip(ClipData.newPlainText("Text", str));
    }

    protected void setHideInputField(final boolean z) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.11
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.mSoftInputDialog != null) {
                    UnityPlayer.this.mSoftInputDialog.a(z);
                }
            }
        });
    }

    protected void setSelection(final int i, final int i2) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.12
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.mSoftInputDialog != null) {
                    UnityPlayer.this.mSoftInputDialog.a(i, i2);
                }
            }
        });
    }

    protected void setSoftInputStr(final String str) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.9
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.mSoftInputDialog == null || str == null) {
                    return;
                }
                UnityPlayer.this.mSoftInputDialog.a(str);
            }
        });
    }

    public boolean shouldRegisterLaunch(Context context) {
        String simmcc = Device.getSIMMCC(context);
        return (simmcc == null || "".equals(simmcc) || "466".equals(simmcc)) ? false : true;
    }

    protected void showSoftInput(final String str, final int i, final boolean z, final boolean z2, final boolean z3, final boolean z4, final String str2, final int i2, final boolean z5, final boolean z6) {
        postOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.7
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.mSoftInputDialog = new n(UnityPlayer.this.mContext, this, str, i, z, z2, z3, str2, i2, z5, z6);
                UnityPlayer.this.mSoftInputDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.unity3d.player.UnityPlayer.7.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        UnityPlayer.this.nativeSoftInputLostFocus();
                        UnityPlayer.this.reportSoftInputStr(null, 1, false);
                    }
                });
                UnityPlayer.this.mSoftInputDialog.show();
                UnityPlayer.this.nativeReportKeyboardConfigChanged();
            }
        });
    }

    protected boolean showVideoPlayer(String str, int i, int i2, int i3, boolean z, int i4, int i5) {
        if (this.mVideoPlayerProxy == null) {
            this.mVideoPlayerProxy = new v(this);
        }
        boolean zA = this.mVideoPlayerProxy.a(this.mContext, str, i, i2, i3, z, i4, i5, new v.a() { // from class: com.unity3d.player.UnityPlayer.19
            @Override // com.unity3d.player.v.a
            public final void a() {
                UnityPlayer.this.mVideoPlayerProxy = null;
            }
        });
        if (zA) {
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.20
                @Override // java.lang.Runnable
                public final void run() {
                    if (UnityPlayer.this.nativeIsAutorotationOn() && (UnityPlayer.this.mContext instanceof Activity)) {
                        ((Activity) UnityPlayer.this.mContext).setRequestedOrientation(UnityPlayer.this.mInitialScreenOrientation);
                    }
                }
            });
        }
        return zA;
    }

    protected boolean skipPermissionsDialog() {
        if (!m.f398b || currentActivity == null) {
            return false;
        }
        return m.d.a(currentActivity);
    }

    public boolean startOrientationListener(int i) {
        String str;
        if (this.mOrientationListener != null) {
            str = "Orientation Listener already started.";
        } else {
            OrientationEventListener orientationEventListener = new OrientationEventListener(this.mContext, i) { // from class: com.unity3d.player.UnityPlayer.26
                @Override // android.view.OrientationEventListener
                public final void onOrientationChanged(int i2) {
                    UnityPlayer.this.m_MainThread.a(UnityPlayer.this.mNaturalOrientation, i2);
                }
            };
            this.mOrientationListener = orientationEventListener;
            if (orientationEventListener.canDetectOrientation()) {
                this.mOrientationListener.enable();
                return true;
            }
            str = "Orientation Listener cannot detect orientation.";
        }
        i.Log(5, str);
        return false;
    }

    public boolean stopOrientationListener() {
        OrientationEventListener orientationEventListener = this.mOrientationListener;
        if (orientationEventListener == null) {
            i.Log(5, "Orientation Listener was not started.");
            return false;
        }
        orientationEventListener.disable();
        this.mOrientationListener = null;
        return true;
    }

    protected void toggleGyroscopeSensor(boolean z) {
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        Sensor defaultSensor = sensorManager.getDefaultSensor(11);
        if (z) {
            sensorManager.registerListener(this.m_FakeListener, defaultSensor, 1);
        } else {
            sensorManager.unregisterListener(this.m_FakeListener);
        }
    }

    public void unload() {
        nativeApplicationUnload();
    }

    public void windowFocusChanged(boolean z) {
        this.mState.a(z);
        if (this.mState.e()) {
            n nVar = this.mSoftInputDialog;
            if (nVar == null || nVar.f399a) {
                if (z) {
                    this.m_MainThread.c();
                } else {
                    this.m_MainThread.d();
                }
                checkResumePlayer();
            }
        }
    }
}
