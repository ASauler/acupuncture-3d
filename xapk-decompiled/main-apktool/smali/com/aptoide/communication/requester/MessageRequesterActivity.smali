.class public abstract Lcom/aptoide/communication/requester/MessageRequesterActivity;
.super Landroid/app/Activity;
.source "MessageRequesterActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/aptoide/communication/requester/MessageRequesterActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 14
    invoke-virtual {p0}, Lcom/aptoide/communication/requester/MessageRequesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "REQUEST_CODE"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/aptoide/communication/requester/MessageRequesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "RETURN_VALUE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->getMessageListener()Lcom/aptoide/communication/requester/MessageRequesterListener;

    move-result-object v2

    .line 17
    invoke-interface {v2, v0, v1, p1}, Lcom/aptoide/communication/requester/MessageRequesterListener;->onMessageReceived(JLandroid/os/Parcelable;)V

    .line 18
    invoke-virtual {p0}, Lcom/aptoide/communication/requester/MessageRequesterActivity;->finish()V

    return-void
.end method
