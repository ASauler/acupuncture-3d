.class public final Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "GetOemIdForPackage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "invoke",
        "",
        "packageName",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 12
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-direct {v0, p2}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getOemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;

    .line 16
    new-instance v1, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV1;

    invoke-direct {v1, p2}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV1;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    .line 17
    new-instance v2, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;

    invoke-direct {v2, p2}, Lcom/aptoide/sdk/billing/oemid/OemIdExtractorV2;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;-><init>(Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;Lcom/aptoide/sdk/billing/oemid/OemIdExtractor;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/service/OemIdExtractorService;->extractOemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
