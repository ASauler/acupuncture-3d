.class public Lcom/vesal/jlsx/international/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# static fields
.field private static final CODE_SIGN_IN:I = 0xc


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    const-string v0, "mainaclog"

    .line 38
    iput-object v0, p0, Lcom/vesal/jlsx/international/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getDeviceTypeFromPhysicalSize()Lcom/learnium/RNDeviceInfo/DeviceType;
    .locals 6

    const-string v0, "window"

    .line 255
    invoke-virtual {p0, v0}, Lcom/vesal/jlsx/international/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    .line 263
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 265
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 271
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v4, v0

    div-double/2addr v2, v4

    .line 272
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v0, v0

    div-double/2addr v4, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 273
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, v0, v2

    const-wide v3, 0x401b99999999999aL    # 6.9

    if-ltz v2, :cond_1

    cmpg-double v2, v0, v3

    if-gtz v2, :cond_1

    .line 277
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->HANDSET:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    :cond_1
    cmpl-double v2, v0, v3

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 280
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    .line 283
    :cond_2
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0
.end method

.method private getDeviceTypeFromResourceConfiguration()Lcom/learnium/RNDeviceInfo/DeviceType;
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    :cond_0
    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 294
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->HANDSET:Lcom/learnium/RNDeviceInfo/DeviceType;

    :goto_0
    return-object v0
.end method

.method private handleSignInResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainaclog"

    const-string v1, "account.getRequestedScopes= "

    const-string v2, "account.getPhotoUrl= "

    const-string v3, "account.getGrantedScopes= "

    const-string v4, "account.getAccount= "

    const-string v5, "account.getServerAuthCode= "

    const-string v6, "account.getGivenName= "

    const-string v7, "account.getFamilyName= "

    const-string v8, "account.getEmail= "

    const-string v9, "account.getDisplayName= "

    const-string v10, "account.getId= "

    const-string v11, "account.getIdToken= "

    .line 134
    :try_start_0
    const-class v12, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v12}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGivenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGrantedScopes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGoogleLoginCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signInResult:failed code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGoogleLoginCallback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkPad()V
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/vesal/jlsx/international/MainActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 202
    invoke-virtual {p0, v0}, Lcom/vesal/jlsx/international/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, v0}, Lcom/vesal/jlsx/international/MainActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public getDeviceType()Lcom/learnium/RNDeviceInfo/DeviceType;
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TV:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    :cond_0
    const-string v0, "uimode"

    .line 239
    invoke-virtual {p0, v0}, Lcom/vesal/jlsx/international/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 241
    sget-object v0, Lcom/learnium/RNDeviceInfo/DeviceType;->TV:Lcom/learnium/RNDeviceInfo/DeviceType;

    return-object v0

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/vesal/jlsx/international/MainActivity;->getDeviceTypeFromResourceConfiguration()Lcom/learnium/RNDeviceInfo/DeviceType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->UNKNOWN:Lcom/learnium/RNDeviceInfo/DeviceType;

    if-eq v0, v1, :cond_2

    return-object v0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/vesal/jlsx/international/MainActivity;->getDeviceTypeFromPhysicalSize()Lcom/learnium/RNDeviceInfo/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "AcuNational"

    return-object v0
.end method

.method public isPad()Ljava/lang/String;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getDeviceType()Lcom/learnium/RNDeviceInfo/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnium/RNDeviceInfo/DeviceType;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->TABLET:Lcom/learnium/RNDeviceInfo/DeviceType;

    invoke-virtual {v1}, Lcom/learnium/RNDeviceInfo/DeviceType;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getDeviceType()Lcom/learnium/RNDeviceInfo/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnium/RNDeviceInfo/DeviceType;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/learnium/RNDeviceInfo/DeviceType;->TV:Lcom/learnium/RNDeviceInfo/DeviceType;

    invoke-virtual {v1}, Lcom/learnium/RNDeviceInfo/DeviceType;->getValue()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/ReactActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    iget-object v0, p0, Lcom/vesal/jlsx/international/MainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 169
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/MainActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 193
    new-instance v0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->checkPad()V

    .line 56
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance p1, Lcom/vesal/jlsx/international/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/vesal/jlsx/international/MainActivity$1;-><init>(Lcom/vesal/jlsx/international/MainActivity;)V

    invoke-static {p0, p1}, Lcom/reactnative/unity/view/UnityUtils;->createPlayer(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V

    const/4 p1, 0x1

    .line 65
    invoke-static {p0, p1}, Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;Z)V

    .line 66
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/vesal/jlsx/international/MainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 67
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vesal/jlsx/international/MainActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/vesal/jlsx/international/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/MainActivity$2;-><init>(Lcom/vesal/jlsx/international/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 88
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
