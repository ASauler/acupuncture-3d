.class public Lcom/aptoide/sdk/billing/oemid/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final HEX_ARRAY:[C

.field public static final OEMID_SEPARATOR:Ljava/lang/String; = ","

.field public static final PADDING_START:[B

.field public static final SIGNING_BLOCK_MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/aptoide/sdk/billing/oemid/Constants;->SIGNING_BLOCK_MAGIC:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 6
    fill-array-data v0, :array_1

    sput-object v0, Lcom/aptoide/sdk/billing/oemid/Constants;->PADDING_START:[B

    const-string v0, "0123456789abcdef"

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/oemid/Constants;->HEX_ARRAY:[C

    return-void

    :array_0
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x65t
        0x72t
        0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
