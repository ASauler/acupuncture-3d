.class final Lcom/google/android/gms/internal/firebase-auth-api/zzti;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzxi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;Lcom/google/android/gms/internal/firebase-auth-api/zzwc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwc;->zzh(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzd(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuh;)Lcom/google/android/gms/internal/firebase-auth-api/zzxj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzti;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzth;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzth;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzti;Lcom/google/android/gms/internal/firebase-auth-api/zzxi;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxj;->zzq(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;Lcom/google/android/gms/internal/firebase-auth-api/zzxi;)V

    return-void
.end method
