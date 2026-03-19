.class public final Lcom/aptoide/sdk/billing/service/RequestData;
.super Ljava/lang/Object;
.source "RequestData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\r\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00100\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/service/RequestData;",
        "Ljava/io/Serializable;",
        "sdkBackendRequestType",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "baseUrl",
        "",
        "timeoutInMillis",
        "",
        "endPoint",
        "httpMethod",
        "paths",
        "",
        "queries",
        "",
        "header",
        "body",
        "",
        "(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "getBody",
        "()Ljava/util/Map;",
        "getEndPoint",
        "getHeader",
        "getHttpMethod",
        "getPaths",
        "()Ljava/util/List;",
        "getQueries",
        "getSdkBackendRequestType",
        "()Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "getTimeoutInMillis",
        "()I",
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


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final endPoint:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpMethod:Ljava/lang/String;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field private final timeoutInMillis:I


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sdkBackendRequestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queries"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/RequestData;->sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 18
    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/RequestData;->baseUrl:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/aptoide/sdk/billing/service/RequestData;->timeoutInMillis:I

    .line 20
    iput-object p4, p0, Lcom/aptoide/sdk/billing/service/RequestData;->endPoint:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/aptoide/sdk/billing/service/RequestData;->httpMethod:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/aptoide/sdk/billing/service/RequestData;->paths:Ljava/util/List;

    .line 23
    iput-object p7, p0, Lcom/aptoide/sdk/billing/service/RequestData;->queries:Ljava/util/Map;

    .line 24
    iput-object p8, p0, Lcom/aptoide/sdk/billing/service/RequestData;->header:Ljava/util/Map;

    .line 25
    iput-object p9, p0, Lcom/aptoide/sdk/billing/service/RequestData;->body:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->body:Ljava/util/Map;

    return-object v0
.end method

.method public final getEndPoint()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->endPoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->header:Ljava/util/Map;

    return-object v0
.end method

.method public final getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->paths:Ljava/util/List;

    return-object v0
.end method

.method public final getQueries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->queries:Ljava/util/Map;

    return-object v0
.end method

.method public final getSdkBackendRequestType()Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    return-object v0
.end method

.method public final getTimeoutInMillis()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/aptoide/sdk/billing/service/RequestData;->timeoutInMillis:I

    return v0
.end method
