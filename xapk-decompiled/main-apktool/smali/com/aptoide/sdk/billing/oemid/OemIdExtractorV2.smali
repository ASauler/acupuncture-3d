.class public Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;
.super Ljava/lang/Object;
.source "OemIdExtractorV2.java"

# interfaces
.implements Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;


# instance fields
.field private final context:Landroid/content/Context;

.field public zipExtensions:Lcom/aptoide/sdk/billing/oemid/ZipExtensions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/aptoide/sdk/billing/oemid/ZipExtensions;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/oemid/ZipExtensions;-><init>()V

    iput-object v0, p0, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->zipExtensions:Lcom/aptoide/sdk/billing/oemid/ZipExtensions;

    .line 27
    iput-object p1, p0, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->context:Landroid/content/Context;

    return-void
.end method

.method private assertPadding([B)V
    .locals 3

    .line 72
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_1

    .line 73
    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x4

    :goto_2
    if-ltz v0, :cond_3

    .line 81
    aget-byte v1, p1, v0

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to validate padding!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertSigningMagic([B)V
    .locals 1

    .line 94
    sget-object v0, Lcom/aptoide/sdk/billing/oemid/Constants;->SIGNING_BLOCK_MAGIC:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find Apk Signing Block Magic!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCdOffset(JLjava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->zipExtensions:Lcom/aptoide/sdk/billing/oemid/ZipExtensions;

    invoke-virtual {v0, p3}, Lcom/aptoide/sdk/billing/oemid/ZipExtensions;->getCommentSize(Ljava/io/RandomAccessFile;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 198
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 200
    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 201
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 202
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method private static getHeaderIndex([B)I
    .locals 4

    const/4 v0, 0x0

    .line 156
    :goto_0
    array-length v1, p0

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    .line 157
    aget-byte v1, p0, v0

    const/4 v3, -0x5

    if-ne v1, v3, :cond_0

    return v0

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getOemid([BI)Ljava/lang/String;
    .locals 3

    .line 131
    array-length v0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extractor - Getting oemid of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const-string v1, "Could not extract oemid"

    const/16 v2, 0x10

    if-gt v0, v2, :cond_1

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 136
    array-length v0, p1

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->hexToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getOldOemidFormat([B)Ljava/lang/String;
    .locals 4

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 115
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 116
    aget-byte v3, p1, v2

    if-eqz v3, :cond_0

    .line 117
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Byte;

    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Byte;

    invoke-static {p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->toPrimitive([Ljava/lang/Byte;)[B

    move-result-object p1

    .line 122
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor - Old oemid format trimmed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not extract oemid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object p1
.end method

.method private getPaddingStart([B)I
    .locals 4

    .line 171
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 172
    aget-byte v2, p1, v0

    sget-object v3, Lcom/aptoide/sdk/billing/oemid/Constants;->PADDING_START:[B

    aget-byte v1, v3, v1

    if-ne v2, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    sget-object v2, Lcom/aptoide/sdk/billing/oemid/Constants;->PADDING_START:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    sget-object v2, Lcom/aptoide/sdk/billing/oemid/Constants;->PADDING_START:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    sget-object v2, Lcom/aptoide/sdk/billing/oemid/Constants;->PADDING_START:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hexToString([B)Ljava/lang/String;
    .locals 6

    .line 184
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 186
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 187
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 188
    sget-object v4, Lcom/aptoide/sdk/billing/oemid/Constants;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 189
    sget-object v4, Lcom/aptoide/sdk/billing/oemid/Constants;->HEX_ARRAY:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private readValue(I[BLjava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 101
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    const/16 v0, 0x400

    .line 103
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v0, p1

    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    .line 104
    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    new-array p1, p2, [B

    .line 106
    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 107
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getPaddingStart([B)I

    move-result p3

    invoke-static {p1, p3, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getHeaderIndex([B)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getOldOemidFormat([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getOemid([BI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private readValueFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getCdOffset(JLjava/io/RandomAccessFile;)I

    move-result p1

    const/16 v1, 0x18

    new-array v2, v1, [B

    int-to-long v3, p1

    const-wide/16 v5, 0x10

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    .line 56
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 v5, 0x8

    .line 58
    invoke-static {v2, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 59
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->assertSigningMagic([B)V

    .line 60
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v1, v5

    const/high16 v5, 0x10000

    .line 61
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v5, v1, [B

    int-to-long v6, v1

    sub-long/2addr v3, v6

    .line 62
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 63
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 64
    invoke-direct {p0, v5}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->assertPadding([B)V

    .line 65
    invoke-direct {p0, p1, v2, v0}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->readValue(I[BLjava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [B

    return-object p0

    .line 148
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 149
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 150
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;->readValueFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to obtain OEMID from Extractor V2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    const-string v0, ","

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    return-object v0
.end method
