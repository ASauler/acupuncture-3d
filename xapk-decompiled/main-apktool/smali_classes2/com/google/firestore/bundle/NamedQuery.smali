.class public final Lcom/google/firestore/bundle/NamedQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NamedQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/NamedQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/NamedQuery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/NamedQuery;",
        "Lcom/google/firestore/bundle/NamedQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/NamedQueryOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUNDLED_QUERY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

.field private name_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 621
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

    .line 624
    sput-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    .line 625
    const-class v1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/NamedQuery;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearBundledQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearReadTime()V

    return-void
.end method

.method private clearBundledQuery()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 80
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearReadTime()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 630
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method private mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 148
    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->newBuilder(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/bundle/BundledQuery$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/bundle/BundledQuery;

    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    goto :goto_0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    :goto_0
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 218
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 311
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 314
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/bundle/NamedQuery;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation

    .line 636
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/google/firestore/bundle/NamedQuery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 570
    sget-object p2, Lcom/google/firestore/bundle/NamedQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 614
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 608
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 593
    :pswitch_2
    sget-object p1, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 595
    const-class p2, Lcom/google/firestore/bundle/NamedQuery;

    monitor-enter p2

    .line 596
    :try_start_0
    sget-object p1, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 598
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 601
    sput-object p1, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 603
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 590
    :pswitch_3
    sget-object p1, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object p1

    :pswitch_4
    const-string p1, "name_"

    const-string p2, "bundledQuery_"

    const-string p3, "readTime_"

    .line 578
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\t"

    .line 586
    sget-object p3, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/bundle/NamedQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 575
    :pswitch_5
    new-instance p1, Lcom/google/firestore/bundle/NamedQuery$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/bundle/NamedQuery$Builder;-><init>(Lcom/google/firestore/bundle/NamedQuery$1;)V

    return-object p1

    .line 572
    :pswitch_6
    new-instance p1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {p1}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBundledQuery()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBundledQuery()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
