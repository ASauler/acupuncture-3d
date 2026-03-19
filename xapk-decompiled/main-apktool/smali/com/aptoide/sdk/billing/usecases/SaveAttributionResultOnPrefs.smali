.class public final Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "SaveAttributionResultOnPrefs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0086\u0002J\u000c\u0010\r\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u000e\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u000f\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u0010\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u0011\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u0012\u001a\u00020\n*\u00020\u000cH\u0002J\u000c\u0010\u0013\u001a\u00020\n*\u00020\u000cH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;",
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
        "attributionResponse",
        "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;",
        "processOemIdFromAttribution",
        "processUtmCampaignFromAttribution",
        "processUtmContentFromAttribution",
        "processUtmMediumFromAttribution",
        "processUtmSourceFromAttribution",
        "processUtmTermFromAttribution",
        "processWalletIdFromAttribution",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

.field private static final attributionSharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    .line 11
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs$attributionSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs$attributionSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
    .locals 1

    .line 11
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    return-object v0
.end method

.method private final processOemIdFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getOemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new OEMID."

    .line 31
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OEMID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setOemId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processUtmCampaignFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmCampaign()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new UtmCampaign."

    .line 61
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtmCampaign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmCampaign(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processUtmContentFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new UtmContent."

    .line 81
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtmContent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmContent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processUtmMediumFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmMedium()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new UtmMedium."

    .line 51
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtmMedium: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmMedium(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processUtmSourceFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmSource()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new UtmSource."

    .line 41
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtmSource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmSource(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processUtmTermFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmTerm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new UtmTerm."

    .line 71
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UtmTerm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmTerm(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final processWalletIdFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getWalletId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Setting new WalletId."

    .line 91
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WalletId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setWalletId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final invoke(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V
    .locals 1

    const-string v0, "attributionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 18
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processOemIdFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 19
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processUtmSourceFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 20
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processUtmMediumFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 21
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processUtmCampaignFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 22
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processUtmTermFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 23
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processUtmContentFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    .line 24
    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->processWalletIdFromAttribution(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    return-void
.end method
