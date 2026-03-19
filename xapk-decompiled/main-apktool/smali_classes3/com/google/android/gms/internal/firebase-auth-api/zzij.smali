.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzij;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbe;ILcom/google/android/gms/internal/firebase-auth-api/zzbn;Lcom/google/android/gms/internal/firebase-auth-api/zzii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    iget v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbe;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzbn;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(status=%s, keyId=%s, parameters=\'%s\')"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzij;->zzb:I

    return v0
.end method
