.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;
.super Ljava/lang/Enum;
.source "SdkBackendRequestEvents.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/matomo/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;",
        ">;",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;",
        "",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;",
        "key",
        "",
        "eventName",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V",
        "getEventName",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getKey",
        "TYPE_FROM_BACKEND_REQUEST",
        "TYPE_FROM_BACKEND_RESPONSE",
        "TYPE_FROM_BACKEND_MAPPING_FAILURE",
        "TYPE_FROM_BACKEND_ERROR",
        "URL_FROM_BACKEND_REQUEST",
        "URL_FROM_BACKEND_ERROR",
        "METHOD_FROM_BACKEND_REQUEST",
        "HEADERS_FROM_BACKEND_REQUEST",
        "PATHS_FROM_BACKEND_REQUEST",
        "QUERIES_FROM_BACKEND_REQUEST",
        "BODY_FROM_BACKEND_REQUEST",
        "RESPONSE_CODE_FROM_BACKEND_RESPONSE",
        "RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE",
        "RESPONSE_MESSAGE_FROM_BACKEND_ERROR",
        "RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE",
        "ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE",
        "ERROR_MESSAGE_FROM_BACKEND_RESPONSE",
        "NETWORK_SPEED_FROM_BACKEND_ERROR",
        "aptoide-core_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum BODY_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum ERROR_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum HEADERS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum METHOD_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum NETWORK_SPEED_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum PATHS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum QUERIES_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum RESPONSE_CODE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum RESPONSE_MESSAGE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum TYPE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum TYPE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum TYPE_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum TYPE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum URL_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

.field public static final enum URL_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final id:I

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;
    .locals 18

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->URL_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v5, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->URL_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->METHOD_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v7, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->HEADERS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v8, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->PATHS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v9, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->QUERIES_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v10, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->BODY_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_CODE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v12, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v13, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v14, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v15, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v16, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->ERROR_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    sget-object v17, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->NETWORK_SPEED_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    filled-new-array/range {v0 .. v17}, [Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 105
    new-instance v6, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v1, "TYPE_FROM_BACKEND_REQUEST"

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "sdk_call_backend_request"

    const/16 v5, 0xc8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 106
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "TYPE_FROM_BACKEND_RESPONSE"

    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    const-string/jumbo v11, "sdk_call_backend_response"

    const/16 v12, 0xc9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 107
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "TYPE_FROM_BACKEND_MAPPING_FAILURE"

    const/4 v3, 0x2

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "sdk_call_backend_mapping_failure"

    const/16 v6, 0xca

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 108
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "TYPE_FROM_BACKEND_ERROR"

    const/4 v9, 0x3

    const-string/jumbo v10, "type"

    const-string/jumbo v11, "sdk_call_backend_error"

    const/16 v12, 0xcb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->TYPE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 110
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "URL_FROM_BACKEND_REQUEST"

    const/4 v3, 0x4

    const-string/jumbo v4, "url"

    const-string/jumbo v5, "sdk_call_backend_request"

    const/16 v6, 0xd2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->URL_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 111
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "URL_FROM_BACKEND_ERROR"

    const/4 v9, 0x5

    const-string/jumbo v10, "url"

    const-string/jumbo v11, "sdk_call_backend_error"

    const/16 v12, 0xd3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->URL_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 113
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "METHOD_FROM_BACKEND_REQUEST"

    const/4 v3, 0x6

    const-string v4, "method"

    const-string/jumbo v5, "sdk_call_backend_request"

    const/16 v6, 0xdc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->METHOD_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 115
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "HEADERS_FROM_BACKEND_REQUEST"

    const/4 v9, 0x7

    const-string v10, "headers"

    const-string/jumbo v11, "sdk_call_backend_request"

    const/16 v12, 0xe6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->HEADERS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 117
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "PATHS_FROM_BACKEND_REQUEST"

    const/16 v3, 0x8

    const-string v4, "paths"

    const-string/jumbo v5, "sdk_call_backend_request"

    const/16 v6, 0xf0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->PATHS_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 119
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "QUERIES_FROM_BACKEND_REQUEST"

    const/16 v9, 0x9

    const-string v10, "queries"

    const-string/jumbo v11, "sdk_call_backend_request"

    const/16 v12, 0xfa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->QUERIES_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 121
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "BODY_FROM_BACKEND_REQUEST"

    const/16 v3, 0xa

    const-string v4, "body"

    const-string/jumbo v5, "sdk_call_backend_request"

    const/16 v6, 0x104

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->BODY_FROM_BACKEND_REQUEST:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 123
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "RESPONSE_CODE_FROM_BACKEND_RESPONSE"

    const/16 v9, 0xb

    const-string/jumbo v10, "response_code"

    const-string/jumbo v11, "sdk_call_backend_response"

    const/16 v12, 0x10e

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_CODE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 125
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE"

    const/16 v3, 0xc

    const-string/jumbo v4, "response_message"

    const-string/jumbo v5, "sdk_call_backend_request"

    const/16 v6, 0x118

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 126
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "RESPONSE_MESSAGE_FROM_BACKEND_ERROR"

    const/16 v9, 0xd

    const-string/jumbo v10, "response_message"

    const-string/jumbo v11, "sdk_call_backend_error"

    const/16 v12, 0x119

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 127
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE"

    const/16 v3, 0xe

    const-string/jumbo v4, "response_message"

    const-string/jumbo v5, "sdk_call_backend_mapping_failure"

    const/16 v6, 0x11a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 129
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE"

    const/16 v9, 0xf

    const-string v10, "error_message"

    const-string/jumbo v11, "sdk_call_backend_mapping_failure"

    const/16 v12, 0x122

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 130
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v2, "ERROR_MESSAGE_FROM_BACKEND_RESPONSE"

    const/16 v3, 0x10

    const-string v4, "error_message"

    const-string/jumbo v5, "sdk_call_backend_response"

    const/16 v6, 0x123

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->ERROR_MESSAGE_FROM_BACKEND_RESPONSE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    .line 132
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    const-string v8, "NETWORK_SPEED_FROM_BACKEND_ERROR"

    const/16 v9, 0x11

    const-string v10, "network_speed"

    const-string/jumbo v11, "sdk_call_backend_error"

    const/16 v12, 0x12c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->NETWORK_SPEED_FROM_BACKEND_ERROR:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->key:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->eventName:Ljava/lang/String;

    .line 103
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->key:Ljava/lang/String;

    return-object v0
.end method
