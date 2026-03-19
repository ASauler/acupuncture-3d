.class public final Lcom/aptoide/sdk/billing/AccountIdentifiers;
.super Ljava/lang/Object;
.source "AccountIdentifiers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/AccountIdentifiers;",
        "",
        "obfuscatedAccountId",
        "",
        "(Ljava/lang/String;)V",
        "getObfuscatedAccountId",
        "()Ljava/lang/String;",
        "aptoide-billing_release"
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
.field private final obfuscatedAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AccountIdentifiers;->obfuscatedAccountId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getObfuscatedAccountId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AccountIdentifiers;->obfuscatedAccountId:Ljava/lang/String;

    return-object v0
.end method
