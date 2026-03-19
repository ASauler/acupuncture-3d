.class public Lcom/vesal/jlsx/international/utils/SharedPreferenceData;
.super Ljava/lang/Object;
.source "SharedPreferenceData.java"


# static fields
.field public static final SHARE_PREFERENCE_AGREEMENT:Ljava/lang/String; = "sp_agreement"

.field public static final SHARE_PREFERENCE_LAST_LOGIN:Ljava/lang/String; = "sp_last_login"

.field public static final SHARE_PREFERENCE_LAST_VERSION:Ljava/lang/String; = "last_version"

.field public static SHARE_PREFERENCE_NAME:Ljava/lang/String; = "anatomy_master"

.field public static final SHARE_PREFERENCE_ORIENTATION:Ljava/lang/String; = "display_orientation"

.field public static final SHARE_PREFERENCE_START_MODULE:Ljava/lang/String; = "sp_start_module"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayOrientation()Ljava/lang/String;
    .locals 2

    .line 44
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "display_orientation"

    invoke-static {v0, v1}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoginType()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_last_login"

    invoke-static {v0, v1}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVersion()I
    .locals 3

    .line 33
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "last_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getQuickStartModule()Ljava/lang/String;
    .locals 2

    .line 62
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_start_module"

    invoke-static {v0, v1}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAgreement()Z
    .locals 2

    .line 23
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_agreement"

    invoke-static {v0, v1}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAgreement(Z)V
    .locals 2

    .line 27
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_agreement"

    invoke-static {v0, v1, p0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDisplayOrientation(Ljava/lang/String;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "display_orientation"

    invoke-static {v0, v1, p0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastLoginType(Ljava/lang/String;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_last_login"

    invoke-static {v0, v1, p0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastVersion(I)V
    .locals 2

    .line 37
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "last_version"

    invoke-static {v0, v1, p0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setQuickStartModule(Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/vesal/jlsx/international/utils/SharedPreferenceData;->SHARE_PREFERENCE_NAME:Ljava/lang/String;

    const-string v1, "sp_start_module"

    invoke-static {v0, v1, p0}, Lcom/vesal/jlsx/international/utils/SharedPreferencesUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
