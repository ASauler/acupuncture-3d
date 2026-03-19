.class Lcom/aptoide/communication/requester/MessageRequesterSender;
.super Ljava/lang/Object;
.source "MessageRequesterSender.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final requesterActivityUri:Ljava/lang/String;

.field private final targetPackage:Ljava/lang/String;

.field private final targetUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->targetPackage:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->targetUri:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->requesterActivityUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sendMessage(JILandroid/os/Parcelable;)V
    .locals 3

    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->targetUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "REQUESTER_ACTIVITY_URI"

    .line 25
    iget-object v2, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->requesterActivityUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    .line 26
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 27
    iget-object p1, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "REQUESTER_PACKAGE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "METHOD_ID"

    .line 28
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ARGUMENTS"

    .line 29
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10800000

    .line 30
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    iget-object p1, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object p1, p0, Lcom/aptoide/communication/requester/MessageRequesterSender;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
