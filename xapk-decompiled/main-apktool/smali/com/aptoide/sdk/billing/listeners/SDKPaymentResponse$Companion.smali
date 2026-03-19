.class public final Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;
.super Ljava/lang/Object;
.source "SDKPaymentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKPaymentResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKPaymentResponse.kt\ncom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n1#2:34\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;",
        "",
        "()V",
        "createCanceledTypeResponse",
        "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;",
        "createErrorTypeResponse",
        "createServiceUnavailableResponse",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCanceledTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
    .locals 3

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->USER_CANCELED:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;-><init>(ILandroid/content/Intent;)V

    return-object v1
.end method

.method public final createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
    .locals 3

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;-><init>(ILandroid/content/Intent;)V

    return-object v1
.end method

.method public final createServiceUnavailableResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;
    .locals 3

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;-><init>(ILandroid/content/Intent;)V

    return-object v1
.end method
