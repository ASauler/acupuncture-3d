.class public final synthetic Lcom/twitter/sdk/android/core/internal/oauth/OAuthService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService$$ExternalSyntheticLambda0;->f$0:Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService$$ExternalSyntheticLambda0;->f$0:Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->lambda$new$0$com-twitter-sdk-android-core-internal-oauth-OAuthService(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
