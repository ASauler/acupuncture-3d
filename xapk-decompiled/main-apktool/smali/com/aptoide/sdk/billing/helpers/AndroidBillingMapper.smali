.class public Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;
.super Ljava/lang/Object;
.source "AndroidBillingMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Field error"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private static getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Field error"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method public static mapArrayListToBundleSkuDetails(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ITEM_ID_LIST"

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static mapBundleToHashMapGetIntent(Landroid/os/Bundle;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
    .locals 3

    .line 106
    new-instance v0, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "BUY_INTENT"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, v1, p0}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public static mapBundleToHashMapSkuDetails(Ljava/lang/String;Landroid/os/Bundle;)Lcom/aptoide/sdk/billing/SkuDetailsResult;
    .locals 3

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DETAILS_LIST"

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    invoke-static {p0, v2}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->parseSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    sget-object p0, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p0

    const-string v1, "RESPONSE_CODE"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 102
    :cond_2
    new-instance p1, Lcom/aptoide/sdk/billing/SkuDetailsResult;

    invoke-direct {p1, v0, p0}, Lcom/aptoide/sdk/billing/SkuDetailsResult;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

.method public static mapPurchases(Landroid/os/Bundle;Ljava/lang/String;)Lcom/aptoide/sdk/billing/PurchasesResult;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "RESPONSE_CODE"

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 32
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 33
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_PURCHASE_ID_LIST"

    .line 34
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v5, v0

    .line 37
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 38
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "orderId"

    .line 44
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "packageName"

    .line 45
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "productId"

    .line 46
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "purchaseTime"

    .line 47
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v7, "purchaseState"

    .line 48
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "developerPayload"

    const/4 v8, 0x0

    .line 50
    invoke-static {v0, v7, v8}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "obfuscatedExternalAccountId"

    .line 52
    invoke-static {v0, v7, v8}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 p1, v3

    :try_start_1
    const-string/jumbo v3, "token"

    .line 53
    invoke-static {v0, v3, v8}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "purchaseToken"

    const-string v8, ""

    .line 55
    invoke-static {v0, v3, v8}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object/from16 v16, v3

    const-string v3, "autoRenewing"

    .line 57
    invoke-static {v0, v3}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getBooleanValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v18

    if-eqz v7, :cond_1

    .line 61
    new-instance v0, Lcom/aptoide/sdk/billing/AccountIdentifiers;

    invoke-direct {v0, v7}, Lcom/aptoide/sdk/billing/AccountIdentifiers;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 64
    :goto_1
    new-instance v0, Lcom/aptoide/sdk/billing/Purchase;

    .line 65
    invoke-static {v6}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v6, v0

    move-object v8, v12

    move-object v12, v3

    invoke-direct/range {v6 .. v18}, Lcom/aptoide/sdk/billing/Purchase;-><init>(Lcom/aptoide/sdk/billing/AccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Z)V

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 p1, v3

    .line 67
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Failed to map Purchase: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 71
    :cond_2
    new-instance v0, Lcom/aptoide/sdk/billing/PurchasesResult;

    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/aptoide/sdk/billing/PurchasesResult;-><init>(Ljava/util/List;Lcom/aptoide/sdk/billing/BillingResult;)V

    return-object v0
.end method

.method private static parseSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/SkuDetails;
    .locals 24

    const/4 v1, 0x0

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "productId"

    .line 113
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "type"

    .line 114
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "price"

    .line 115
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "price_amount_micros"

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "price_currency_code"

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "appc_price"

    .line 118
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "appc_price_amount_micros"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v2, "appc_price_currency_code"

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "fiat_price"

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "fiat_price_amount_micros"

    .line 122
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v2, "fiat_price_currency_code"

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "title"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "description"

    .line 125
    invoke-static {v0, v2, v1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "period"

    .line 126
    invoke-static {v0, v2, v1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v2, "trial_period"

    .line 127
    invoke-static {v0, v2, v1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "trial_period_end_date"

    .line 128
    invoke-static {v0, v2, v1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->getStringValueFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 130
    new-instance v0, Lcom/aptoide/sdk/billing/SkuDetails;

    move-object v3, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v23}, Lcom/aptoide/sdk/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse SkuDetails: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    return-object v1
.end method
