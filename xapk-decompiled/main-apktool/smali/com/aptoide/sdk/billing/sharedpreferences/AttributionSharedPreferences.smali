.class public final Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
.super Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;
.source "AttributionSharedPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\u0008\u0010\r\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0008J\u0012\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0016\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0017\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0018\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0019\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001a\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001b\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "completeAttribution",
        "",
        "getInitialAttributionTimestamp",
        "",
        "getOemId",
        "",
        "getUtmCampaign",
        "getUtmContent",
        "getUtmMedium",
        "getUtmSource",
        "getUtmTerm",
        "getWalletId",
        "isAttributionComplete",
        "",
        "setInitialAttributionTimestamp",
        "value",
        "setOemId",
        "setUtmCampaign",
        "setUtmContent",
        "setUtmMedium",
        "setUtmSource",
        "setUtmTerm",
        "setWalletId",
        "Companion",
        "android-aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ATTRIBUTION_COMPLETE_KEY:Ljava/lang/String; = "ATTRIBUTION_COMPLETE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;

.field public static final INITIAL_ATTRIBUTION_TIMESTAMP_KEY:Ljava/lang/String; = "INITIAL_ATTRIBUTION_TIMESTAMP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OEM_ID_KEY:Ljava/lang/String; = "OEM_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTM_CAMPAIGN_KEY:Ljava/lang/String; = "UTM_CAMPAIGN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTM_CONTENT_KEY:Ljava/lang/String; = "UTM_CONTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTM_MEDIUM_KEY:Ljava/lang/String; = "UTM_MEDIUM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTM_SOURCE_KEY:Ljava/lang/String; = "UTM_SOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UTM_TERM_KEY:Ljava/lang/String; = "UTM_TERM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLET_ID_KEY:Ljava/lang/String; = "WALLET_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->Companion:Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic setOemId$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setOemId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setUtmCampaign$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmCampaign(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setUtmContent$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmContent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setUtmMedium$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmMedium(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setUtmSource$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmSource(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setUtmTerm$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setUtmTerm(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setWalletId$default(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setWalletId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final completeAttribution()V
    .locals 2

    const-string v0, "ATTRIBUTION_COMPLETE"

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final getInitialAttributionTimestamp()J
    .locals 6

    .line 16
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const-string v1, "INITIAL_ATTRIBUTION_TIMESTAMP"

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getLong$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOemId()Ljava/lang/String;
    .locals 4

    .line 9
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "OEM_ID"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUtmCampaign()Ljava/lang/String;
    .locals 4

    .line 12
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UTM_CAMPAIGN"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUtmContent()Ljava/lang/String;
    .locals 4

    .line 14
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UTM_CONTENT"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUtmMedium()Ljava/lang/String;
    .locals 4

    .line 11
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UTM_MEDIUM"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUtmSource()Ljava/lang/String;
    .locals 4

    .line 10
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UTM_SOURCE"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUtmTerm()Ljava/lang/String;
    .locals 4

    .line 13
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UTM_TERM"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWalletId()Ljava/lang/String;
    .locals 4

    .line 8
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "WALLET_ID"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAttributionComplete()Z
    .locals 5

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ATTRIBUTION_COMPLETE"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getBoolean$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setInitialAttributionTimestamp(J)V
    .locals 1

    const-string v0, "INITIAL_ATTRIBUTION_TIMESTAMP"

    .line 26
    invoke-virtual {p0, v0, p1, p2}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final setOemId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OEM_ID"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUtmCampaign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTM_CAMPAIGN"

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUtmContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTM_CONTENT"

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUtmMedium(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTM_MEDIUM"

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUtmSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTM_SOURCE"

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUtmTerm(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTM_TERM"

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWalletId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WALLET_ID"

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
