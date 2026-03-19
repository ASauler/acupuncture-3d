.class public Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;
.super Landroid/app/Activity;
.source "InstallDialogActivity.java"


# static fields
.field private static final BUY_ITEM_PROPERTIES:Ljava/lang/String; = "buy_item_properties"

.field private static final INSTALL_BUTTON_COLOR:Ljava/lang/String; = "#ffffbb33"

.field private static final INSTALL_BUTTON_TEXT_COLOR:Ljava/lang/String; = "#ffffffff"

.field private static final MINIMUM_APTOIDE_VERSION:I = 0x26b4


# instance fields
.field public buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

.field public sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

.field private shouldSendCancelResult:Z


# direct methods
.method public static synthetic $r8$lambda$-RN5jX5OZb6UNrq9KgxENNcgJi4(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->lambda$buildSkipButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FCnom_-Ro-KU8wGDqdpYD8C2II(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->lambda$buildAlertNoBrowserAndStores$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wao-gSteHho9XqfnyJmQD1Qtqco(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->lambda$buildInstallButton$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->shouldSendCancelResult:Z

    return-void
.end method

.method private buildAlertNoBrowserAndStores()V
    .locals 4

    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aptoide/billing/sdk/R$string;->iap_wallet_and_appstore_not_installed_popup_body:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aptoide/billing/sdk/R$string;->iap_wallet_and_appstore_not_installed_popup_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 391
    new-instance v1, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda2;-><init>(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private buildAppBanner()Landroid/widget/ImageView;
    .locals 4

    .line 311
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 312
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 313
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x78

    .line 314
    invoke-direct {p0, v2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildAppIcon(ZLandroid/widget/RelativeLayout;)Landroid/widget/ImageView;
    .locals 3

    .line 293
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Lcom/aptoide/sdk/billing/utils/LayoutUtils;->generateRandomId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 295
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x55

    .line 296
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x42

    .line 297
    invoke-direct {p0, v2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v2

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    .line 299
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v1

    .line 300
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v2

    .line 302
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 303
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x6

    .line 304
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p2, 0x0

    .line 305
    invoke-virtual {p1, p2, v1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildBackground()Landroid/widget/RelativeLayout;
    .locals 2

    const-string v0, "#64000000"

    .line 171
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 172
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-object v1
.end method

.method private buildBrowserIntent()Landroid/content/Intent;
    .locals 3

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://wallet.appcoins.io/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildDialogBody(ZLandroid/widget/ImageView;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "#4a4a4a"

    .line 260
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 261
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 262
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 263
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x14

    .line 267
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v0

    if-eqz p1, :cond_0

    const/16 p1, 0x180

    .line 269
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result p1

    const/16 v0, 0xa

    .line 270
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 272
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x3

    .line 274
    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0xe

    .line 275
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x20

    .line 276
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->setHighlightDialogBody()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private buildDialogLayout(Z)Landroid/widget/RelativeLayout;
    .locals 5

    .line 321
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-static {}, Lcom/aptoide/sdk/billing/utils/LayoutUtils;->generateRandomId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v1, 0x0

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    const/4 v2, -0x1

    .line 324
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v3, 0xc

    .line 326
    invoke-direct {p0, v3}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v3

    if-eqz p1, :cond_0

    const/16 p1, 0x180

    .line 329
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v2

    .line 331
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x120

    invoke-direct {p0, v4}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v4

    invoke-direct {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 332
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 333
    invoke-virtual {p1, v3, v1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildInstallButton(Landroid/widget/RelativeLayout;Ljava/lang/String;)Landroid/widget/Button;
    .locals 6

    .line 202
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aptoide/billing/sdk/R$string;->iab_wallet_not_installed_popup_close_install:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const-string v1, "#ffffffff"

    .line 205
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 206
    invoke-static {}, Lcom/aptoide/sdk/billing/utils/LayoutUtils;->generateRandomId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    const/16 v1, 0x11

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 209
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 211
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v3, "#ffffbb33"

    .line 212
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0x10

    .line 213
    invoke-direct {p0, v3}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 214
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x6e

    invoke-direct {p0, v4}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v4

    const/16 v5, 0x24

    invoke-direct {p0, v5}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    .line 217
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x7

    .line 218
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getId()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x14

    .line 219
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result p1

    invoke-direct {p0, v3}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v3

    invoke-virtual {v2, v1, v1, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance p1, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private buildSkipButton(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 5

    const-string v0, "#8f000000"

    .line 178
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 179
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aptoide/billing/sdk/R$string;->iab_wallet_not_installed_popup_close_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 182
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const v0, 0x800015

    .line 183
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 185
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 187
    new-instance v2, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x24

    .line 193
    invoke-direct {p0, v3}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    .line 194
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    invoke-virtual {v2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x50

    .line 196
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->dpToPx(I)I

    move-result p1

    invoke-virtual {v2, v0, v0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private buildStoreViewIntent(Ljava/lang/String;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cm.aptoide.pt"

    invoke-virtual {p1, v2, v1}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x26b4

    if-lt p1, v1, :cond_0

    .line 347
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    new-instance p1, Lkotlin/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 350
    :cond_0
    new-instance p1, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private dpToPx(I)I
    .locals 2

    int-to-float p1, p1

    .line 339
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 339
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getLayoutOrientation()I
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private isAbleToRedirect(Landroid/content/Intent;)Z
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$buildAlertNoBrowserAndStores$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 391
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$buildInstallButton$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "Pressed install button on InstallDialogActivity."

    .line 222
    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 223
    iget-object p2, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v0, "install"

    invoke-virtual {p2, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogActionEvent(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->redirectToRemainingStores(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildSkipButton$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "Pressed cancel button on InstallDialogActivity."

    .line 188
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogActionEvent(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->finish()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lcom/aptoide/sdk/billing/BuyItemProperties;)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "buy_item_properties"

    .line 61
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private redirectToRemainingStores(Ljava/lang/String;)V
    .locals 3

    .line 230
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildStoreViewIntent(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->isAbleToRedirect(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending to available Store storeUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sendInternalAppDownloadAnalytic(Ljava/lang/Boolean;)V

    .line 234
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "No store available. Sending to browser."

    .line 236
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v0, "browser"

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogDownloadWalletFallbackEvent(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->startActivityForBrowser()V

    :goto_0
    return-void
.end method

.method private sendInternalAppDownloadAnalytic(Ljava/lang/Boolean;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogDownloadWalletVanillaEvent()V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v0, "native"

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogDownloadWalletFallbackEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setHighlightDialogBody()Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 283
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aptoide/billing/sdk/R$string;->aptoide_wallet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aptoide/billing/sdk/R$string;->iab_wallet_not_installed_popup_body:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x12

    .line 287
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private setupInstallationDialog(Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 5

    .line 135
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getLayoutOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildBackground()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 139
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildDialogLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildAppBanner()Landroid/widget/ImageView;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-direct {p0, v0, v2}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildAppIcon(ZLandroid/widget/RelativeLayout;)Landroid/widget/ImageView;

    move-result-object v4

    .line 146
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-direct {p0, v0, v4}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildDialogBody(ZLandroid/widget/ImageView;)Landroid/widget/TextView;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0, v2, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildInstallButton(Landroid/widget/RelativeLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 152
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildSkipButton(Landroid/widget/Button;)Landroid/widget/Button;

    move-result-object p1

    .line 155
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-direct {p0, v4, v3}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->showAppRelatedImagery(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v1
.end method

.method private showAppRelatedImagery(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find Application Icon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 364
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/aptoide/billing/sdk/R$drawable;->dialog_wallet_install_empty_image:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 369
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showInstallationDialog(Landroid/widget/RelativeLayout;)V
    .locals 2

    .line 163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showLoadingDialog()V
    .locals 7

    .line 116
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getLayoutOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildBackground()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 120
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildDialogLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    const/4 v5, -0x1

    .line 126
    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "#fd786b"

    .line 128
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->showInstallationDialog(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private startActivityForBrowser()V
    .locals 2

    .line 251
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildBrowserIntent()Landroid/content/Intent;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->isAbleToRedirect(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buildAlertNoBrowserAndStores()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "Pressed back_button on InstallDialogActivity."

    .line 98
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v1, "back_button"

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogActionEvent(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->finish()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "buy_item_properties"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/BuyItemProperties;

    iput-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

    .line 69
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "market://details?id=com.appcoins.wallet&utm_source=aptoidebillingsdk&app_source="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Starting InstallDialogActivity"

    .line 74
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->setupInstallationDialog(Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->showInstallationDialog(Landroid/widget/RelativeLayout;)V

    .line 80
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "InstallDialogActivity is being destroyed."

    .line 106
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->shouldSendCancelResult:Z

    if-eqz v0, :cond_0

    const-string v0, "Sending cancel event."

    .line 108
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object v0

    sget-object v1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    .line 110
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createCanceledTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    const-string v1, "com.appcoins.wallet.iab.action.BIND"

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->isAppAvailableToBind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->shouldSendCancelResult:Z

    .line 88
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->showLoadingDialog()V

    .line 89
    iget-object v0, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendInstallWalletDialogSuccessEvent()V

    .line 90
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->buyItemProperties:Lcom/aptoide/sdk/billing/BuyItemProperties;

    invoke-direct {v1, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->emit(Lkotlin/Pair;)V

    .line 92
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/InstallDialogActivity;->finish()V

    :cond_0
    return-void
.end method
