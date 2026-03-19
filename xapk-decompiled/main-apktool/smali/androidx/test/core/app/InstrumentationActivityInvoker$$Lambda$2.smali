.class final synthetic Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;
.super Ljava/lang/Object;
.source "InstrumentationActivityInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;->arg$1:Landroid/app/Activity;

    return-void
.end method

.method static get$Lambda(Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    .line 554
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 554
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$$Lambda$2;->arg$1:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
