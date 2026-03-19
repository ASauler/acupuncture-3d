package com.unity3d.player;

import androidx.camera.view.PreviewView$1$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleVrApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicReference f274a = new AtomicReference();

    private GoogleVrApi() {
    }

    static void a() {
        f274a.set(null);
    }

    static void a(h hVar) {
        PreviewView$1$$ExternalSyntheticBackportWithForwarding0.m(f274a, null, new GoogleVrProxy(hVar));
    }

    static GoogleVrProxy b() {
        return (GoogleVrProxy) f274a.get();
    }

    public static GoogleVrVideo getGoogleVrVideo() {
        return (GoogleVrVideo) f274a.get();
    }
}
