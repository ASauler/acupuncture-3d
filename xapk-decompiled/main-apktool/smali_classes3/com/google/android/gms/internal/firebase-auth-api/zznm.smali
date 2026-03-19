.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznm;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzach;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadn;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zzE(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzach;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzy()Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zznj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzacd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznj;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zznm;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zze:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zznm;Lcom/google/android/gms/internal/firebase-auth-api/zznl;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zznl;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zznl;

    return-object p1
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznj;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zznj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzni;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zzf"

    .line 2
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zznl;

    const-string p3, "zze"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
