.class Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;
.super Ljava/lang/Object;
.source "TwitterLoginModule.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/TwitterLoginModule;->login1(Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;->this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

    iput-object p2, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAILUURE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TWITTERLOGIN"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;->this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

    iget-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$3;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {p1, v0}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->-$$Nest$mloginFailed(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method
