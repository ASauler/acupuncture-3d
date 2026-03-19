.class public final enum Lorg/matomo/sdk/QueryParams;
.super Ljava/lang/Enum;
.source "QueryParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/matomo/sdk/QueryParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/matomo/sdk/QueryParams;

.field public static final enum ACTION_NAME:Lorg/matomo/sdk/QueryParams;

.field public static final enum API_VERSION:Lorg/matomo/sdk/QueryParams;

.field public static final enum CAMPAIGN_KEYWORD:Lorg/matomo/sdk/QueryParams;

.field public static final enum CAMPAIGN_NAME:Lorg/matomo/sdk/QueryParams;

.field public static final enum CONTENT_INTERACTION:Lorg/matomo/sdk/QueryParams;

.field public static final enum CONTENT_NAME:Lorg/matomo/sdk/QueryParams;

.field public static final enum CONTENT_PIECE:Lorg/matomo/sdk/QueryParams;

.field public static final enum CONTENT_TARGET:Lorg/matomo/sdk/QueryParams;

.field public static final enum DATETIME_OF_REQUEST:Lorg/matomo/sdk/QueryParams;

.field public static final enum DISCOUNT:Lorg/matomo/sdk/QueryParams;

.field public static final enum DOWNLOAD:Lorg/matomo/sdk/QueryParams;

.field public static final enum ECOMMERCE_ITEMS:Lorg/matomo/sdk/QueryParams;

.field public static final enum EVENT_ACTION:Lorg/matomo/sdk/QueryParams;

.field public static final enum EVENT_CATEGORY:Lorg/matomo/sdk/QueryParams;

.field public static final enum EVENT_NAME:Lorg/matomo/sdk/QueryParams;

.field public static final enum EVENT_VALUE:Lorg/matomo/sdk/QueryParams;

.field public static final enum FIRST_VISIT_TIMESTAMP:Lorg/matomo/sdk/QueryParams;

.field public static final enum GOAL_ID:Lorg/matomo/sdk/QueryParams;

.field public static final enum HOURS:Lorg/matomo/sdk/QueryParams;

.field public static final enum LANGUAGE:Lorg/matomo/sdk/QueryParams;

.field public static final enum LINK:Lorg/matomo/sdk/QueryParams;

.field public static final enum MINUTES:Lorg/matomo/sdk/QueryParams;

.field public static final enum ORDER_ID:Lorg/matomo/sdk/QueryParams;

.field public static final enum PREVIOUS_VISIT_TIMESTAMP:Lorg/matomo/sdk/QueryParams;

.field public static final enum RANDOM_NUMBER:Lorg/matomo/sdk/QueryParams;

.field public static final enum RECORD:Lorg/matomo/sdk/QueryParams;

.field public static final enum REFERRER:Lorg/matomo/sdk/QueryParams;

.field public static final enum REVENUE:Lorg/matomo/sdk/QueryParams;

.field public static final enum SCREEN_RESOLUTION:Lorg/matomo/sdk/QueryParams;

.field public static final enum SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

.field public static final enum SEARCH_CATEGORY:Lorg/matomo/sdk/QueryParams;

.field public static final enum SEARCH_KEYWORD:Lorg/matomo/sdk/QueryParams;

.field public static final enum SEARCH_NUMBER_OF_HITS:Lorg/matomo/sdk/QueryParams;

.field public static final enum SECONDS:Lorg/matomo/sdk/QueryParams;

.field public static final enum SEND_IMAGE:Lorg/matomo/sdk/QueryParams;

.field public static final enum SESSION_START:Lorg/matomo/sdk/QueryParams;

.field public static final enum SHIPPING:Lorg/matomo/sdk/QueryParams;

.field public static final enum SITE_ID:Lorg/matomo/sdk/QueryParams;

.field public static final enum SUBTOTAL:Lorg/matomo/sdk/QueryParams;

.field public static final enum TAX:Lorg/matomo/sdk/QueryParams;

.field public static final enum TOTAL_NUMBER_OF_VISITS:Lorg/matomo/sdk/QueryParams;

.field public static final enum URL_PATH:Lorg/matomo/sdk/QueryParams;

.field public static final enum USER_AGENT:Lorg/matomo/sdk/QueryParams;

.field public static final enum USER_ID:Lorg/matomo/sdk/QueryParams;

.field public static final enum VISITOR_ID:Lorg/matomo/sdk/QueryParams;

