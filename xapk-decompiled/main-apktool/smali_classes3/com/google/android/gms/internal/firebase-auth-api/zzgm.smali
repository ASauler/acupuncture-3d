.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgm;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgm;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgy;Lcom/google/android/gms/internal/firebase-auth-api/zzhd;)V

    .line 3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgm;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgv;Lcom/google/android/gms/internal/firebase-auth-api/zzca;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgx;Lcom/google/android/gms/internal/firebase-auth-api/zzca;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgf;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgv;Lcom/google/android/gms/internal/firebase-auth-api/zzca;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzhf;

    const-string v0, "Creating a LegacyProtoKey failed"

    .line 3
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzfv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfv;)Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgy;Lcom/google/android/gms/internal/firebase-auth-api/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzfy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzfy;)Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgy;Lcom/google/android/gms/internal/firebase-auth-api/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/firebase-auth-api/zzgp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzgp;)Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgy;Lcom/google/android/gms/internal/firebase-auth-api/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhe;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzgs;)Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgy;Lcom/google/android/gms/internal/firebase-auth-api/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
