.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzmt;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacj;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field public static final enum zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzack;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzmt;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const-string v1, "UNKNOWN_KEYMATERIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const-string v2, "SYMMETRIC"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const-string v3, "ASYMMETRIC_PRIVATE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const-string v4, "ASYMMETRIC_PUBLIC"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const-string v5, "REMOTE"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    .line 6
    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzmt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzmt;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzi:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
