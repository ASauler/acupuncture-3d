.class Lcom/vesal/jlsx/international/utils/FileUtils$2;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/utils/FileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/vesal/jlsx/international/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

.field final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/utils/FileUtils;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    iput-object p2, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->val$srcPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgetcontext(Lcom/vesal/jlsx/international/utils/FileUtils;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->val$srcPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$mcopyAssetsToDst(Lcom/vesal/jlsx/international/utils/FileUtils;Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgetisSuccess(Lcom/vesal/jlsx/international/utils/FileUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgethandler(Lcom/vesal/jlsx/international/utils/FileUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgethandler(Lcom/vesal/jlsx/international/utils/FileUtils;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vesal/jlsx/international/utils/FileUtils$2;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v1}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgeterrorStr(Lcom/vesal/jlsx/international/utils/FileUtils;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
