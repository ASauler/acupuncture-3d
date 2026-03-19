.class public Lcom/wikitude/common/internal/CallStatusInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wikitude/common/CallStatus;


# instance fields
.field private final a:Z

.field private final b:Lcom/wikitude/common/WikitudeError;


# direct methods
.method private constructor <init>(ZLcom/wikitude/common/WikitudeError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/wikitude/common/internal/CallStatusInternal;->a:Z

    iput-object p2, p0, Lcom/wikitude/common/internal/CallStatusInternal;->b:Lcom/wikitude/common/WikitudeError;

    return-void
.end method

.method public static error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;
    .locals 2

    new-instance v0, Lcom/wikitude/common/internal/CallStatusInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/wikitude/common/internal/CallStatusInternal;-><init>(ZLcom/wikitude/common/WikitudeError;)V

    return-object v0
.end method

.method public static success()Lcom/wikitude/common/CallStatus;
    .locals 3

    new-instance v0, Lcom/wikitude/common/internal/CallStatusInternal;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wikitude/common/internal/CallStatusInternal;-><init>(ZLcom/wikitude/common/WikitudeError;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/wikitude/common/WikitudeError;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallStatusInternal;->b:Lcom/wikitude/common/WikitudeError;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wikitude/common/internal/CallStatusInternal;->a:Z

    return v0
.end method
