.class public Lcom/aptoide/sdk/billing/WalletInteract;
.super Ljava/lang/Object;
.source "WalletInteract.java"


# static fields
.field private static final ID_LENGTH:I = 0x28


# instance fields
.field private final attributionSharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/aptoide/sdk/billing/WalletInteract;->attributionSharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    return-void
.end method

.method private generateId()Ljava/lang/String;
    .locals 4

    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public retrieveWalletId()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/aptoide/sdk/billing/WalletInteract;->attributionSharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/WalletInteract;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/aptoide/sdk/billing/WalletInteract;->attributionSharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setWalletId(Ljava/lang/String;)V

    return-object v0
.end method
