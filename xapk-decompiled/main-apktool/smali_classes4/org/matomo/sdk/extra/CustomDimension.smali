.class public Lorg/matomo/sdk/extra/CustomDimension;
.super Ljava/lang/Object;
.source "CustomDimension.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 18
    const-class v2, Lorg/matomo/sdk/extra/CustomDimension;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/CustomDimension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/matomo/sdk/extra/CustomDimension;->mId:I

    .line 24
    iput-object p2, p0, Lorg/matomo/sdk/extra/CustomDimension;->mValue:Ljava/lang/String;

    return-void
.end method

.method private static formatDimensionId(I)Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dimension"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDimension(Lorg/matomo/sdk/TrackMe;I)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p1}, Lorg/matomo/sdk/extra/CustomDimension;->formatDimensionId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/matomo/sdk/TrackMe;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDimension(Lorg/matomo/sdk/TrackMe;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 49
    sget-object p0, Lorg/matomo/sdk/extra/CustomDimension;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "dimensionId should be great than 0 (arg: %d)"

    invoke-virtual {p0, p2, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 53
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 54
    sget-object v2, Lorg/matomo/sdk/extra/CustomDimension;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "dimensionValue was truncated to 255 chars."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    .line 59
    :cond_2
    invoke-static {p1}, Lorg/matomo/sdk/extra/CustomDimension;->formatDimensionId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/matomo/sdk/TrackMe;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    return v1
.end method

.method public static setDimension(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/CustomDimension;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Lorg/matomo/sdk/extra/CustomDimension;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/matomo/sdk/extra/CustomDimension;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/matomo/sdk/extra/CustomDimension;->setDimension(Lorg/matomo/sdk/TrackMe;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/matomo/sdk/extra/CustomDimension;->mId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/matomo/sdk/extra/CustomDimension;->mValue:Ljava/lang/String;

    return-object v0
.end method
