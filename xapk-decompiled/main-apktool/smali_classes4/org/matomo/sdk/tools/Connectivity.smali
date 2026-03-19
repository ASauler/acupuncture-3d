.class public Lorg/matomo/sdk/tools/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/matomo/sdk/tools/Connectivity$Type;
    }
.end annotation


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/matomo/sdk/tools/Connectivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getType()Lorg/matomo/sdk/tools/Connectivity$Type;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/matomo/sdk/tools/Connectivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->NONE:Lorg/matomo/sdk/tools/Connectivity$Type;

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 32
    sget-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->WIFI:Lorg/matomo/sdk/tools/Connectivity$Type;

    return-object v0

    .line 33
    :cond_1
    sget-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->MOBILE:Lorg/matomo/sdk/tools/Connectivity$Type;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/matomo/sdk/tools/Connectivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
