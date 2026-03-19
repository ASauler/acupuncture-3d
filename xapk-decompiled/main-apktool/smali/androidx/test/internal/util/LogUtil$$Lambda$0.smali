.class final synthetic Landroidx/test/internal/util/LogUtil$$Lambda$0;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Landroidx/test/internal/util/LogUtil$Supplier;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/internal/util/LogUtil$$Lambda$0;->arg$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/test/internal/util/LogUtil$$Lambda$0;->arg$1:Ljava/lang/String;

    invoke-static {v0}, Landroidx/test/internal/util/LogUtil;->lambda$logDebug$0$LogUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
