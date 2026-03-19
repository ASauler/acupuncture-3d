.class public Lcom/wikitude/common/internal/CallValueInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wikitude/common/CallValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wikitude/common/CallValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/wikitude/common/CallStatus;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/wikitude/common/CallStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/wikitude/common/CallStatus;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wikitude/common/internal/CallValueInternal;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/wikitude/common/internal/CallValueInternal;->b:Lcom/wikitude/common/CallStatus;

    return-void
.end method

.method public static a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wikitude/common/WikitudeError;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/wikitude/common/internal/CallValueInternal;

    invoke-static {p0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/wikitude/common/internal/CallValueInternal;-><init>(Ljava/lang/Object;Lcom/wikitude/common/CallStatus;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/wikitude/common/CallValue<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/wikitude/common/internal/CallValueInternal;

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wikitude/common/internal/CallValueInternal;-><init>(Ljava/lang/Object;Lcom/wikitude/common/CallStatus;)V

    return-object v0
.end method


# virtual methods
.method public getCallStatus()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueInternal;->b:Lcom/wikitude/common/CallStatus;

    return-object v0
.end method

.method public getError()Lcom/wikitude/common/WikitudeError;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueInternal;->b:Lcom/wikitude/common/CallStatus;

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueInternal;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/internal/CallValueInternal;->b:Lcom/wikitude/common/CallStatus;

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v0

    return v0
.end method
