.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzen;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

.field private static final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zzd:[B

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    move-object v6, v0

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzmz;Lcom/google/android/gms/internal/firebase-auth-api/zzoa;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    const/4 v1, 0x4

    const/4 v3, 0x4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzmz;Lcom/google/android/gms/internal/firebase-auth-api/zzoa;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    const/4 v1, 0x4

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzoa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzoa;

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzmz;Lcom/google/android/gms/internal/firebase-auth-api/zzoa;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzen;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-void
.end method

.method public static zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzmz;Lcom/google/android/gms/internal/firebase-auth-api/zzoa;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzmz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzky;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzll;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzlk;

    move-result-object p1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzlk;

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzlk;

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;->zzn([B)Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzlk;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzlk;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzll;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzkv;

    move-result-object p5

    .line 8
    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzkv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzmz;)Lcom/google/android/gms/internal/firebase-auth-api/zzkv;

    .line 9
    invoke-virtual {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzkw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    move-result-object p5

    .line 11
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzll;)Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 12
    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzkw;)Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 13
    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 14
    invoke-virtual {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzlc;)Lcom/google/android/gms/internal/firebase-auth-api/zzky;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzef;

    invoke-direct {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzef;-><init>()V

    const-string p2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 19
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzk()Lcom/google/android/gms/internal/firebase-auth-api/zzach;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmz;

    return-object p0
.end method
