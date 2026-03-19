.class public final Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;
.super Ljava/lang/Object;
.source "AptoideBillingStubHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;",
        "",
        "()V",
        "asInterface",
        "Lcom/appcoins/billing/AppcoinsBilling;",
        "service",
        "Landroid/os/IBinder;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asInterface(Landroid/os/IBinder;)Lcom/appcoins/billing/AppcoinsBilling;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "service"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->getBindType()Lcom/aptoide/sdk/billing/helpers/BindType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stub: BindType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->getBindType()Lcom/aptoide/sdk/billing/helpers/BindType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/helpers/BindType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 34
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->getBindType()Lcom/aptoide/sdk/billing/helpers/BindType;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/BindType;->URI_CONNECTION:Lcom/aptoide/sdk/billing/helpers/BindType;

    if-ne v1, v2, :cond_1

    const-string p0, "BillingService of type UriCommunicationAptoideBilling."

    .line 37
    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 40
    sget-object p0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "appcoins://billing/communication/requester/1"

    const/16 v2, 0x7530

    const-string v3, "com.appcoins.wallet"

    const-string v4, "appcoins://billing/communication/processor/1"

    .line 39
    invoke-static {p0, v3, v4, v1, v2}, Lcom/aptoide/communication/requester/MessageRequesterFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aptoide/communication/SyncIpcMessageRequester;

    move-result-object p0

    .line 47
    new-instance v1, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/UriCommunicationAptoideBilling;-><init>(Lcom/aptoide/communication/SyncIpcMessageRequester;)V

    check-cast v1, Lcom/appcoins/billing/AppcoinsBilling;

    goto :goto_1

    :cond_1
    const-string v1, "BillingService of type WalletBillingService."

    .line 49
    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/appcoins/billing/AppcoinsBilling$Stub;->asInterface(Landroid/os/IBinder;)Lcom/appcoins/billing/AppcoinsBilling;

    move-result-object v1

    const-string p0, "asInterface(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :goto_1
    new-instance p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;

    .line 54
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-direct {p0, v1, v0}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;-><init>(Lcom/appcoins/billing/AppcoinsBilling;Ljava/lang/String;)V

    check-cast p0, Lcom/appcoins/billing/AppcoinsBilling;

    goto :goto_2

    :cond_2
    const-string p0, "BillingService of type UnavailableBillingService."

    .line 28
    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 29
    sget-object p0, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;->Companion:Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;->getInstance()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    move-result-object p0

    check-cast p0, Lcom/appcoins/billing/AppcoinsBilling;

    goto :goto_2

    :cond_3
    const-string p0, "BillingService of type WebAptoideBilling."

    .line 23
    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->Companion:Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;->getInstance()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    move-result-object p0

    check-cast p0, Lcom/appcoins/billing/AppcoinsBilling;

    :goto_2
    return-object p0
.end method
