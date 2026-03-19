.class final Lcom/google/android/gms/internal/firebase-auth-api/zztk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzxi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zztl;Lcom/google/android/gms/internal/firebase-auth-api/zzxi;Lcom/google/android/gms/internal/firebase-auth-api/zzza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwc;->zzh(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 6

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

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzyt;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzzq;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztl;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zztl;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzwc;Lcom/google/android/gms/internal/firebase-auth-api/zzza;Lcom/google/android/gms/internal/firebase-auth-api/zzyt;Lcom/google/android/gms/internal/firebase-auth-api/zzzq;Lcom/google/android/gms/internal/firebase-auth-api/zzxh;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    const-string v0, "No users."

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zza(Ljava/lang/String;)V

    return-void
.end method
