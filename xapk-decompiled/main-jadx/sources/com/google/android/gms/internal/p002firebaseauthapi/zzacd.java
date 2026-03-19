package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.internal.p002firebaseauthapi.zzacd;
import com.google.android.gms.internal.p002firebaseauthapi.zzach;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@21.0.8 */
/* JADX INFO: loaded from: classes3.dex */
public class zzacd<MessageType extends zzach<MessageType, BuilderType>, BuilderType extends zzacd<MessageType, BuilderType>> extends zzaan<MessageType, BuilderType> {
    protected zzach zza;
    protected boolean zzb = false;
    private final zzach zzc;

    protected zzacd(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (zzach) messagetype.zzj(4, null, null);
    }

    private static final void zza(zzach zzachVar, zzach zzachVar2) {
        zzadu.zza().zzb(zzachVar.getClass()).zzg(zzachVar, zzachVar2);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzadn
    public final /* synthetic */ zzadm zzH() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaan
    protected final /* synthetic */ zzaan zzg(zzaao zzaaoVar) {
        zzj((zzach) zzaaoVar);
        return this;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaan
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzacd clone() {
        zzacd zzacdVar = (zzacd) this.zzc.zzj(5, null, null);
        zzacdVar.zzj(zzm());
        return zzacdVar;
    }

    public final zzacd zzj(zzach zzachVar) {
        if (this.zzb) {
            zzo();
            this.zzb = false;
        }
        zza(this.zza, zzachVar);
        return this;
    }

    public final MessageType zzk() {
        MessageType messagetype = (MessageType) zzm();
        if (messagetype.zzG()) {
            return messagetype;
        }
        throw new zzaeo(messagetype);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzadl
    /* JADX INFO: renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public MessageType zzm() {
        if (this.zzb) {
            return (MessageType) this.zza;
        }
        zzach zzachVar = this.zza;
        zzadu.zza().zzb(zzachVar.getClass()).zzf(zzachVar);
        this.zzb = true;
        return (MessageType) this.zza;
    }

    protected void zzo() {
        zzach zzachVar = (zzach) this.zza.zzj(4, null, null);
        zza(zzachVar, this.zza);
        this.zza = zzachVar;
    }
}
