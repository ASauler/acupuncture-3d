.class public final Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;
.super Ljava/lang/Object;
.source "PurchasesSecurityHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;",
        "",
        "()V",
        "base64DecodedPublicKey",
        "",
        "getBase64DecodedPublicKey",
        "()[B",
        "setBase64DecodedPublicKey",
        "([B)V",
        "verifyPurchase",
        "",
        "purchaseData",
        "",
        "decodeSignature",
        "aptoide-core_release"
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

.field public static base64DecodedPublicKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->INSTANCE:Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBase64DecodedPublicKey()[B
    .locals 1

    .line 9
    sget-object v0, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->base64DecodedPublicKey:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "base64DecodedPublicKey"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setBase64DecodedPublicKey([B)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object p1, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->base64DecodedPublicKey:[B

    return-void
.end method

.method public final verifyPurchase(Ljava/lang/String;[B)Z
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->getBase64DecodedPublicKey()[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/aptoide/sdk/core/security/Security;->verifyPurchase([BLjava/lang/String;[B)Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->getBase64DecodedPublicKey()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "There was an error encoding the public key."

    .line 18
    invoke-static {v1, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 21
    :goto_0
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 22
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPurchaseSignatureVerificationFailureEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method
