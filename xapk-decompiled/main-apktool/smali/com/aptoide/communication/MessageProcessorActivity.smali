.class public abstract Lcom/aptoide/communication/MessageProcessorActivity;
.super Landroid/app/Activity;
.source "MessageProcessorActivity.java"


# static fields
.field public static final ARGUMENTS:Ljava/lang/String; = "ARGUMENTS"

.field public static final MESSAGE_ID:Ljava/lang/String; = "MESSAGE_ID"

.field public static final METHOD_ID:Ljava/lang/String; = "METHOD_ID"

.field public static final REQUESTER_ACTIVITY_URI:Ljava/lang/String; = "REQUESTER_ACTIVITY_URI"

.field public static final REQUESTER_PACKAGE_NAME:Ljava/lang/String; = "REQUESTER_PACKAGE_NAME"


# direct methods
.method public static synthetic $r8$lambda$XfFgrA6nfQxaXfnuzYH8T51hYCs(Lcom/aptoide/communication/MessageProcessorActivity;Lcom/aptoide/communication/ProcessedValueReturner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/communication/MessageProcessorActivity;->lambda$onCreate$0(Lcom/aptoide/communication/ProcessedValueReturner;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/aptoide/communication/ProcessedValueReturner;)V
    .locals 6

    .line 25
    invoke-virtual {p0}, Lcom/aptoide/communication/MessageProcessorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MESSAGE_ID"

    const-wide/16 v2, -0x1

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "METHOD_ID"

    const/4 v4, -0x1

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "REQUESTER_PACKAGE_NAME"

    .line 28
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ARGUMENTS"

    .line 29
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 30
    invoke-virtual {p0, v3, v0}, Lcom/aptoide/communication/MessageProcessorActivity;->processValue(ILandroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v4, v1, v2, v0}, Lcom/aptoide/communication/ProcessedValueReturner;->returnValue(Ljava/lang/String;JLandroid/os/Parcelable;)V

    .line 32
    invoke-virtual {p0}, Lcom/aptoide/communication/MessageProcessorActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/aptoide/communication/MessageProcessorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 21
    invoke-virtual {p0}, Lcom/aptoide/communication/MessageProcessorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "REQUESTER_ACTIVITY_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/aptoide/communication/ProcessedValueReturner;

    invoke-direct {v0, p0, p1}, Lcom/aptoide/communication/ProcessedValueReturner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/communication/MessageProcessorActivity;Lcom/aptoide/communication/ProcessedValueReturner;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract processValue(ILandroid/os/Parcelable;)Landroid/os/Parcelable;
.end method
