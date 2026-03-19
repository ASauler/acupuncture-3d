.class public final Lcom/google/firebase/firestore/remote/TargetChange;
.super Ljava/lang/Object;
.source "TargetChange.java"


# instance fields
.field private final addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final current:Z

.field private final modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final resumeToken:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;ZLcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Z",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 50
    iput-boolean p2, p0, Lcom/google/firebase/firestore/remote/TargetChange;->current:Z

    .line 51
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/TargetChange;->addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 52
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/TargetChange;->modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 53
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/TargetChange;->removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method public static createSynthesizedTargetChangeForCurrentChange(Z)Lcom/google/firebase/firestore/remote/TargetChange;
    .locals 7

    .line 35
    new-instance v6, Lcom/google/firebase/firestore/remote/TargetChange;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 38
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v4

    .line 40
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v5

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/remote/TargetChange;-><init>(Lcom/google/protobuf/ByteString;ZLcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/remote/TargetChange;

    .line 104
    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->current:Z

    iget-boolean v2, p1, Lcom/google/firebase/firestore/remote/TargetChange;->current:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v2, p1, Lcom/google/firebase/firestore/remote/TargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object v2, p1, Lcom/google/firebase/firestore/remote/TargetChange;->addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object v2, p1, Lcom/google/firebase/firestore/remote/TargetChange;->modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object p1, p1, Lcom/google/firebase/firestore/remote/TargetChange;->removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-boolean v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->current:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->addedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->modifiedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/TargetChange;->removedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCurrent()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetChange;->current:Z

    return v0
.end method
