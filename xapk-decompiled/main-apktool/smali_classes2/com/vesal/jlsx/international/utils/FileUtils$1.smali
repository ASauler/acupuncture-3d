.class Lcom/vesal/jlsx/international/utils/FileUtils$1;
.super Landroid/os/Handler;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vesal/jlsx/international/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/utils/FileUtils;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/utils/FileUtils;Landroid/os/Looper;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/vesal/jlsx/international/utils/FileUtils$1;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$1;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgetcallback(Lcom/vesal/jlsx/international/utils/FileUtils;)Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$1;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgetcallback(Lcom/vesal/jlsx/international/utils/FileUtils;)Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;->onSuccess()V

    .line 44
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/vesal/jlsx/international/utils/FileUtils$1;->this$0:Lcom/vesal/jlsx/international/utils/FileUtils;

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/FileUtils;->-$$Nest$fgetcallback(Lcom/vesal/jlsx/international/utils/FileUtils;)Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
