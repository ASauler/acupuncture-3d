.class final enum Lcom/aptoide/sdk/core/device/QGenerator$Size;
.super Ljava/lang/Enum;
.source "QGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/core/device/QGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aptoide/sdk/core/device/QGenerator$Size;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/device/QGenerator$Size;",
        "",
        "(Ljava/lang/String;I)V",
        "NOTFOUND",
        "SMALL",
        "NORMAL",
        "LARGE",
        "XLARGE",
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

.field private static final synthetic $VALUES:[Lcom/aptoide/sdk/core/device/QGenerator$Size;

.field public static final enum LARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;

.field public static final enum NORMAL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

.field public static final enum NOTFOUND:Lcom/aptoide/sdk/core/device/QGenerator$Size;

.field public static final enum SMALL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

.field public static final enum XLARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;


# direct methods
.method private static final synthetic $values()[Lcom/aptoide/sdk/core/device/QGenerator$Size;
    .locals 5

    sget-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->NOTFOUND:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    sget-object v1, Lcom/aptoide/sdk/core/device/QGenerator$Size;->SMALL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    sget-object v2, Lcom/aptoide/sdk/core/device/QGenerator$Size;->NORMAL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    sget-object v3, Lcom/aptoide/sdk/core/device/QGenerator$Size;->LARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    sget-object v4, Lcom/aptoide/sdk/core/device/QGenerator$Size;->XLARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/aptoide/sdk/core/device/QGenerator$Size;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    const-string v1, "NOTFOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/device/QGenerator$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->NOTFOUND:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    new-instance v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    const-string v1, "SMALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/device/QGenerator$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->SMALL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    new-instance v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/device/QGenerator$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->NORMAL:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    new-instance v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    const-string v1, "LARGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/device/QGenerator$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->LARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    new-instance v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    const-string v1, "XLARGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/core/device/QGenerator$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->XLARGE:Lcom/aptoide/sdk/core/device/QGenerator$Size;

    invoke-static {}, Lcom/aptoide/sdk/core/device/QGenerator$Size;->$values()[Lcom/aptoide/sdk/core/device/QGenerator$Size;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->$VALUES:[Lcom/aptoide/sdk/core/device/QGenerator$Size;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/aptoide/sdk/core/device/QGenerator$Size;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aptoide/sdk/core/device/QGenerator$Size;
    .locals 1

    const-class v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aptoide/sdk/core/device/QGenerator$Size;

    return-object p0
.end method

.method public static values()[Lcom/aptoide/sdk/core/device/QGenerator$Size;
    .locals 1

    sget-object v0, Lcom/aptoide/sdk/core/device/QGenerator$Size;->$VALUES:[Lcom/aptoide/sdk/core/device/QGenerator$Size;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aptoide/sdk/core/device/QGenerator$Size;

    return-object v0
.end method
