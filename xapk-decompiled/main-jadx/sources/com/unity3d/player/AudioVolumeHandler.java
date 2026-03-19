package com.unity3d.player;

import android.content.Context;
import com.unity3d.player.b;

/* JADX INFO: loaded from: classes2.dex */
public class AudioVolumeHandler implements b.InterfaceC0056b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f271a;

    AudioVolumeHandler(Context context) {
        b bVar = new b(context);
        this.f271a = bVar;
        bVar.a(this);
    }

    public final void a() {
        this.f271a.a();
        this.f271a = null;
    }

    @Override // com.unity3d.player.b.InterfaceC0056b
    public final native void onAudioVolumeChanged(int i);
}
