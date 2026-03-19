.class public final Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;
.super Landroid/app/Activity;
.source "WebIapCommunicationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;,
        Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebIapCommunicationActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebIapCommunicationActivity.kt\ncom/aptoide/sdk/billing/WebIapCommunicationActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;",
        "Landroid/app/Activity;",
        "()V",
        "getResponseTypeFromURI",
        "",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)Ljava/lang/Integer;",
        "handleOldResult",
        "",
        "handleResult",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "verifyPurchaseResult",
        "purchaseResult",
        "",
        "Companion",
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
.field private static final Companion:Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;

.field public static final PURCHASE_RESULT_KEY:Ljava/lang/String; = "purchaseResult"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PURCHASE_TOKEN_KEY:Ljava/lang/String; = "purchaseToken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSE_CODE_KEY:Ljava/lang/String; = "responseCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESPONSE_TYPE_KEY:Ljava/lang/String; = "responseType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->Companion:Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final getResponseTypeFromURI(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 2

    const-string/jumbo v0, "responseType"

    .line 66
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to parse ResponseType."

    .line 70
    invoke-static {v1, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private final handleOldResult(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "purchaseResult"

    .line 42
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->verifyPurchaseResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final handleResult()V
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->getResponseTypeFromURI(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/aptoide/sdk/billing/models/ResponseType;->Companion:Lcom/aptoide/sdk/billing/models/ResponseType$Companion;

    invoke-virtual {v2, v1}, Lcom/aptoide/sdk/billing/models/ResponseType$Companion;->fromValue(Ljava/lang/Integer;)Lcom/aptoide/sdk/billing/models/ResponseType;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/models/ResponseType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 36
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->handleOldResult(Landroid/net/Uri;)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->emit(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_2
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->emit()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final verifyPurchaseResult(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Received Purchase Result from Wallet Deeplink. ResponseCode: "

    const/4 v1, 0x0

    .line 50
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "responseCode"

    .line 53
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "purchaseToken"

    .line 55
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 56
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    invoke-virtual {v0, p1, v2}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->invoke(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "There was an error with the Purchase Result from Deeplink."

    .line 59
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->invoke(ILjava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Deeplink to SDK requested."

    .line 20
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->handleResult()V

    .line 22
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/WebIapCommunicationActivity;->finish()V

    return-void
.end method
