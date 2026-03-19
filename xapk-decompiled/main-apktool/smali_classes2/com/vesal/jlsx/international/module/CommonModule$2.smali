.class Lcom/vesal/jlsx/international/module/CommonModule$2;
.super Ljava/lang/Object;
.source "CommonModule.java"

# interfaces
.implements Lcom/vesal/jlsx/international/utils/FileUtils$FileOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/CommonModule;->resetDb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/CommonModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/CommonModule;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/CommonModule$2;->this$0:Lcom/vesal/jlsx/international/module/CommonModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/CommonModule$2;->this$0:Lcom/vesal/jlsx/international/module/CommonModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vesal/jlsx/international/module/CommonModule;->-$$Nest$mcopyDbDone(Lcom/vesal/jlsx/international/module/CommonModule;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/CommonModule$2;->this$0:Lcom/vesal/jlsx/international/module/CommonModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vesal/jlsx/international/module/CommonModule;->-$$Nest$mcopyDbDone(Lcom/vesal/jlsx/international/module/CommonModule;Z)V

    return-void
.end method
