.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzfv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzfu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzft;Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzfv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfs;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzft;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgx;Lcom/google/android/gms/internal/firebase-auth-api/zzca;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;
    .param p2    # Lcom/google/android/gms/internal/firebase-auth-api/zzca;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzpx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzb:Ljava/lang/Class;

    return-object v0
.end method
