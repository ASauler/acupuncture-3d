.class public final Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;
.super Ljava/lang/Object;
.source "WalletGenerationMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010\u0017\u001a\u00020\u0008J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0004H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;",
        "",
        "()V",
        "address",
        "",
        "signature",
        "ewt",
        "error",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "getAddress",
        "()Ljava/lang/String;",
        "getError",
        "()Z",
        "getEwt",
        "getSignature",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hasError",
        "hashCode",
        "",
        "toString",
        "android-aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final error:Z

.field private final ewt:Ljava/lang/String;

.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ewt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ewt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    iget-boolean p1, p1, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    return v0
.end method

.method public final getEwt()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final hasError()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->signature:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->ewt:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->error:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WalletGenerationResponse(address="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", signature="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ewt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
