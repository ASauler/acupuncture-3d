.class public Lcom/google/android/gms/internal/firebase-auth-api/zzgp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzgo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzho;Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzgp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgn;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzho;[B)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;->zzb:Ljava/lang/Class;

    return-object v0
.end method
