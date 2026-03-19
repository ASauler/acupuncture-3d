.class Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;
.super Ljava/lang/Object;
.source "RNInstallReferrerClient.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    const-string v0, "RNInstallReferrerClient"

    const-string v1, "InstallReferrerService disconnected"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

    const-string v0, "InstallReferrerState"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FEATURE_NOT_SUPPORTED"

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "SERVICE_UNAVAILABLE"

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "OK"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->-$$Nest$fgetmReferrerClient(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    .line 53
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 55
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->-$$Nest$fgetsharedPreferences(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "installReferrer"

    .line 56
    iget-object v1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {v1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->-$$Nest$mgetInstallReferrer(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient$1;->this$0:Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;

    invoke-static {p1}, Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;->-$$Nest$fgetmReferrerClient(Lcom/learnium/RNDeviceInfo/RNInstallReferrerClient;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RNInstallReferrerClient exception. getInstallReferrer will be unavailable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method
