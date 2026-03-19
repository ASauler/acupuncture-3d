.class final Lcom/google/android/gms/internal/firebase-auth-api/zzhi;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzgt;
.source "com.google.firebase:firebase-auth@@21.0.8"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzt()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zziv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zziv;->zza()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzim;I)V

    return-object v0
.end method
