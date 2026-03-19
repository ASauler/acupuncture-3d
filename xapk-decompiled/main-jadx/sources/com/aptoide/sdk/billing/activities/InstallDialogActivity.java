package com.aptoide.sdk.billing.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aptoide.billing.sdk.BuildConfig;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.BuyItemProperties;
import com.aptoide.sdk.billing.helpers.WalletUtils;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.PendingPurchaseStream;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.billing.usecases.GetAppInstalledVersion;
import com.aptoide.sdk.billing.utils.LayoutUtils;
import com.aptoide.sdk.core.analytics.SdkAnalytics;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkInstallWalletDialogLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
public class InstallDialogActivity extends Activity {
    private static final String BUY_ITEM_PROPERTIES = "buy_item_properties";
    private static final String INSTALL_BUTTON_COLOR = "#ffffbb33";
    private static final String INSTALL_BUTTON_TEXT_COLOR = "#ffffffff";
    private static final int MINIMUM_APTOIDE_VERSION = 9908;
    public BuyItemProperties buyItemProperties;
    public SdkAnalytics sdkAnalytics;
    private boolean shouldSendCancelResult = true;

    public static Intent newIntent(Context context, BuyItemProperties buyItemProperties) {
        Intent intent = new Intent(context, (Class<?>) InstallDialogActivity.class);
        intent.putExtra(BUY_ITEM_PROPERTIES, buyItemProperties);
        return intent;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.buyItemProperties = (BuyItemProperties) getIntent().getSerializableExtra(BUY_ITEM_PROPERTIES);
        this.sdkAnalytics = SdkAnalyticsUtils.INSTANCE.getSdkAnalytics();
        String str = "market://details?id=com.appcoins.wallet&utm_source=aptoidebillingsdk&app_source=" + getPackageName();
        Logger.logInfo("Starting InstallDialogActivity");
        showInstallationDialog(setupInstallationDialog(str));
        this.sdkAnalytics.sendInstallWalletDialogEvent();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (WalletUtils.INSTANCE.isAppAvailableToBind(BuildConfig.APTOIDE_WALLET_IAB_BIND_ACTION)) {
            this.shouldSendCancelResult = false;
            showLoadingDialog();
            this.sdkAnalytics.sendInstallWalletDialogSuccessEvent();
            PendingPurchaseStream.getInstance().emit(new Pair<>(this, this.buyItemProperties));
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.logInfo("Pressed back_button on InstallDialogActivity.");
        this.sdkAnalytics.sendInstallWalletDialogActionEvent("back_button");
        finish();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Logger.logInfo("InstallDialogActivity is being destroyed.");
        if (this.shouldSendCancelResult) {
            Logger.logInfo("Sending cancel event.");
            PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createCanceledTypeResponse());
        }
        super.onDestroy();
    }

