.class final Lcom/google/ar/core/q;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ar/core/InstallActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ar/core/q;->b:I

    iput-object p1, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/InstallActivity;[B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/ar/core/q;->b:I

    iput-object p1, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/ar/core/q;->b:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/InstallActivity;

    new-instance v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    .line 3
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {p1, v0}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/InstallActivity;

    .line 1
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$100(Lcom/google/ar/core/InstallActivity;)V

    iget-object p1, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/InstallActivity;

    .line 2
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$200(Lcom/google/ar/core/InstallActivity;)V

    return-void
.end method
