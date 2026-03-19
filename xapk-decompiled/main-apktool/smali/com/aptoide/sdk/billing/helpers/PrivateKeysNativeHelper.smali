.class public final Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;
.super Ljava/lang/Object;
.source "PrivateKeysNativeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$ApiKeys;,
        Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00082\u00020\u0001:\u0002\u0007\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0086 \u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;",
        "",
        "()V",
        "getApiKey",
        "",
        "buildType",
        "key",
        "ApiKeys",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper;->Companion:Lcom/aptoide/sdk/billing/helpers/PrivateKeysNativeHelper$Companion;

    const-string v0, "native-keys-storer"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native getApiKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
