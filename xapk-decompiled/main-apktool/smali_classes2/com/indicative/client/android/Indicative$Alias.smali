.class public Lcom/indicative/client/android/Indicative$Alias;
.super Ljava/lang/Object;
.source "Indicative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/indicative/client/android/Indicative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alias"
.end annotation


# static fields
.field public static final PAYLOAD_PREFIX:Ljava/lang/String; = "A:"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private newId:Ljava/lang/String;

.field private previousId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/indicative/client/android/Indicative$Alias;->apiKey:Ljava/lang/String;

    .line 647
    iput-object p2, p0, Lcom/indicative/client/android/Indicative$Alias;->previousId:Ljava/lang/String;

    .line 648
    iput-object p3, p0, Lcom/indicative/client/android/Indicative$Alias;->newId:Ljava/lang/String;

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/indicative/client/android/Indicative$Alias;->timestamp:J

    return-void
.end method


# virtual methods
.method public getPayloadString()Ljava/lang/String;
    .locals 4

    .line 656
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "apiKey"

    .line 659
    iget-object v2, p0, Lcom/indicative/client/android/Indicative$Alias;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "previousId"

    .line 660
    iget-object v2, p0, Lcom/indicative/client/android/Indicative$Alias;->previousId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "newId"

    .line 661
    iget-object v2, p0, Lcom/indicative/client/android/Indicative$Alias;->newId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 662
    iget-wide v2, p0, Lcom/indicative/client/android/Indicative$Alias;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Alias"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v3, "Indicative"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