.field public static final enum VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 21
    new-instance v1, Lorg/matomo/sdk/QueryParams;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "idsite"

    const-string v4, "SITE_ID"

    invoke-direct {v1, v4, v2, v3}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/matomo/sdk/QueryParams;->SITE_ID:Lorg/matomo/sdk/QueryParams;

    .line 27
    new-instance v2, Lorg/matomo/sdk/QueryParams;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "rec"

    const-string v5, "RECORD"

    invoke-direct {v2, v5, v3, v4}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/matomo/sdk/QueryParams;->RECORD:Lorg/matomo/sdk/QueryParams;

    .line 33
    new-instance v3, Lorg/matomo/sdk/QueryParams;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "url"

    const-string v6, "URL_PATH"

    invoke-direct {v3, v6, v4, v5}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/matomo/sdk/QueryParams;->URL_PATH:Lorg/matomo/sdk/QueryParams;

    .line 44
    new-instance v4, Lorg/matomo/sdk/QueryParams;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "action_name"

    const-string v7, "ACTION_NAME"

    invoke-direct {v4, v7, v5, v6}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/matomo/sdk/QueryParams;->ACTION_NAME:Lorg/matomo/sdk/QueryParams;

    .line 52
    new-instance v5, Lorg/matomo/sdk/QueryParams;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "_id"

    const-string v8, "VISITOR_ID"

    invoke-direct {v5, v8, v6, v7}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/matomo/sdk/QueryParams;->VISITOR_ID:Lorg/matomo/sdk/QueryParams;

    .line 59
    new-instance v6, Lorg/matomo/sdk/QueryParams;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "rand"

    const-string v9, "RANDOM_NUMBER"

    invoke-direct {v6, v9, v7, v8}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/matomo/sdk/QueryParams;->RANDOM_NUMBER:Lorg/matomo/sdk/QueryParams;

    .line 65
    new-instance v7, Lorg/matomo/sdk/QueryParams;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "apiv"

    const-string v10, "API_VERSION"

    invoke-direct {v7, v10, v8, v9}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/matomo/sdk/QueryParams;->API_VERSION:Lorg/matomo/sdk/QueryParams;

    .line 73
    new-instance v8, Lorg/matomo/sdk/QueryParams;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "urlref"

    const-string v11, "REFERRER"

    invoke-direct {v8, v11, v9, v10}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/matomo/sdk/QueryParams;->REFERRER:Lorg/matomo/sdk/QueryParams;

    .line 80
    new-instance v9, Lorg/matomo/sdk/QueryParams;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "_cvar"

    const-string v12, "VISIT_SCOPE_CUSTOM_VARIABLES"

    invoke-direct {v9, v12, v10, v11}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    .line 88
    new-instance v10, Lorg/matomo/sdk/QueryParams;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "_idvc"

    const-string v13, "TOTAL_NUMBER_OF_VISITS"

    invoke-direct {v10, v13, v11, v12}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/matomo/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/matomo/sdk/QueryParams;

    .line 93
    new-instance v11, Lorg/matomo/sdk/QueryParams;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "_viewts"

    const-string v14, "PREVIOUS_VISIT_TIMESTAMP"

    invoke-direct {v11, v14, v12, v13}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/matomo/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/matomo/sdk/QueryParams;

    .line 99
    new-instance v12, Lorg/matomo/sdk/QueryParams;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "_idts"

    const-string v15, "FIRST_VISIT_TIMESTAMP"

    invoke-direct {v12, v15, v13, v14}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/matomo/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/matomo/sdk/QueryParams;

    .line 105
    new-instance v13, Lorg/matomo/sdk/QueryParams;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "_rcn"

    move-object/from16 v46, v0

    const-string v0, "CAMPAIGN_NAME"

    invoke-direct {v13, v0, v14, v15}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/matomo/sdk/QueryParams;->CAMPAIGN_NAME:Lorg/matomo/sdk/QueryParams;

    .line 111
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "_rck"

    move-object/from16 v47, v1

    const-string v1, "CAMPAIGN_KEYWORD"

    invoke-direct {v0, v1, v14, v15}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->CAMPAIGN_KEYWORD:Lorg/matomo/sdk/QueryParams;

    .line 115
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "res"

    move-object/from16 v48, v2

    const-string v2, "SCREEN_RESOLUTION"

    invoke-direct {v0, v2, v1, v15}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/matomo/sdk/QueryParams;

    .line 119
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "h"

    move-object/from16 v49, v3

    const-string v3, "HOURS"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->HOURS:Lorg/matomo/sdk/QueryParams;

    .line 123
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "m"

    const-string v3, "MINUTES"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->MINUTES:Lorg/matomo/sdk/QueryParams;

    .line 127
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "s"

    const-string v3, "SECONDS"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SECONDS:Lorg/matomo/sdk/QueryParams;

    .line 132
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "ua"

    const-string v3, "USER_AGENT"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->USER_AGENT:Lorg/matomo/sdk/QueryParams;

    .line 137
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "lang"

    const-string v3, "LANGUAGE"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->LANGUAGE:Lorg/matomo/sdk/QueryParams;

    .line 146
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "uid"

    const-string v3, "USER_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->USER_ID:Lorg/matomo/sdk/QueryParams;

    .line 150
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "new_visit"

    const-string v3, "SESSION_START"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SESSION_START:Lorg/matomo/sdk/QueryParams;

    .line 160
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "cvar"

    const-string v3, "SCREEN_SCOPE_CUSTOM_VARIABLES"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    .line 165
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "link"

    const-string v3, "LINK"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->LINK:Lorg/matomo/sdk/QueryParams;

    .line 170
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "download"

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->DOWNLOAD:Lorg/matomo/sdk/QueryParams;

    .line 175
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "search"

    const-string v3, "SEARCH_KEYWORD"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SEARCH_KEYWORD:Lorg/matomo/sdk/QueryParams;

    .line 179
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "search_cat"

    const-string v3, "SEARCH_CATEGORY"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SEARCH_CATEGORY:Lorg/matomo/sdk/QueryParams;

    .line 183
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "search_count"

    const-string v3, "SEARCH_NUMBER_OF_HITS"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SEARCH_NUMBER_OF_HITS:Lorg/matomo/sdk/QueryParams;

    .line 187
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "idgoal"

    const-string v3, "GOAL_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->GOAL_ID:Lorg/matomo/sdk/QueryParams;

    .line 192
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "revenue"

    const-string v3, "REVENUE"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->REVENUE:Lorg/matomo/sdk/QueryParams;

    .line 201
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "cdt"

    const-string v3, "DATETIME_OF_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->DATETIME_OF_REQUEST:Lorg/matomo/sdk/QueryParams;

    .line 209
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-string v2, "c_n"

    const-string v3, "CONTENT_NAME"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->CONTENT_NAME:Lorg/matomo/sdk/QueryParams;

    .line 215
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "c_p"

    const-string v3, "CONTENT_PIECE"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->CONTENT_PIECE:Lorg/matomo/sdk/QueryParams;

    .line 221
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-string v2, "c_t"

    const-string v3, "CONTENT_TARGET"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->CONTENT_TARGET:Lorg/matomo/sdk/QueryParams;

    .line 227
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const-string v2, "c_i"

    const-string v3, "CONTENT_INTERACTION"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->CONTENT_INTERACTION:Lorg/matomo/sdk/QueryParams;

    .line 234
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const-string v2, "e_c"

    const-string v3, "EVENT_CATEGORY"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->EVENT_CATEGORY:Lorg/matomo/sdk/QueryParams;

    .line 240
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const-string v2, "e_a"

    const-string v3, "EVENT_ACTION"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->EVENT_ACTION:Lorg/matomo/sdk/QueryParams;

    .line 246
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const-string v2, "e_n"

    const-string v3, "EVENT_NAME"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->EVENT_NAME:Lorg/matomo/sdk/QueryParams;

    .line 252
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v38, v0

    const/16 v1, 0x26

    const-string v2, "e_v"

    const-string v3, "EVENT_VALUE"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->EVENT_VALUE:Lorg/matomo/sdk/QueryParams;

    .line 258
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const-string v2, "ec_items"

    const-string v3, "ECOMMERCE_ITEMS"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->ECOMMERCE_ITEMS:Lorg/matomo/sdk/QueryParams;

    .line 263
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const-string v2, "ec_tx"

    const-string v3, "TAX"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->TAX:Lorg/matomo/sdk/QueryParams;

    .line 268
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v41, v0

    const/16 v1, 0x29

    const-string v2, "ec_id"

    const-string v3, "ORDER_ID"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->ORDER_ID:Lorg/matomo/sdk/QueryParams;

    .line 273
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v42, v0

    const/16 v1, 0x2a

    const-string v2, "ec_sh"

    const-string v3, "SHIPPING"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SHIPPING:Lorg/matomo/sdk/QueryParams;

    .line 278
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v43, v0

    const/16 v1, 0x2b

    const-string v2, "ec_dt"

    const-string v3, "DISCOUNT"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->DISCOUNT:Lorg/matomo/sdk/QueryParams;

    .line 283
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v44, v0

    const/16 v1, 0x2c

    const-string v2, "ec_st"

    const-string v3, "SUBTOTAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SUBTOTAL:Lorg/matomo/sdk/QueryParams;

    .line 290
    new-instance v0, Lorg/matomo/sdk/QueryParams;

    move-object/from16 v45, v0

    const/16 v1, 0x2d

    const-string v2, "send_image"

    const-string v3, "SEND_IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/QueryParams;->SEND_IMAGE:Lorg/matomo/sdk/QueryParams;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    .line 14
    filled-new-array/range {v0 .. v45}, [Lorg/matomo/sdk/QueryParams;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/QueryParams;->$VALUES:[Lorg/matomo/sdk/QueryParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput-object p3, p0, Lorg/matomo/sdk/QueryParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/matomo/sdk/QueryParams;
    .locals 1

    .line 14
    const-class v0, Lorg/matomo/sdk/QueryParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/matomo/sdk/QueryParams;

    return-object p0
.end method

.method public static values()[Lorg/matomo/sdk/QueryParams;
    .locals 1

    .line 14
    sget-object v0, Lorg/matomo/sdk/QueryParams;->$VALUES:[Lorg/matomo/sdk/QueryParams;

    invoke-virtual {v0}, [Lorg/matomo/sdk/QueryParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/matomo/sdk/QueryParams;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/matomo/sdk/QueryParams;->value:Ljava/lang/String;

    return-object v0
.end method
