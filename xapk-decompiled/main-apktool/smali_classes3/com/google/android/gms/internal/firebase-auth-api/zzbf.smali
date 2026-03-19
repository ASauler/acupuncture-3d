.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-void
.end method

.method public static zze(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/firebase-auth-api/zzbf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzn([B)Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 5
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;)V

    return-object v0
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzt()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown output prefix type"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
