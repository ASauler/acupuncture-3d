.class public Lcom/aptoide/sdk/billing/DeveloperPayload;
.super Ljava/lang/Object;
.source "DeveloperPayload.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final freeTrial:Ljava/lang/Boolean;

.field private final obfuscatedAccountId:Ljava/lang/String;

.field private final rawPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->rawPayload:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->developerPayload:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->obfuscatedAccountId:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->freeTrial:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeTrial()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->freeTrial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getObfuscatedAccountId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->obfuscatedAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPayload()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aptoide/sdk/billing/DeveloperPayload;->rawPayload:Ljava/lang/String;

    return-object v0
.end method
