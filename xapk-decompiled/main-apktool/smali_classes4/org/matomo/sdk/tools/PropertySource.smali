.class public Lorg/matomo/sdk/tools/PropertySource;
.super Ljava/lang/Object;
.source "PropertySource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "http.agent"

    .line 9
    invoke-virtual {p0, v0}, Lorg/matomo/sdk/tools/PropertySource;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJVMVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.version"

    .line 14
    invoke-virtual {p0, v0}, Lorg/matomo/sdk/tools/PropertySource;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
