.class public Lcom/aptoide/sdk/billing/service/RequestResponse;
.super Ljava/lang/Object;
.source "RequestResponse.java"


# instance fields
.field private final exception:Ljava/lang/Exception;

.field private final response:Ljava/lang/String;

.field private final responseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->responseCode:I

    .line 19
    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->response:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/aptoide/sdk/billing/service/RequestResponse;->responseCode:I

    return v0
.end method
