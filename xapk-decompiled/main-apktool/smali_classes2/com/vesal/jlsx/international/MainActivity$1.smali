.class Lcom/vesal/jlsx/international/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/reactnative/unity/view/UnityUtils$CreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/MainActivity;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/MainActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/vesal/jlsx/international/MainActivity$1;->this$0:Lcom/vesal/jlsx/international/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    const-string v0, "mainaclog"

    const-string v1, "create finish"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
