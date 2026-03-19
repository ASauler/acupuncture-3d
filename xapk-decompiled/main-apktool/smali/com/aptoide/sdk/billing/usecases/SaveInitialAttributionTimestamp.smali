.class public final Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "SaveInitialAttributionTimestamp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "attributionSharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "getAttributionSharedPreferences",
        "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "attributionSharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "invoke",
        "",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;

.field private static final attributionSharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;

    .line 7
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp$attributionSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp$attributionSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
    .locals 1

    .line 7
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final invoke()V
    .locals 4

    .line 12
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 13
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getInitialAttributionTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setInitialAttributionTimestamp(J)V

    :cond_0
    return-void
.end method
