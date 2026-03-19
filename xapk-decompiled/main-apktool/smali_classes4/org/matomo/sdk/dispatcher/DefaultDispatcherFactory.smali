.class public Lorg/matomo/sdk/dispatcher/DefaultDispatcherFactory;
.super Ljava/lang/Object;
.source "DefaultDispatcherFactory.java"

# interfaces
.implements Lorg/matomo/sdk/dispatcher/DispatcherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lorg/matomo/sdk/Tracker;)Lorg/matomo/sdk/dispatcher/Dispatcher;
    .locals 4

    .line 8
    new-instance v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    new-instance v1, Lorg/matomo/sdk/dispatcher/EventCache;

    new-instance v2, Lorg/matomo/sdk/dispatcher/EventDiskCache;

    invoke-direct {v2, p1}, Lorg/matomo/sdk/dispatcher/EventDiskCache;-><init>(Lorg/matomo/sdk/Tracker;)V

    invoke-direct {v1, v2}, Lorg/matomo/sdk/dispatcher/EventCache;-><init>(Lorg/matomo/sdk/dispatcher/EventDiskCache;)V

    new-instance v2, Lorg/matomo/sdk/tools/Connectivity;

    .line 10
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/matomo/sdk/tools/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v3, Lorg/matomo/sdk/dispatcher/PacketFactory;

    .line 11
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getAPIUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/matomo/sdk/dispatcher/PacketFactory;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/matomo/sdk/dispatcher/DefaultPacketSender;

    invoke-direct {p1}, Lorg/matomo/sdk/dispatcher/DefaultPacketSender;-><init>()V

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;-><init>(Lorg/matomo/sdk/dispatcher/EventCache;Lorg/matomo/sdk/tools/Connectivity;Lorg/matomo/sdk/dispatcher/PacketFactory;Lorg/matomo/sdk/dispatcher/PacketSender;)V

    return-object v0
.end method
