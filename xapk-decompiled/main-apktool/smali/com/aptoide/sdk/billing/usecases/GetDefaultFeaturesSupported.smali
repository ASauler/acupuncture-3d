.class public final Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "GetDefaultFeaturesSupported.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "invoke",
        "",
        "",
        "paymentFlowMethod",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetDefaultFeaturesSupported;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    if-eqz p1, :cond_5

    .line 12
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->SUBSCRIPTIONS:Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    if-eqz v0, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_3
    instance-of p1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    if-eqz p1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
