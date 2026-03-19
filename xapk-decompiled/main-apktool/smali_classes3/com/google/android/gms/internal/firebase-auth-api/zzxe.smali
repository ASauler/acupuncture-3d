.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzxe;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.0.8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxf;

.field public final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxg;Lcom/google/android/gms/internal/firebase-auth-api/zzxf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxf;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxf;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwd;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxf;->zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzwd;)V

    return-void
.end method
