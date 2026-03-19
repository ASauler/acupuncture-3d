.class public final Lcom/google/firestore/v1/ExistenceFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExistenceFilter.java"

# interfaces
.implements Lcom/google/firestore/v1/ExistenceFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ExistenceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ExistenceFilter;",
        "Lcom/google/firestore/v1/ExistenceFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExistenceFilterOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExistenceFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private targetId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

    .line 347
    sput-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    .line 348
    const-class v1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ExistenceFilter;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter;->clearTargetId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ExistenceFilter;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->setCount(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ExistenceFilter;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ExistenceFilter;->clearCount()V

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return-void
.end method

.method private clearTargetId()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 353
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 177
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ExistenceFilter$Builder;
    .locals 1

    .line 180
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ExistenceFilter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ExistenceFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ExistenceFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ExistenceFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExistenceFilter;",
            ">;"
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCount(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return-void
.end method

.method private setTargetId(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 294
    sget-object p2, Lcom/google/firestore/v1/ExistenceFilter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 331
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 316
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 318
    const-class p2, Lcom/google/firestore/v1/ExistenceFilter;

    monitor-enter p2

    .line 319
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 321
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 324
    sput-object p1, Lcom/google/firestore/v1/ExistenceFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 326
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

    .line 313
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    return-object p1

    :pswitch_4
    const-string p1, "targetId_"

    const-string p2, "count_"

    .line 302
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    .line 309
    sget-object p3, Lcom/google/firestore/v1/ExistenceFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/ExistenceFilter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 299
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/ExistenceFilter$Builder;-><init>(Lcom/google/firestore/v1/ExistenceFilter$1;)V

    return-object p1

    .line 296
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/ExistenceFilter;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->count_:I

    return v0
.end method

.method public getTargetId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/firestore/v1/ExistenceFilter;->targetId_:I

    return v0
.end method
