.class final Lcom/google/android/gms/internal/firebase-auth-api/zzel;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzav;


# instance fields
.field final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;)Lcom/google/android/gms/internal/firebase-auth-api/zzil;

    move-result-object p1

    const-string v1, "hybrid_encrypt"

    const-string v2, "encrypt"

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzil;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzif;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzel;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif;

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif;

    goto :goto_0
.end method
