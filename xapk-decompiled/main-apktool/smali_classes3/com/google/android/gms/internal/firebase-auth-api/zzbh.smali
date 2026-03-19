.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)Lcom/google/android/gms/internal/firebase-auth-api/zzbh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    return-object v0
.end method

.method public static final zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzfq;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)Lcom/google/android/gms/internal/firebase-auth-api/zzbh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzlq;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzt()[B

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza([B[B)[B

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzabu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzabu;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzf([BLcom/google/android/gms/internal/firebase-auth-api/zzabu;)Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzacp; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    return-object v1

    .line 8
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "empty keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zza()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzbh;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    if-ne v4, v5, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object v3

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzax;

    move-result-object v5

    .line 8
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    if-eqz v6, :cond_0

    .line 9
    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/zzbw;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbw;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zzu()Lcom/google/android/gms/internal/firebase-auth-api/zzacd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;)Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzng;)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manager for key type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a PrivateKeyManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "The keyset contains a non-private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    return-object v1

    .line 1
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cleartext keyset is not available"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zznm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zze(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzbo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzie;)Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzg()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzk()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzmu;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzb()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 10
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzng;)Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzng;)Lcom/google/android/gms/internal/firebase-auth-api/zzbp;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbp;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzbj;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzr()[B

    move-result-object v2

    invoke-interface {p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([B[B)[B

    move-result-object v2

    .line 2
    :try_start_0
    invoke-interface {p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza([B[B)[B

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzabu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzabu;

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzf([BLcom/google/android/gms/internal/firebase-auth-api/zzabu;)Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzacp; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    move-result-object p2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzn([B)Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlp;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zznm;)Lcom/google/android/gms/internal/firebase-auth-api/zzlp;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzlq;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzlq;)V

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "cannot encrypt keyset"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzacp; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid keyset, corrupted key material"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzbj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznh;->zzg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzmu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;->zzf()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "keyset contains key material of type %s for type url %s"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznh;

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbj;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zznh;)V

    return-void
.end method
