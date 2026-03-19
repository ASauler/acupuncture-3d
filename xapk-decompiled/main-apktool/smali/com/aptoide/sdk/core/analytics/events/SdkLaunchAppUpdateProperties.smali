.class public final enum Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;
.super Ljava/lang/Enum;
.source "SdkLaunchAppUpdateEvents.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/matomo/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;",
        ">;",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;",
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
        "DEEPLINK_FROM_APP_UPDATE_RESULT",
        "DEEPLINK_FROM_APP_UPDATE_DEEPLINK_FAILURE",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

.field public static final enum DEEPLINK_FROM_APP_UPDATE_DEEPLINK_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

.field public static final enum DEEPLINK_FROM_APP_UPDATE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final id:I

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;
    .locals 2

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->DEEPLINK_FROM_APP_UPDATE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    sget-object v1, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->DEEPLINK_FROM_APP_UPDATE_DEEPLINK_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    filled-new-array {v0, v1}, [Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 45
    new-instance v6, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    const-string v1, "DEEPLINK_FROM_APP_UPDATE_RESULT"

    const/4 v2, 0x0

    const-string v3, "deeplink"

    const-string/jumbo v4, "sdk_launch_app_update_result"

    const/16 v5, 0x4b0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->DEEPLINK_FROM_APP_UPDATE_RESULT:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    .line 46
    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    const-string v8, "DEEPLINK_FROM_APP_UPDATE_DEEPLINK_FAILURE"

    const/4 v9, 0x1

    const-string v10, "deeplink"

    const-string/jumbo v11, "sdk_launch_app_update_deeplink_failure"

    const/16 v12, 0x4b1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->DEEPLINK_FROM_APP_UPDATE_DEEPLINK_FAILURE:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->$values()[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->key:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->eventName:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->$VALUES:[Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->key:Ljava/lang/String;

    return-object v0
.end method
