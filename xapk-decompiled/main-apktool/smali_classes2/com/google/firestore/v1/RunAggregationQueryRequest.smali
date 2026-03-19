.class public final Lcom/google/firestore/v1/RunAggregationQueryRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RunAggregationQueryRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;,
        Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;,
        Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

.field public static final NEW_TRANSACTION_FIELD_NUMBER:I = 0x5

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final STRUCTURED_AGGREGATION_QUERY_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1064
    new-instance v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;-><init>()V

    .line 1067
    sput-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    .line 1068
    const-class v1, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    .line 62
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearQueryType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearNewTransaction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/RunAggregationQueryRequest;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->clearStructuredAggregationQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    return-void
.end method

.method private clearNewTransaction()V
    .locals 2

    .line 402
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private clearQueryType()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 482
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 483
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStructuredAggregationQuery()V
    .locals 2

    .line 263
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 322
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1

    .line 1073
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object v0
.end method

.method private mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 384
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 390
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3

    .line 462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 464
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    .line 470
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    .line 253
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 563
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/RunAggregationQueryRequest;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 566
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            ">;"
        }
    .end annotation

    .line 1079
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 370
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 194
    invoke-static {p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 450
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    return-void
.end method

.method private setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 235
    iput p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 310
    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    .line 311
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1008
    sget-object p2, Lcom/google/firestore/v1/RunAggregationQueryRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1057
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1051
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1036
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1038
    const-class p2, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    monitor-enter p2

    .line 1039
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1041
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1044
    sput-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1046
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

    .line 1033
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    return-object p1

    :pswitch_4
    const-string v0, "queryType_"

    const-string v1, "queryTypeCase_"

    const-string v2, "consistencySelector_"

    const-string v3, "consistencySelectorCase_"

    const-string v4, "parent_"

    .line 1016
    const-class v5, Lcom/google/firestore/v1/StructuredAggregationQuery;

    const-class v6, Lcom/google/firestore/v1/TransactionOptions;

    const-class v7, Lcom/google/protobuf/Timestamp;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0005\u0002\u0000\u0001\u0006\u0005\u0000\u0000\u0000\u0001\u0208\u0002<\u0000\u0004=\u0001\u0005<\u0001\u0006<\u0001"

    .line 1029
    sget-object p3, Lcom/google/firestore/v1/RunAggregationQueryRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1013
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;-><init>(Lcom/google/firestore/v1/RunAggregationQueryRequest$1;)V

    return-object p1

    .line 1010
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-direct {p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 2

    .line 353
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0

    .line 356
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;->forNumber(I)Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 433
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 436
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 2

    .line 220
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0

    .line 223
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 294
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 297
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 2

    .line 340
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 420
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructuredAggregationQuery()Z
    .locals 2

    .line 209
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 281
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
