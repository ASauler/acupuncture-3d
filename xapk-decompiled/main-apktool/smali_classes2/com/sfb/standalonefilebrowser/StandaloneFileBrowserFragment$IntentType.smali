.class public final enum Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;
.super Ljava/lang/Enum;
.source "StandaloneFileBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

.field public static final enum FILE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

.field public static final enum IMAGE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;


# direct methods
.method private static synthetic $values()[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;
    .locals 2

    .line 15
    sget-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->FILE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    sget-object v1, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->IMAGE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    filled-new-array {v0, v1}, [Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->FILE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    new-instance v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->IMAGE:Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    invoke-static {}, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->$values()[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    move-result-object v0

    sput-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->$VALUES:[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;
    .locals 1

    .line 15
    const-class v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    return-object p0
.end method

.method public static values()[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;
    .locals 1

    .line 15
    sget-object v0, Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->$VALUES:[Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    invoke-virtual {v0}, [Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sfb/standalonefilebrowser/StandaloneFileBrowserFragment$IntentType;

    return-object v0
.end method
