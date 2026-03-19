.class public final Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;
.super Ljava/lang/Object;
.source "BillingLifecycleManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;",
        "",
        "()V",
        "PACKAGE_SCHEME",
        "",
        "appInstallationReceiver",
        "Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;",
        "getAppInstallationReceiver",
        "()Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;",
        "appInstallationReceiver$delegate",
        "Lkotlin/Lazy;",
        "finishBillingService",
        "",
        "context",
        "Landroid/content/Context;",
        "setupBillingService",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final appInstallationReceiver$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$iATEc178i99nfoKwNMbdVn5mOJg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->setupBillingService$lambda$0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;

    .line 13
    sget-object v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$appInstallationReceiver$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$appInstallationReceiver$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->appInstallationReceiver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final finishBillingService(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    sget-object v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->getAppInstallationReceiver()Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to unregister AppInstallationReceiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final getAppInstallationReceiver()Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;
    .locals 1

    .line 13
    sget-object v0, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->appInstallationReceiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;

    return-object v0
.end method

.method public static final setupBillingService(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/Thread;

    .line 29
    new-instance v1, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final setupBillingService$lambda$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager;

    sget-object v1, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$setupBillingService$1$1;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager$setupBillingService$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionForUser(Lkotlin/jvm/functions/Function0;)V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 26
    sget-object v1, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->getAppInstallationReceiver()Lcom/aptoide/sdk/billing/receivers/AppInstallationReceiver;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 25
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
