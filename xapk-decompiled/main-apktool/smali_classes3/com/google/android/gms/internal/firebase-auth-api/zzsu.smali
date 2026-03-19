.class final Lcom/google/android/gms/internal/firebase-auth-api/zzsu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzxi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

.field final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

.field final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;Lcom/google/android/gms/internal/firebase-auth-api/zzwc;Lcom/google/android/gms/internal/firebase-auth-api/zzza;Lcom/google/android/gms/internal/firebase-auth-api/zzzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyr;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzyt;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzwc;Lcom/google/android/gms/internal/firebase-auth-api/zzza;Lcom/google/android/gms/internal/firebase-auth-api/zzyt;Lcom/google/android/gms/internal/firebase-auth-api/zzzq;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    const-string v0, "No users"

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;->zza(Ljava/lang/String;)V

    return-void
.end method
