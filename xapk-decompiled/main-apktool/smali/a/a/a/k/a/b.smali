.class public final La/a/a/k/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/a/l/a/a;

.field private final b:Landroid/content/Context;

.field private final c:La/a/a/k/a/c;

.field private d:Landroid/view/Display;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/k/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/a/k/a/b;->e:I

    iput-object p1, p0, La/a/a/k/a/b;->b:Landroid/content/Context;

    iput-object p2, p0, La/a/a/k/a/b;->c:La/a/a/k/a/c;

    new-instance p1, La/a/a/l/a/a;

    const-string p2, "OrientationProviderThread"

    invoke-direct {p1, p2}, La/a/a/l/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/k/a/b;->a:La/a/a/l/a/a;

    return-void
.end method

.method public static synthetic a(La/a/a/k/a/b;I)I
    .locals 0

    iput p1, p0, La/a/a/k/a/b;->e:I

    return p1
.end method

.method public static synthetic a(La/a/a/k/a/b;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, La/a/a/k/a/b;->d:Landroid/view/Display;

    return-object p0
.end method

.method public static synthetic b(La/a/a/k/a/b;)I
    .locals 0

    iget p0, p0, La/a/a/k/a/b;->e:I

    return p0
.end method

.method public static synthetic c(La/a/a/k/a/b;)La/a/a/k/a/c;
    .locals 0

    iget-object p0, p0, La/a/a/k/a/b;->c:La/a/a/k/a/c;

    return-object p0
.end method

.method public static synthetic d(La/a/a/k/a/b;)La/a/a/l/a/a;
    .locals 0

    iget-object p0, p0, La/a/a/k/a/b;->a:La/a/a/l/a/a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/k/a/b;->b:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/k/a/a;->a:La/a/a/k/a/a;

    invoke-virtual {v1}, La/a/a/k/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.runtime.android"

    const-string v3, "Unable to get the WindowManager from the given context."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v0, p0, La/a/a/k/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/a/a/k/a/b;->d:Landroid/view/Display;

    iget-object v0, p0, La/a/a/k/a/b;->a:La/a/a/l/a/a;

    invoke-virtual {v0}, La/a/a/l/a/a;->a()Z

    iget-object v0, p0, La/a/a/k/a/b;->a:La/a/a/l/a/a;

    new-instance v1, La/a/a/k/a/b$a;

    invoke-direct {v1, p0}, La/a/a/k/a/b$a;-><init>(La/a/a/k/a/b;)V

    invoke-virtual {v0, v1}, La/a/a/l/a/a;->a(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, La/a/a/k/a/b;->a:La/a/a/l/a/a;

    invoke-virtual {v0}, La/a/a/l/a/a;->b()Z

    return-void
.end method
