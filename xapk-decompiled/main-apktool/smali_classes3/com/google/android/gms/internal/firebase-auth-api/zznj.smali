.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznj;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzacd;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadn;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzach;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzni;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzach;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zznl;)Lcom/google/android/gms/internal/firebase-auth-api/zznj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zznm;Lcom/google/android/gms/internal/firebase-auth-api/zznl;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zznj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zznm;I)V

    return-object p0
.end method
