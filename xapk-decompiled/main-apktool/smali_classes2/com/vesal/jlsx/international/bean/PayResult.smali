.class public Lcom/vesal/jlsx/international/bean/PayResult;
.super Ljava/lang/Object;
.source "PayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private jsonStr:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vesal/jlsx/international/bean/PayResult;->state:I

    .line 13
    iput-object p2, p0, Lcom/vesal/jlsx/international/bean/PayResult;->jsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJsonStr()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/vesal/jlsx/international/bean/PayResult;->jsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/vesal/jlsx/international/bean/PayResult;->state:I

    return v0
.end method

.method public setJsonStr(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/vesal/jlsx/international/bean/PayResult;->jsonStr:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/vesal/jlsx/international/bean/PayResult;->state:I

    return-void
.end method
