.class public Lcom/wikitude/common/internal/CallValueI;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/wikitude/common/CallStatus;


# direct methods
.method private constructor <init>(ILcom/wikitude/common/CallStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/wikitude/common/internal/CallValueI;->a:I

    iput-object p2, p0, Lcom/wikitude/common/internal/CallValueI;->b:Lcom/wikitude/common/CallStatus;

    return-void
.end method

.method public static a(I)Lcom/wikitude/common/internal/CallValueI;
    .locals 2

    new-instance v0, Lcom/wikitude/common/internal/CallValueI;

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wikitude/common/internal/CallValueI;-><init>(ILcom/wikitude/common/CallStatus;)V

    return-object v0
.end method

.method public static a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/internal/CallValueI;
    .locals 2

    new-instance v0, Lcom/wikitude/common/internal/CallValueI;

    invoke-static {p0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p0

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/wikitude/common/internal/CallValueI;-><init>(ILcom/wikitude/common/CallStatus;)V

    return-object v0
.end method


# virtual methods
.method public getCallStatus()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueI;->b:Lcom/wikitude/common/CallStatus;

    return-object v0
.end method

.method public getError()Lcom/wikitude/common/WikitudeError;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueI;->b:Lcom/wikitude/common/CallStatus;

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/wikitude/common/internal/CallValueI;->a:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueI;->b:Lcom/wikitude/common/CallStatus;

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v0

    return v0
.end method
