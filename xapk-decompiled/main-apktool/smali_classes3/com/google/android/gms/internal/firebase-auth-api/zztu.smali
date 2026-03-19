.class final Lcom/google/android/gms/internal/firebase-auth-api/zztu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzxi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zztv;Lcom/google/android/gms/internal/firebase-auth-api/zzxi;Lcom/google/android/gms/internal/firebase-auth-api/zzza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

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
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyt;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwc;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzza;Lcom/google/android/gms/internal/firebase-auth-api/zzyt;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    const-string v0, "No users"

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zza(Ljava/lang/String;)V

    return-void
.end method
