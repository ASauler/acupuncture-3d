package com.reactnative.unity.view;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.unity3d.player.UnityPlayer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UnityUtils {
    private static boolean _isUnityPaused;
    private static boolean _isUnityReady;
    private static final CopyOnWriteArraySet<UnityEventListener> mUnityEventListeners = new CopyOnWriteArraySet<>();
    private static UnityPlayer unityPlayer;

    public interface CreateCallback {
        void onReady();
    }

    public static UnityPlayer getPlayer() {
        if (_isUnityReady) {
            return unityPlayer;
        }
        return null;
    }

    public static boolean isUnityReady() {
        return _isUnityReady;
    }

    public static boolean isUnityPaused() {
        return _isUnityPaused;
    }

    public static void createPlayer(final Activity activity, final CreateCallback createCallback) {
        if (unityPlayer != null) {
            createCallback.onReady();
        } else {
            activity.runOnUiThread(new Runnable() { // from class: com.reactnative.unity.view.UnityUtils.1
                @Override // java.lang.Runnable
                public void run() {
                    activity.getWindow().setFormat(1);
                    boolean z = (activity.getWindow().getAttributes().flags & 1024) == 1024;
                    UnityUtils.unityPlayer = new UnityPlayer(activity);
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception unused) {
                    }
                    UnityUtils.addUnityViewToBackground();
                    UnityUtils.unityPlayer.windowFocusChanged(true);
                    UnityUtils.unityPlayer.requestFocus();
                    UnityUtils.unityPlayer.resume();
                    if (!z) {
                        activity.getWindow().addFlags(2048);
                        activity.getWindow().clearFlags(1024);
                    }
                    UnityUtils._isUnityReady = true;
                    createCallback.onReady();
                }
            });
        }
    }

    public static void postMessage(String str, String str2, String str3) {
        if (_isUnityReady) {
            try {
                String string = new JSONObject(str3.replace("@UnityMessage@", "")).getString("name");
                if (!TextUtils.isEmpty(string) && (string.equals("IsLoadReady") || string.equals("changeSubmodel") || string.equals("OpenChallengeGame") || string.equals("OpenNerveConductionSt") || string.equals("OpenNewSearch"))) {
                    pause();
                    resume();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            UnityPlayer.UnitySendMessage(str, str2, str3);
        }
    }

    public static void pause() {
        UnityPlayer unityPlayer2 = unityPlayer;
        if (unityPlayer2 != null) {
            unityPlayer2.pause();
            _isUnityPaused = true;
        }
    }

    public static void resume() {
        UnityPlayer unityPlayer2 = unityPlayer;
        if (unityPlayer2 != null) {
            unityPlayer2.resume();
            _isUnityPaused = false;
        }
    }

    public static void onUnityMessage(String str) {
        Iterator<UnityEventListener> it = mUnityEventListeners.iterator();
        while (it.hasNext()) {
            try {
                it.next().onMessage(str);
            } catch (Exception unused) {
            }
        }
    }

    public static void addUnityEventListener(UnityEventListener unityEventListener) {
        mUnityEventListeners.add(unityEventListener);
    }

    public static void removeUnityEventListener(UnityEventListener unityEventListener) {
        mUnityEventListeners.remove(unityEventListener);
    }

    public static void addUnityViewToBackground() {
        UnityPlayer unityPlayer2 = unityPlayer;
        if (unityPlayer2 == null) {
            return;
        }
        if (unityPlayer2.getParent() != null) {
            ((ViewGroup) unityPlayer.getParent()).removeView(unityPlayer);
        }
        unityPlayer.setZ(-1.0f);
        ((Activity) unityPlayer.getContext()).addContentView(unityPlayer, new ViewGroup.LayoutParams(1, 1));
    }

    public static void addUnityViewToGroup(ViewGroup viewGroup) {
        UnityPlayer unityPlayer2 = unityPlayer;
        if (unityPlayer2 == null) {
            return;
        }
        if (unityPlayer2.getParent() != null) {
            ((ViewGroup) unityPlayer.getParent()).removeView(unityPlayer);
        }
        viewGroup.addView(unityPlayer, 0, new ViewGroup.LayoutParams(-1, -1));
        unityPlayer.windowFocusChanged(true);
        unityPlayer.requestFocus();
        unityPlayer.resume();
    }
}
