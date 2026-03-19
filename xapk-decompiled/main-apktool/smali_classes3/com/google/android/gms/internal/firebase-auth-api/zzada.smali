.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzada;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzada;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzada;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacx;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzada;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzada;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzada;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

    return-object v0
.end method

.method static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzada;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzada;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method

.method abstract zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
