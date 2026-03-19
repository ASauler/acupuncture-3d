.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzyo;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@21.0.8"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzyo;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    const/4 v1, 0x0

    const-string v2, "refresh_token"

    const-string v3, "REFRESH_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    const/4 v2, 0x1

    const-string v3, "authorization_code"

    const-string v4, "AUTHORIZATION_CODE"

    .line 2
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzyo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzd:Ljava/lang/String;

    return-object v0
.end method
