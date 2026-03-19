.class public final Lcom/wikitude/common/internal/WikitudeErrorInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wikitude/common/WikitudeError;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/wikitude/common/WikitudeError;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->a:I

    iput-object p2, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "code: %d, domain: \"%s\", message: \"%s\""

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->a:I

    iput-object p2, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    if-eqz v1, :cond_0

    const-string v1, "underlyingError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    if-eqz v1, :cond_1

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    invoke-interface {v1}, Lcom/wikitude/common/WikitudeError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    invoke-interface {v1}, Lcom/wikitude/common/WikitudeError;->getUnderlyingError()Lcom/wikitude/common/WikitudeError;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ", underlyingError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    check-cast v1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    invoke-direct {v1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->a:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlyingError()Lcom/wikitude/common/WikitudeError;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->f:Lcom/wikitude/common/WikitudeError;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;->d:Ljava/lang/String;

    return-object v0
.end method
