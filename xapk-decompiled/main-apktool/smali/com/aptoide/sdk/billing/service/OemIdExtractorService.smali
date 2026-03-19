.class public Lcom/aptoide/sdk/billing/service/OemIdExtractorService;
.super Ljava/lang/Object;
.source "OemIdExtractorService.java"


# instance fields
.field private final extractorV1:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

.field private final extractorV2:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;->extractorV1:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    .line 14
    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;->extractorV2:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    return-void
.end method


# virtual methods
.method public extractOemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;->extractorV2:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;->extract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;->extractorV1:Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;->extract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Extracted OemId -> "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    return-object v0
.end method
