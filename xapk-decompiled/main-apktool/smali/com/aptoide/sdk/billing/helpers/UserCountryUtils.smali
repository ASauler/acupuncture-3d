.class public Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;
.super Ljava/lang/Object;
.source "UserCountryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;->hasCorrectCountryFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;->isPhoneTypeReliable(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/aptoide/sdk/billing/helpers/UserCountryUtils;->hasCorrectCountryFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static hasCorrectCountryFormat(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPhoneTypeReliable(Landroid/telephony/TelephonyManager;)Z
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
