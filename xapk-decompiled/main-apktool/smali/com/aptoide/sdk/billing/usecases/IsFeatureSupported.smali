.class public final Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "IsFeatureSupported.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "invoke",
        "",
        "feature",
        "",
        "isFeatureSupportedInDefaultValues",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final isFeatureSupportedInDefaultValues(I)Z
    .locals 2

    .line 22
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getCurrentPaymentFlowMethod()Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;->invoke(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Feature is supported."

    .line 24
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :cond_0
    const-string p1, "Feature not found in the local Supported Features."

    .line 27
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final invoke(I)Z
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 10
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getCurrentPaymentFlowMethod()Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getAvailableFeatures()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Feature is supported."

    .line 12
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Feature not found in the Supported Features."

    .line 15
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;->isFeatureSupportedInDefaultValues(I)Z

    move-result p1

    :goto_0
    return p1
.end method
