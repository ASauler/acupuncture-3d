.class public Lcom/aptoide/sdk/billing/models/WalletGenerationModel;
.super Ljava/lang/Object;
.source "WalletGenerationModel.java"


# instance fields
.field private final error:Z

.field private final ewt:Ljava/lang/String;

.field private final signature:Ljava/lang/String;

.field private final walletAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->walletAddress:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->signature:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->ewt:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->error:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->walletAddress:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->signature:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->ewt:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->error:Z

    return-void
.end method

.method public static createErrorWalletGenerationModel()Lcom/aptoide/sdk/billing/models/WalletGenerationModel;
    .locals 1

    .line 25
    new-instance v0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEwt()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->ewt:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletAddress()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->walletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->error:Z

    return v0
.end method
