.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpy;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/firebase-auth-api/zzca;)Lcom/google/android/gms/internal/firebase-auth-api/zzpy;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;)V

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpx;->zza()I

    move-result v0

    return v0
.end method
