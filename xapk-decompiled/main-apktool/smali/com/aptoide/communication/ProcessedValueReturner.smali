.class public Lcom/aptoide/communication/ProcessedValueReturner;
.super Ljava/lang/Object;
.source "ProcessedValueReturner.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final senderUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/aptoide/communication/ProcessedValueReturner;->context:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/aptoide/communication/ProcessedValueReturner;->senderUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public returnValue(Ljava/lang/String;JLandroid/os/Parcelable;)V
    .locals 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aptoide/communication/ProcessedValueReturner;->senderUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REQUEST_CODE"

    .line 20
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "RETURN_VALUE"

    .line 21
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    iget-object p1, p0, Lcom/aptoide/communication/ProcessedValueReturner;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
