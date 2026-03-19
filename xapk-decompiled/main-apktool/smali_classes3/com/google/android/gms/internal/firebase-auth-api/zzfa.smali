.class final Lcom/google/android/gms/internal/firebase-auth-api/zzfa;
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
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadm;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzmm;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzev;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzmm;)Lcom/google/android/gms/internal/firebase-auth-api/zzev;

    move-result-object p1

    return-object p1
.end method
