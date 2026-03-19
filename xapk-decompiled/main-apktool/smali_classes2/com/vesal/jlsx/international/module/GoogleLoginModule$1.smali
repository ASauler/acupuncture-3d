.class Lcom/vesal/jlsx/international/module/GoogleLoginModule$1;
.super Ljava/lang/Object;
.source "GoogleLoginModule.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/GoogleLoginModule;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/GoogleLoginModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/GoogleLoginModule;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/GoogleLoginModule$1;->this$0:Lcom/vesal/jlsx/international/module/GoogleLoginModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string p1, "google_pay"

    const-string v0, "signOut: -----------------------------"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
