.class public final Lcom/aptoide/sdk/billing/oemid/ZipExtensions;
.super Ljava/lang/Object;
.source "ZipExtensions.java"


# static fields
.field private static final BUFFER_SIZE:I = 0xfe17

.field public static final EOCD_SIG:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_0

    sput-object v0, Lcom/aptoide/sdk/billing/oemid/ZipExtensions;->EOCD_SIG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentSize(Ljava/io/RandomAccessFile;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0xfe17

    .line 15
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const v0, 0xfe17

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    int-to-long v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 22
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-lez v0, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 24
    :goto_1
    new-array v1, v0, [B

    .line 25
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 p1, v0, -0x4

    :goto_2
    const/4 v2, 0x0

    if-ltz p1, :cond_3

    .line 28
    aget-byte v3, v1, p1

    sget-object v4, Lcom/aptoide/sdk/billing/oemid/ZipExtensions;->EOCD_SIG:[B

    aget-byte v2, v4, v2

    if-ne v3, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    aget-byte v3, v4, v3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x2

    aget-byte v3, v4, v3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v1, v2

    const/4 v3, 0x3

    aget-byte v3, v4, v3

    if-ne v2, v3, :cond_2

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x16

    return v0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return v2
.end method