    private void showLoadingDialog() {
        boolean z = getLayoutOrientation() == 2;
        RelativeLayout relativeLayoutBuildBackground = buildBackground();
        RelativeLayout relativeLayoutBuildDialogLayout = buildDialogLayout(z);
        relativeLayoutBuildBackground.addView(relativeLayoutBuildDialogLayout);
        ProgressBar progressBar = new ProgressBar(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        progressBar.getIndeterminateDrawable().setColorFilter(Color.parseColor("#fd786b"), PorterDuff.Mode.MULTIPLY);
        progressBar.setLayoutParams(layoutParams);
        relativeLayoutBuildDialogLayout.addView(progressBar);
        showInstallationDialog(relativeLayoutBuildBackground);
    }

    private RelativeLayout setupInstallationDialog(String str) {
        boolean z = getLayoutOrientation() == 2;
        RelativeLayout relativeLayoutBuildBackground = buildBackground();
        RelativeLayout relativeLayoutBuildDialogLayout = buildDialogLayout(z);
        relativeLayoutBuildBackground.addView(relativeLayoutBuildDialogLayout);
        ImageView imageViewBuildAppBanner = buildAppBanner();
        relativeLayoutBuildDialogLayout.addView(imageViewBuildAppBanner);
        ImageView imageViewBuildAppIcon = buildAppIcon(z, relativeLayoutBuildDialogLayout);
        relativeLayoutBuildBackground.addView(imageViewBuildAppIcon);
        relativeLayoutBuildBackground.addView(buildDialogBody(z, imageViewBuildAppIcon));
        Button buttonBuildInstallButton = buildInstallButton(relativeLayoutBuildDialogLayout, str);
        relativeLayoutBuildBackground.addView(buttonBuildInstallButton);
        relativeLayoutBuildBackground.addView(buildSkipButton(buttonBuildInstallButton));
        showAppRelatedImagery(imageViewBuildAppIcon, imageViewBuildAppBanner);
        return relativeLayoutBuildBackground;
    }

    private void showInstallationDialog(RelativeLayout relativeLayout) {
        setContentView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    private RelativeLayout buildBackground() {
        int color = Color.parseColor("#64000000");
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setBackgroundColor(color);
        return relativeLayout;
    }

    private Button buildSkipButton(Button button) {
        int color = Color.parseColor("#8f000000");
        Button button2 = new Button(this);
        button2.setText(getResources().getString(R.string.iab_wallet_not_installed_popup_close_button));
        button2.setTextSize(12.0f);
        button2.setTextColor(color);
        button2.setGravity(8388629);
        button2.setBackgroundColor(0);
        button2.setIncludeFontPadding(false);
        button2.setClickable(true);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.InstallDialogActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$buildSkipButton$0(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, dpToPx(36));
        layoutParams.addRule(8, button.getId());
        layoutParams.addRule(0, button.getId());
        layoutParams.setMargins(0, 0, dpToPx(80), 0);
        button2.setLayoutParams(layoutParams);
        return button2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSkipButton$0(View view) {
        Logger.logInfo("Pressed cancel button on InstallDialogActivity.");
        this.sdkAnalytics.sendInstallWalletDialogActionEvent(SdkInstallWalletDialogLabels.CANCEL);
        finish();
    }

    private Button buildInstallButton(RelativeLayout relativeLayout, final String str) {
        Button button = new Button(this);
        button.setText(getResources().getString(R.string.iab_wallet_not_installed_popup_close_install));
        button.setTextSize(12.0f);
        button.setTextColor(Color.parseColor(INSTALL_BUTTON_TEXT_COLOR));
        button.setId(LayoutUtils.generateRandomId());
        button.setGravity(17);
        button.setIncludeFontPadding(false);
        button.setPadding(0, 0, 0, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(INSTALL_BUTTON_COLOR));
        gradientDrawable.setCornerRadius(dpToPx(16));
        button.setBackground(gradientDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dpToPx(110), dpToPx(36));
        layoutParams.addRule(8, relativeLayout.getId());
        layoutParams.addRule(7, relativeLayout.getId());
        layoutParams.setMargins(0, 0, dpToPx(20), dpToPx(16));
        button.setLayoutParams(layoutParams);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.InstallDialogActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$buildInstallButton$1(str, view);
            }
        });
        return button;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildInstallButton$1(String str, View view) {
        Logger.logInfo("Pressed install button on InstallDialogActivity.");
        this.sdkAnalytics.sendInstallWalletDialogActionEvent(SdkInstallWalletDialogLabels.INSTALL);
        redirectToRemainingStores(str);
    }

    private void redirectToRemainingStores(String str) {
        Pair<Intent, Boolean> pairBuildStoreViewIntent = buildStoreViewIntent(str);
        if (isAbleToRedirect(pairBuildStoreViewIntent.getFirst())) {
            Logger.logInfo("Sending to available Store storeUrl: " + str);
            sendInternalAppDownloadAnalytic(pairBuildStoreViewIntent.getSecond());
            startActivity(pairBuildStoreViewIntent.getFirst());
        } else {
            Logger.logInfo("No store available. Sending to browser.");
            this.sdkAnalytics.sendInstallWalletDialogDownloadWalletFallbackEvent("browser");
            startActivityForBrowser();
        }
    }

    private void sendInternalAppDownloadAnalytic(Boolean bool) {
        if (bool.booleanValue()) {
            this.sdkAnalytics.sendInstallWalletDialogDownloadWalletVanillaEvent();
        } else {
            this.sdkAnalytics.sendInstallWalletDialogDownloadWalletFallbackEvent("native");
        }
    }

    private void startActivityForBrowser() {
        Intent intentBuildBrowserIntent = buildBrowserIntent();
        if (isAbleToRedirect(intentBuildBrowserIntent)) {
            startActivity(intentBuildBrowserIntent);
        } else {
            buildAlertNoBrowserAndStores();
        }
    }

    private TextView buildDialogBody(boolean z, ImageView imageView) {
        int iDpToPx;
        int color = Color.parseColor("#4a4a4a");
        TextView textView = new TextView(this);
        textView.setMaxLines(2);
        textView.setTextColor(color);
        textView.setTextSize(16.0f);
        textView.setGravity(1);
        int iDpToPx2 = dpToPx(20);
        if (z) {
            iDpToPx = dpToPx(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT);
            iDpToPx2 = dpToPx(10);
        } else {
            iDpToPx = -1;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPx, -2);
        layoutParams.addRule(3, imageView.getId());
        layoutParams.addRule(14);
        layoutParams.setMargins(dpToPx(32), iDpToPx2, dpToPx(32), 0);
        textView.setLayoutParams(layoutParams);
        textView.setText(setHighlightDialogBody());
        return textView;
    }

    private SpannableStringBuilder setHighlightDialogBody() {
        String string = getResources().getString(R.string.aptoide_wallet);
        String str = String.format(getResources().getString(R.string.iab_wallet_not_installed_popup_body), string);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new StyleSpan(1), str.indexOf(string), str.indexOf(string) + string.length(), 18);
        return spannableStringBuilder;
    }

