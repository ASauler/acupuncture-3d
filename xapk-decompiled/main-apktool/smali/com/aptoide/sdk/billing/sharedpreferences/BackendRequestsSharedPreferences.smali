.class public final Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;
.super Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;
.source "BackendRequestsSharedPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackendRequestsSharedPreferences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackendRequestsSharedPreferences.kt\ncom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\u0008\u001a\u00020\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getFailedRequests",
        "",
        "Lcom/aptoide/sdk/billing/service/RequestData;",
        "setFailedRequests",
        "",
        "value",
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
.field private static final Companion:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;

.field public static final FAILED_REQUESTS_KEY:Ljava/lang/String; = "FAILED_REQUESTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->Companion:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic setFailedRequests$default(Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->setFailedRequests(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getFailedRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/service/RequestData;",
            ">;"
        }
    .end annotation

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;

    const/4 v1, 0x2

    const-string v2, "FAILED_REQUESTS"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;->getString$default(Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    :try_start_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "There was an error getting the Failed Requests."

    .line 21
    invoke-static {v1, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-object v3
.end method

.method public final setFailedRequests(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/service/RequestData;",
            ">;)V"
        }
    .end annotation

    .line 30
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    const-string v3, "FAILED_REQUESTS"

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, v3, v2}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    new-instance v4, Ljava/io/ObjectOutputStream;

    move-object v5, v0

    check-cast v5, Ljava/io/OutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/io/ObjectOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0, v3, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 36
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "There was an error setting the Failed Requests."

    .line 40
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
