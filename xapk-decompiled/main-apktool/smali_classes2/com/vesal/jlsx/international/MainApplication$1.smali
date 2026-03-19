.class Lcom/vesal/jlsx/international/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vesal/jlsx/international/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/MainApplication;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/MainApplication;Landroid/app/Application;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/vesal/jlsx/international/MainApplication$1;->this$0:Lcom/vesal/jlsx/international/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/facebook/react/ReactNativeHost;->getJSBundleFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/facebook/react/PackageList;

    invoke-direct {v0, p0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/vesal/jlsx/international/module/ContextPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/ContextPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/vesal/jlsx/international/module/CommonPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/CommonPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/vesal/jlsx/international/module/PayPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/PayPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/vesal/jlsx/international/module/GoogleLoginPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/GoogleLoginPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/vesal/jlsx/international/module/VoiceReactPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/VoiceReactPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/vesal/jlsx/international/module/FbLoginPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/FbLoginPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/vesal/jlsx/international/module/TwitterLoginPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/module/TwitterLoginPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/vesal/jlsx/international/google/SubscribePayPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/google/SubscribePayPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/vesal/jlsx/international/aptoide/CatappultPackage;

    invoke-direct {v1}, Lcom/vesal/jlsx/international/aptoide/CatappultPackage;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
