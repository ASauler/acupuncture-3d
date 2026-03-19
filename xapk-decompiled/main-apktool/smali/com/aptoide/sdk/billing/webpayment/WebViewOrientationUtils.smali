.class public final Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;
.super Ljava/lang/Object;
.source "WebViewOrientationUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;",
        "",
        "()V",
        "setupOrientation",
        "",
        "activity",
        "Landroid/app/Activity;",
        "webViewDetails",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "android-aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setupOrientation(Landroid/app/Activity;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->getForcedScreenOrientation()Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 14
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenRotation(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    if-nez p2, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_3

    const/16 v4, 0x9

    .line 21
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    goto :goto_5

    .line 24
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_8

    if-nez v1, :cond_6

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    const/16 p2, 0x8

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p2, 0x0

    .line 28
    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    .line 34
    move-object p2, v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_9
    return-void
.end method
