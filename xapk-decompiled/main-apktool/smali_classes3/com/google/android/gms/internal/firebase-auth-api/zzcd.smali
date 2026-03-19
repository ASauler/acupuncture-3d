.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    const/16 v1, 0x20

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 3
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    const/4 v2, 0x5

    .line 5
    invoke-static {v0, v0, v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(IIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 6
    invoke-static {v1, v0, v1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzc(IIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdi;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-void
.end method

.method public static zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjs;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjs;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjt;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjp;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzjt;)Lcom/google/android/gms/internal/firebase-auth-api/zzjp;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjq;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcp;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-object p0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjy;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-object p0
.end method

.method public static zzc(IIIII)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    move-result-object p2

    const/16 p4, 0x10

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzjk;)Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjg;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzly;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzlx;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    move-result-object p2

    const/4 p4, 0x5

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzma;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzma;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzmb;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlx;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzmb;)Lcom/google/android/gms/internal/firebase-auth-api/zzlx;

    const/16 p2, 0x20

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlx;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzlx;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzly;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzja;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjh;)Lcom/google/android/gms/internal/firebase-auth-api/zzja;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzja;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzly;)Lcom/google/android/gms/internal/firebase-auth-api/zzja;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjb;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-object p0
.end method
