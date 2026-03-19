package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.listeners.PaymentResponseStream;
import com.aptoide.sdk.billing.listeners.PurchaseData;
import com.aptoide.sdk.billing.listeners.SDKPaymentResponse;
import com.aptoide.sdk.billing.listeners.SDKWebResponse;
import com.aptoide.sdk.billing.listeners.WalletPaymentDeeplinkResponseStream;
import com.aptoide.sdk.billing.listeners.WebPaymentActionStream;
import com.aptoide.sdk.billing.payflow.models.WebViewDetails;
import com.aptoide.sdk.billing.usecases.HandleDeeplinkFromWebView;
import com.aptoide.sdk.billing.webpayment.ExternalPaymentActivity;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkPurchaseFlowLabels;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.ui.UIUtilsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: WebPaymentActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 ?2\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0012\u0004\u0012\u00020\u00060\u0005:\u0001?B\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0012\u0010\u001f\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0014H\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0011H\u0017J\b\u0010$\u001a\u00020\u001dH\u0002J\u0014\u0010%\u001a\u00020\u001d2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010'\u001a\u00020\u001dH\u0002J\b\u0010(\u001a\u00020\u001dH\u0002J\"\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010,H\u0014J\b\u0010-\u001a\u00020\u001dH\u0016J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u000200H\u0016J\u0012\u00101\u001a\u00020\u001d2\b\u00102\u001a\u0004\u0018\u000103H\u0014J\b\u00104\u001a\u00020\u001dH\u0014J\u0012\u00105\u001a\u00020\u001d2\b\u00106\u001a\u0004\u0018\u00010\u0006H\u0017J\u0010\u00107\u001a\u00020\u001d2\u0006\u00108\u001a\u000203H\u0014J\u0010\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u0006H\u0017J\b\u0010;\u001a\u00020\u001dH\u0002J\b\u0010<\u001a\u00020\u001dH\u0002J\u0010\u0010=\u001a\u00020\u001d2\u0006\u0010:\u001a\u00020\u0006H\u0003J\u0010\u0010>\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u0006H\u0017R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;", "Landroid/app/Activity;", "Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;", "Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;", "Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;", "Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;", "", "()V", "baseConstraintLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "internalWebViewClient", "Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;", "getInternalWebViewClient", "()Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;", "internalWebViewClient$delegate", "Lkotlin/Lazy;", "responseReceived", "", "skuType", "walletDeeplinkResponseCode", "", "Ljava/lang/Integer;", "webView", "Landroid/webkit/WebView;", "webViewContainer", "Landroid/widget/LinearLayout;", "webViewDetails", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "accept", "", "value", "acceptWebPaymentActionStream", "adjustWebViewSize", "orientation", "allowExternalApps", SdkWebPaymentFlowLabels.ALLOW, "connectViews", "notifyWebViewOfExternalPaymentResult", "data", "observeWalletPurchaseResultDeeplinkStream", "observeWebPaymentActionStream", "onActivityResult", "requestCode", "resultCode", "Landroid/content/Intent;", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPurchaseResult", "result", "onSaveInstanceState", "outState", "openDeeplink", "url", "removeWalletPurchaseResultDeeplinkStreamCollector", "setupBackgroundToClose", "setupWebView", "startExternalPayment", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebPaymentActivity extends Activity implements SDKWebPaymentInterface, WalletPaymentDeeplinkResponseStream.Consumer<SDKWebResponse>, WebPaymentActionStream.Consumer<String> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String SKU = "SKU";
    private static final String SKU_TYPE = "SKU_TYPE";
    private static final String URL = "URL";
    private static final String WEB_VIEW_DETAILS = "WEB_VIEW_DETAILS";
    private ConstraintLayout baseConstraintLayout;

    /* JADX INFO: renamed from: internalWebViewClient$delegate, reason: from kotlin metadata */
    private final Lazy internalWebViewClient = LazyKt.lazy(new Function0<InternalWebViewClient>() { // from class: com.aptoide.sdk.billing.webpayment.WebPaymentActivity$internalWebViewClient$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final InternalWebViewClient invoke() {
            return new InternalWebViewClient(this.this$0);
        }
    });
    private boolean responseReceived;
    private String skuType;
    private Integer walletDeeplinkResponseCode;
    private WebView webView;
    private LinearLayout webViewContainer;
    private WebViewDetails webViewDetails;

    @JvmStatic
    public static final Intent newIntent(Context context, String str, String str2, String str3, WebViewDetails webViewDetails) {
        return INSTANCE.newIntent(context, str, str2, str3, webViewDetails);
    }

    private final InternalWebViewClient getInternalWebViewClient() {
        return (InternalWebViewClient) this.internalWebViewClient.getValue();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        WebViewDetails webViewDetails;
        super.onCreate(savedInstanceState);
        setContentView(R.layout.web_payment_activity);
        String stringExtra = getIntent().getStringExtra(URL);
        if (stringExtra == null) {
            Logger.logError("URL not present in the Bundle. Aborting the WebView Payment.");
            PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
            finish();
            return;
        }
        connectViews();
        if (savedInstanceState != null) {
            WebView webView = this.webView;
            if (webView != null) {
                webView.restoreState(savedInstanceState);
                return;
            }
            return;
        }
        this.skuType = getIntent().getStringExtra("SKU_TYPE");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentStartEvent(stringExtra);
        if (Build.VERSION.SDK_INT >= 33) {
            webViewDetails = (WebViewDetails) getIntent().getSerializableExtra(WEB_VIEW_DETAILS, WebViewDetails.class);
        } else {
            webViewDetails = (WebViewDetails) getIntent().getSerializableExtra(WEB_VIEW_DETAILS);
        }
        this.webViewDetails = webViewDetails;
        WebViewOrientationUtils.INSTANCE.setupOrientation(this, this.webViewDetails);
        setupBackgroundToClose();
        setupWebView(stringExtra);
        adjustWebViewSize(UIUtilsKt.getScreenOrientation(this));
        observeWalletPurchaseResultDeeplinkStream();
        observeWebPaymentActionStream();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        adjustWebViewSize(newConfig.orientation);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        WebView webView = this.webView;
        if (webView != null) {
            webView.saveState(outState);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SDKPaymentResponse sDKPaymentResponseCreateCanceledTypeResponse;
        if (!this.responseReceived) {
            Integer num = this.walletDeeplinkResponseCode;
            if (num == null || (sDKPaymentResponseCreateCanceledTypeResponse = SDKWebResponse.toSDKPaymentResponse$default(new SDKWebResponse(num.intValue()), null, 1, null)) == null) {
                sDKPaymentResponseCreateCanceledTypeResponse = SDKPaymentResponse.INSTANCE.createCanceledTypeResponse();
            }
            PaymentResponseStream.getInstance().emit(sDKPaymentResponseCreateCanceledTypeResponse);
        }
        removeWalletPurchaseResultDeeplinkStreamCollector();
        super.onDestroy();
    }

    @Override // com.aptoide.sdk.billing.listeners.WalletPaymentDeeplinkResponseStream.Consumer
    public void accept(SDKWebResponse value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Logger.logInfo("Received response from WalletPaymentDeeplinkResponseStream with responseCode: " + value.getResponseCode() + ".");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentWalletPaymentResultEvent();
        if (value.getResponseCode() == ResponseCode.OK.getValue()) {
            Logger.logInfo("Response code successful. Sending Purchase Result and finishing WebPaymentActivity.");
            this.responseReceived = true;
            PaymentResponseStream.getInstance().emit(value.toSDKPaymentResponse(this.skuType));
            finish();
            return;
        }
        this.walletDeeplinkResponseCode = Integer.valueOf(value.getResponseCode());
    }

    @Override // com.aptoide.sdk.billing.listeners.WebPaymentActionStream.Consumer
    public void acceptWebPaymentActionStream(String value) {
        notifyWebViewOfExternalPaymentResult(value);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Logger.logInfo("Received response from External Payment Activity.\nRequest Code: " + requestCode + "\nResult Code: " + resultCode);
        Logger.logDebug("Extras: " + (data != null ? data.getExtras() : null));
        if (requestCode == 51) {
            notifyWebViewOfExternalPaymentResult$default(this, null, 1, null);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView = this.webView;
        boolean z = false;
        if (webView != null && webView.canGoBack()) {
            z = true;
        }
        if (z) {
            Logger.logInfo("Going back in WebView.");
            WebView webView2 = this.webView;
            if (webView2 != null) {
                webView2.goBack();
                return;
            }
            return;
        }
        Logger.logInfo("WebView already at initial page. Exiting activity.");
        super.onBackPressed();
    }

    @Override // com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface
    @JavascriptInterface
    public void onPurchaseResult(String result) {
        this.responseReceived = true;
        Logger.logDebug(result == null ? "" : result);
        Logger.logInfo("Received response from WebView Payment Result.");
        if (result != null) {
            try {
                SDKWebResponse sDKWebResponse = new SDKWebResponse(new JSONObject(result));
                int responseCode = sDKWebResponse.getResponseCode();
                PurchaseData purchaseData = sDKWebResponse.getPurchaseData();
                Logger.logInfo("Received Payment Result with responseCode: " + responseCode + " for sku: " + (purchaseData != null ? purchaseData.getProductId() : null));
                SDKPaymentResponse sDKPaymentResponse = sDKWebResponse.toSDKPaymentResponse(this.skuType);
                Logger.logInfo("Sending Payment Result with resultCode: " + sDKPaymentResponse.getResultCode());
                PaymentResponseStream.getInstance().emit(sDKPaymentResponse);
                return;
            } catch (Exception e) {
                Logger.logError("There was a failure receiving the purchase result from the WebView.", e);
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentErrorProcessingPurchaseResultEvent(e.toString());
                PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
                return;
            }
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentPurchaseResultEmptyEvent();
        PaymentResponseStream.getInstance().emit(SDKPaymentResponse.INSTANCE.createErrorTypeResponse());
    }

    @Override // com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface
    @JavascriptInterface
    public boolean openDeeplink(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return HandleDeeplinkFromWebView.INSTANCE.invoke(url, this);
    }

    @Override // com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface
    @JavascriptInterface
    public boolean startExternalPayment(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentLaunchExternalPaymentEvent(url);
        startActivityForResult(ExternalPaymentActivity.Companion.newIntent$default(ExternalPaymentActivity.INSTANCE, this, url, false, 4, null), 51);
        return true;
    }

    @Override // com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface
    @JavascriptInterface
    public void allowExternalApps(boolean allow) {
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentAllowExternalAppsEvent(allow);
        getInternalWebViewClient().setShouldAllowExternalApps(allow);
    }

    private final void connectViews() {
        this.webView = (WebView) findViewById(R.id.web_view);
        this.webViewContainer = (LinearLayout) findViewById(R.id.container_for_web_view);
        this.baseConstraintLayout = (ConstraintLayout) findViewById(R.id.base_constraint_layout);
    }

    private final void setupBackgroundToClose() {
        ((ConstraintLayout) findViewById(R.id.base_constraint_layout)).setOnClickListener(new View.OnClickListener() { // from class: com.aptoide.sdk.billing.webpayment.WebPaymentActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebPaymentActivity.setupBackgroundToClose$lambda$3(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupBackgroundToClose$lambda$3(WebPaymentActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final void setupWebView(String url) {
        WebView webView = this.webView;
        WebSettings settings = webView != null ? webView.getSettings() : null;
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        WebView webView2 = this.webView;
        WebSettings settings2 = webView2 != null ? webView2.getSettings() : null;
        if (settings2 != null) {
            settings2.setDomStorageEnabled(true);
        }
        WebView webView3 = this.webView;
        WebSettings settings3 = webView3 != null ? webView3.getSettings() : null;
        if (settings3 != null) {
            settings3.setDatabaseEnabled(true);
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
        WebView webView4 = this.webView;
        if (webView4 != null) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface");
            webView4.addJavascriptInterface(this, "SDKWebPaymentInterface");
        }
        WebView webView5 = this.webView;
        if (webView5 != null) {
            webView5.setWebViewClient(getInternalWebViewClient());
        }
        Logger.logDebug("Loading WebView for URL: " + url);
        Logger.logInfo("Loading WebView to start Web Payment.");
        WebView webView6 = this.webView;
        if (webView6 != null) {
            webView6.loadUrl(url);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void adjustWebViewSize(int r6) {
        /*
            r5 = this;
            android.widget.LinearLayout r0 = r5.webViewContainer
            androidx.constraintlayout.widget.ConstraintLayout r1 = r5.baseConstraintLayout
            if (r0 == 0) goto L7c
            if (r1 == 0) goto L7c
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            if (r0 == 0) goto L7c
            r2 = 0
            r3 = 2
            if (r6 != r3) goto L30
            com.aptoide.sdk.billing.payflow.models.WebViewDetails r4 = r5.webViewDetails
            if (r4 == 0) goto L1b
            boolean r4 = r4.hasLandscapeDetails()
            goto L1c
        L1b:
            r4 = r2
        L1c:
            if (r4 == 0) goto L30
            com.aptoide.sdk.billing.webpayment.WebViewLandscapeUtils r6 = com.aptoide.sdk.billing.webpayment.WebViewLandscapeUtils.INSTANCE
            r2 = r5
            android.app.Activity r2 = (android.app.Activity) r2
            com.aptoide.sdk.billing.payflow.models.WebViewDetails r3 = r5.webViewDetails
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r3 = r3.getLandscapeScreenDimensions()
            r6.applyDynamicLandscapeConstraints(r2, r1, r0, r3)
            goto L74
        L30:
            r4 = 1
            if (r6 != r4) goto L4f
            com.aptoide.sdk.billing.payflow.models.WebViewDetails r4 = r5.webViewDetails
            if (r4 == 0) goto L3b
            boolean r2 = r4.hasPortraitDetails()
        L3b:
            if (r2 == 0) goto L4f
            com.aptoide.sdk.billing.webpayment.WebViewPortraitUtils r6 = com.aptoide.sdk.billing.webpayment.WebViewPortraitUtils.INSTANCE
            r2 = r5
            android.app.Activity r2 = (android.app.Activity) r2
            com.aptoide.sdk.billing.payflow.models.WebViewDetails r3 = r5.webViewDetails
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r3 = r3.getPortraitScreenDimensions()
            r6.applyDynamicPortraitConstraints(r2, r1, r0, r3)
            goto L74
        L4f:
            android.content.res.Resources r2 = r5.getResources()
            int r4 = com.aptoide.billing.sdk.R.bool.isTablet
            boolean r2 = r2.getBoolean(r4)
            if (r2 == 0) goto L64
            com.aptoide.sdk.billing.webpayment.WebViewTabletUtils r6 = com.aptoide.sdk.billing.webpayment.WebViewTabletUtils.INSTANCE
            r2 = r5
            android.app.Activity r2 = (android.app.Activity) r2
            r6.applyTabletConstraints(r2, r1, r0)
            goto L74
        L64:
            if (r6 != r3) goto L6c
            com.aptoide.sdk.billing.webpayment.WebViewLandscapeUtils r6 = com.aptoide.sdk.billing.webpayment.WebViewLandscapeUtils.INSTANCE
            r6.applyDefaultLandscapeConstraints(r1, r0)
            goto L74
        L6c:
            com.aptoide.sdk.billing.webpayment.WebViewPortraitUtils r6 = com.aptoide.sdk.billing.webpayment.WebViewPortraitUtils.INSTANCE
            r2 = r5
            android.app.Activity r2 = (android.app.Activity) r2
            r6.applyDefaultPortraitConstraints(r2, r1, r0)
        L74:
            android.widget.LinearLayout r6 = r5.webViewContainer
            if (r6 != 0) goto L79
            goto L7c
        L79:
            r6.setLayoutParams(r0)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.webpayment.WebPaymentActivity.adjustWebViewSize(int):void");
    }

    private final void observeWalletPurchaseResultDeeplinkStream() {
        WalletPaymentDeeplinkResponseStream.getInstance().collect(this);
    }

    private final void removeWalletPurchaseResultDeeplinkStreamCollector() {
        WalletPaymentDeeplinkResponseStream.getInstance().removeCollector(this);
    }

    private final void observeWebPaymentActionStream() {
        WebPaymentActionStream.getInstance().collect(this);
    }

    static /* synthetic */ void notifyWebViewOfExternalPaymentResult$default(WebPaymentActivity webPaymentActivity, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        webPaymentActivity.notifyWebViewOfExternalPaymentResult(str);
    }

    private final void notifyWebViewOfExternalPaymentResult(String data) {
        if (data != null) {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentExecuteExternalDeeplinkEvent(data);
            WebView webView = this.webView;
            if (webView != null) {
                webView.loadUrl("javascript:onPaymentStateUpdated(\"" + data + "\")");
                return;
            }
            return;
        }
        SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentExternalPaymentResultEvent();
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.loadUrl("javascript:onPaymentStateUpdated()");
        }
    }

    /* JADX INFO: compiled from: WebPaymentActivity.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;", "", "()V", WebPaymentActivity.SKU, "", "SKU_TYPE", WebPaymentActivity.URL, WebPaymentActivity.WEB_VIEW_DETAILS, "newIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "url", SdkPurchaseFlowLabels.SKU, "skuType", "webViewDetails", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Intent newIntent(Context context, String url, String sku, String skuType, WebViewDetails webViewDetails) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(sku, "sku");
            Intrinsics.checkNotNullParameter(skuType, "skuType");
            Intent intent = new Intent(context, (Class<?>) WebPaymentActivity.class);
            intent.putExtra(WebPaymentActivity.URL, url);
            intent.putExtra(WebPaymentActivity.SKU, sku);
            intent.putExtra("SKU_TYPE", skuType);
            if (webViewDetails != null) {
                intent.putExtra(WebPaymentActivity.WEB_VIEW_DETAILS, webViewDetails);
            }
            intent.setFlags(268435456);
            return intent;
        }
    }
}
