.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field public static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

.field private static final zzh:Ljava/util/logging/Logger;

.field private static final zzi:Ljava/util/List;

.field private static final zzj:Z


# instance fields
.field private final zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzpj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzh:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()Z

    move-result v0

    const-string v1, "AndroidOpenSSL"

    const-string v2, "GmsCore_OpenSSL"

    if-eqz v0, :cond_0

    const-string v0, "Conscrypt"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzi:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzj:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzpt;->zza()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzi:Ljava/util/List;

    sput-boolean v3, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzj:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzi:Ljava/util/List;

    sput-boolean v3, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzj:Z

    .line 3
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpi;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzph;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzph;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzpb;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzpj;

    return-void
.end method

.method public static varargs zzb([Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2
    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzh:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Provider %s not available"

    .line 5
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v7, "toProviderList"

    invoke-virtual {v4, v5, v6, v7, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzpj;

    .line 2
    invoke-interface {v4, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpj;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzj:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzpj;

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpj;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