    private ImageView buildAppIcon(boolean z, RelativeLayout relativeLayout) {
        ImageView imageView = new ImageView(this);
        imageView.setId(LayoutUtils.generateRandomId());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        int iDpToPx = dpToPx(85);
        int iDpToPx2 = dpToPx(66);
        if (z) {
            iDpToPx = dpToPx(80);
            iDpToPx2 = dpToPx(80);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPx2, iDpToPx2);
        layoutParams.addRule(14);
        layoutParams.addRule(6, relativeLayout.getId());
        layoutParams.setMargins(0, iDpToPx, 0, 0);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private ImageView buildAppBanner() {
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, dpToPx(120));
        layoutParams.addRule(14);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private RelativeLayout buildDialogLayout(boolean z) {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setId(LayoutUtils.generateRandomId());
        relativeLayout.setClipToPadding(false);
        relativeLayout.setBackgroundColor(-1);
        int iDpToPx = dpToPx(12);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(z ? dpToPx(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT) : -1, dpToPx(288));
        layoutParams.addRule(13);
        layoutParams.setMargins(iDpToPx, 0, iDpToPx, 0);
        relativeLayout.setLayoutParams(layoutParams);
        return relativeLayout;
    }

    private int dpToPx(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    private Pair<Intent, Boolean> buildStoreViewIntent(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (GetAppInstalledVersion.INSTANCE.invoke(BuildConfig.APTOIDE_PACKAGE_NAME, WalletUtils.INSTANCE.getContext()) >= MINIMUM_APTOIDE_VERSION) {
            intent.setPackage(BuildConfig.APTOIDE_PACKAGE_NAME);
            return new Pair<>(intent, true);
        }
        return new Pair<>(intent, false);
    }

    private void showAppRelatedImagery(ImageView imageView, ImageView imageView2) {
        Drawable applicationIcon;
        try {
            applicationIcon = getPackageManager().getApplicationIcon(getPackageName());
        } catch (PackageManager.NameNotFoundException e) {
            Logger.logWarning("Failed to find Application Icon: " + e);
            applicationIcon = null;
        }
        imageView.setVisibility(0);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setImageDrawable(applicationIcon);
        imageView2.setImageDrawable(getResources().getDrawable(R.drawable.dialog_wallet_install_empty_image));
    }

    private int getLayoutOrientation() {
        return getResources().getConfiguration().orientation;
    }

    private boolean isAbleToRedirect(Intent intent) {
        return intent.resolveActivityInfo(getPackageManager(), 0) != null;
    }

    private Intent buildBrowserIntent() {
        return new Intent("android.intent.action.VIEW", Uri.parse(BuildConfig.WALLET_APP_BROWSER_URL));
    }

    private void buildAlertNoBrowserAndStores() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        String string = getResources().getString(R.string.iap_wallet_and_appstore_not_installed_popup_body);
        String string2 = getResources().getString(R.string.iap_wallet_and_appstore_not_installed_popup_button);
        builder.setMessage(string);
        builder.setCancelable(true);
        builder.setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.aptoide.sdk.billing.activities.InstallDialogActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$buildAlertNoBrowserAndStores$2(dialogInterface, i);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAlertNoBrowserAndStores$2(DialogInterface dialogInterface, int i) {
        finish();
    }
}
