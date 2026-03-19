.class final Lcom/google/android/gms/internal/firebase-auth-api/zzhr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzfy;

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzfv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpx;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhn;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzhn;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgw;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgp;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzho;Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhp;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzgv;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzfy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzhp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzfy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzfy;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhq;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzgv;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzft;Lcom/google/android/gms/internal/firebase-auth-api/zzpx;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    return-void
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzgs;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzgp;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzfy;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzfy;)V

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzfv;)V

    return-void
.end method
