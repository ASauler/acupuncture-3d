.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;
.super Ljava/lang/Enum;
.source "SdkInitializationEvents.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/matomo/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;",
        ">;",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;",
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
        "OEMID_FROM_ATTRIBUTION_RESULT",
        "GUEST_ID_FROM_ATTRIBUTION_RESULT",
        "UTM_SOURCE_FROM_ATTRIBUTION_RESULT",
        "UTM_MEDIUM_FROM_ATTRIBUTION_RESULT",
        "UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT",
        "UTM_TERM_FROM_ATTRIBUTION_RESULT",
        "UTM_CONTENT_FROM_ATTRIBUTION_RESULT",
        "PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT",
        "SERVICE_FROM_SERVICE_CONNECTED",
        "SERVICE_FROM_SERVICE_CONNECTION_FAILED",
        "METHOD_FROM_SERVICE_CONNECTED",
        "METHOD_FROM_SERVICE_CONNECTION_FAILED",
        "APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER",
        "STATE_FROM_APP_INSTALLATION_TRIGGER",
        "MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum GUEST_ID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum METHOD_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum METHOD_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum OEMID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum SERVICE_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum SERVICE_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum STATE_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum UTM_CONTENT_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum UTM_MEDIUM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum UTM_SOURCE_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

.field public static final enum UTM_TERM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final id:I

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;
    .locals 15

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->OEMID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->GUEST_ID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_SOURCE_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_MEDIUM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v4, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v5, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_TERM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_CONTENT_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v7, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v8, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->SERVICE_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v9, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->SERVICE_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v10, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->METHOD_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->METHOD_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v12, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v13, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->STATE_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    sget-object v14, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    filled-new-array/range {v0 .. v14}, [Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 171
    new-instance v6, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v1, "OEMID_FROM_ATTRIBUTION_RESULT"

    const/4 v2, 0x0

    const-string v3, "oemid"

    const-string/jumbo v4, "sdk_attribution_result"

    const/16 v5, 0x2bc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->OEMID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 173
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "GUEST_ID_FROM_ATTRIBUTION_RESULT"

    const/4 v9, 0x1

    const-string v10, "guest_id"

    const-string/jumbo v11, "sdk_attribution_result"

    const/16 v12, 0x2c6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->GUEST_ID_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 175
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "UTM_SOURCE_FROM_ATTRIBUTION_RESULT"

    const/4 v3, 0x2

    const-string/jumbo v4, "utm_source"

    const-string/jumbo v5, "sdk_attribution_result"

    const/16 v6, 0x2d0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_SOURCE_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 177
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "UTM_MEDIUM_FROM_ATTRIBUTION_RESULT"

    const/4 v9, 0x3

    const-string/jumbo v10, "utm_medium"

    const-string/jumbo v11, "sdk_attribution_result"

    const/16 v12, 0x2da

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_MEDIUM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 179
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT"

    const/4 v3, 0x4

    const-string/jumbo v4, "utm_campaign"

    const-string/jumbo v5, "sdk_attribution_result"

    const/16 v6, 0x2e4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_CAMPAIGN_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 181
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "UTM_TERM_FROM_ATTRIBUTION_RESULT"

    const/4 v9, 0x5

    const-string/jumbo v10, "utm_term"

    const-string/jumbo v11, "sdk_attribution_result"

    const/16 v12, 0x2ee

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_TERM_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 183
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "UTM_CONTENT_FROM_ATTRIBUTION_RESULT"

    const/4 v3, 0x6

    const-string/jumbo v4, "utm_content"

    const-string/jumbo v5, "sdk_attribution_result"

    const/16 v6, 0x2f8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->UTM_CONTENT_FROM_ATTRIBUTION_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 185
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT"

    const/4 v9, 0x7

    const-string v10, "payment_flow_list"

    const-string/jumbo v11, "sdk_payflow_result"

    const/16 v12, 0x302

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->PAYMENT_FLOW_LIST_FROM_PAYFLOW_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 187
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "SERVICE_FROM_SERVICE_CONNECTED"

    const/16 v3, 0x8

    const-string/jumbo v4, "service"

    const-string/jumbo v5, "sdk_service_connected"

    const/16 v6, 0x30c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->SERVICE_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 188
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "SERVICE_FROM_SERVICE_CONNECTION_FAILED"

    const/16 v9, 0x9

    const-string/jumbo v10, "service"

    const-string/jumbo v11, "sdk_service_connection_failed"

    const/16 v12, 0x30d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->SERVICE_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 190
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "METHOD_FROM_SERVICE_CONNECTED"

    const/16 v3, 0xa

    const-string v4, "method"

    const-string/jumbo v5, "sdk_service_connected"

    const/16 v6, 0x316

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->METHOD_FROM_SERVICE_CONNECTED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 191
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "METHOD_FROM_SERVICE_CONNECTION_FAILED"

    const/16 v9, 0xb

    const-string v10, "method"

    const-string/jumbo v11, "sdk_service_connection_failed"

    const/16 v12, 0x317

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->METHOD_FROM_SERVICE_CONNECTION_FAILED:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 193
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER"

    const/16 v3, 0xc

    const-string v4, "app_package_name"

    const-string/jumbo v5, "sdk_app_installation_trigger"

    const/16 v6, 0x320

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->APP_PACKAGE_NAME_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 195
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v8, "STATE_FROM_APP_INSTALLATION_TRIGGER"

    const/16 v9, 0xd

    const-string/jumbo v10, "state"

    const-string/jumbo v11, "sdk_app_installation_trigger"

    const/16 v12, 0x32a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->STATE_FROM_APP_INSTALLATION_TRIGGER:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    .line 197
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    const-string v2, "MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT"

    const/16 v3, 0xe

    const-string v4, "message"

    const-string/jumbo v5, "sdk_attribution_retry_attempt"

    const/16 v6, 0x334

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->MESSAGE_FROM_ATTRIBUTION_RETRY_ATTEMPT:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->key:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->eventName:Ljava/lang/String;

    .line 169
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->key:Ljava/lang/String;

    return-object v0
.end method
