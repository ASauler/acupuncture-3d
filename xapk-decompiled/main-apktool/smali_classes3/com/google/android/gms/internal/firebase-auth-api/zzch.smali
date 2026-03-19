.class final Lcom/google/android/gms/internal/firebase-auth-api/zzch;
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zziy;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzje;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzgb;->zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpm;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzgb;->zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzadm;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzlv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlv;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzmb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmb;->zza()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpm;Lcom/google/android/gms/internal/firebase-auth-api/zzbm;I)V

    return-object v0
.end method
