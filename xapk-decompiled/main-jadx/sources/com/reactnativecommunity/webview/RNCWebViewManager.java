package com.reactnativecommunity.webview;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.ComponentCallbacks2;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Environment;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.JavascriptInterface;
import android.webkit.PermissionRequest;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.autofill.HintConstants;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewFeature;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestLabels;
import com.facebook.common.logging.FLog;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.CatalystInstance;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.PermissionAwareActivity;
import com.facebook.react.modules.core.PermissionListener;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.events.ContentSizeChangeEvent;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.views.scroll.OnScrollDispatchHelper;
import com.facebook.react.views.scroll.ReactScrollViewHelper;
import com.facebook.react.views.scroll.ScrollEvent;
import com.facebook.react.views.scroll.ScrollEventType;
import com.google.common.net.HttpHeaders;
import com.reactnativecommunity.webview.RNCWebViewModule;
import com.reactnativecommunity.webview.events.TopHttpErrorEvent;
import com.reactnativecommunity.webview.events.TopLoadingErrorEvent;
import com.reactnativecommunity.webview.events.TopLoadingFinishEvent;
import com.reactnativecommunity.webview.events.TopLoadingProgressEvent;
import com.reactnativecommunity.webview.events.TopLoadingStartEvent;
import com.reactnativecommunity.webview.events.TopMessageEvent;
import com.reactnativecommunity.webview.events.TopRenderProcessGoneEvent;
import com.reactnativecommunity.webview.events.TopShouldStartLoadWithRequestEvent;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import net.openid.appauth.ResponseTypeValues;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@ReactModule(name = "RNCWebView")
public class RNCWebViewManager extends SimpleViewManager<WebView> {
    protected static final String BLANK_URL = "about:blank";
    public static final int COMMAND_CLEAR_CACHE = 1001;
    public static final int COMMAND_CLEAR_FORM_DATA = 1000;
    public static final int COMMAND_CLEAR_HISTORY = 1002;
    public static final int COMMAND_FOCUS = 8;
    public static final int COMMAND_GO_BACK = 1;
    public static final int COMMAND_GO_FORWARD = 2;
    public static final int COMMAND_INJECT_JAVASCRIPT = 6;
    public static final int COMMAND_LOAD_URL = 7;
    public static final int COMMAND_POST_MESSAGE = 5;
    public static final int COMMAND_RELOAD = 3;
    public static final int COMMAND_STOP_LOADING = 4;
    protected static final String DEFAULT_DOWNLOADING_MESSAGE = "Downloading";
    protected static final String DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE = "Cannot download files as permission was denied. Please provide permission to write to storage, in order to download files.";
    protected static final String HTML_ENCODING = "UTF-8";
    protected static final String HTML_MIME_TYPE = "text/html";
    protected static final String HTTP_METHOD_POST = "POST";
    protected static final String JAVASCRIPT_INTERFACE = "ReactNativeWebView";
    protected static final String REACT_CLASS = "RNCWebView";
    protected static final int SHOULD_OVERRIDE_URL_LOADING_TIMEOUT = 250;
    private static final String TAG = "RNCWebViewManager";
    protected boolean mAllowsFullscreenVideo;
    protected boolean mAllowsProtectedMedia;
    protected String mDownloadingMessage;
    protected String mLackPermissionToDownloadMessage;
    protected String mUserAgent;
    protected String mUserAgentWithApplicationName;
    protected RNCWebChromeClient mWebChromeClient;
    protected WebViewConfig mWebViewConfig;

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNCWebView";
    }

    public RNCWebViewManager() {
        this.mWebChromeClient = null;
        this.mAllowsFullscreenVideo = false;
        this.mAllowsProtectedMedia = false;
        this.mUserAgent = null;
        this.mUserAgentWithApplicationName = null;
        this.mDownloadingMessage = null;
        this.mLackPermissionToDownloadMessage = null;
        this.mWebViewConfig = new WebViewConfig() { // from class: com.reactnativecommunity.webview.RNCWebViewManager.1
            @Override // com.reactnativecommunity.webview.WebViewConfig
            public void configWebView(WebView webView) {
            }
        };
    }

    public RNCWebViewManager(WebViewConfig webViewConfig) {
        this.mWebChromeClient = null;
        this.mAllowsFullscreenVideo = false;
        this.mAllowsProtectedMedia = false;
        this.mUserAgent = null;
        this.mUserAgentWithApplicationName = null;
        this.mDownloadingMessage = null;
        this.mLackPermissionToDownloadMessage = null;
        this.mWebViewConfig = webViewConfig;
    }

    protected RNCWebView createRNCWebViewInstance(ThemedReactContext themedReactContext) {
        return new RNCWebView(themedReactContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public WebView createViewInstance(final ThemedReactContext themedReactContext) {
        final RNCWebView rNCWebViewCreateRNCWebViewInstance = createRNCWebViewInstance(themedReactContext);
        setupWebChromeClient(themedReactContext, rNCWebViewCreateRNCWebViewInstance);
        themedReactContext.addLifecycleEventListener(rNCWebViewCreateRNCWebViewInstance);
        this.mWebViewConfig.configWebView(rNCWebViewCreateRNCWebViewInstance);
        WebSettings settings = rNCWebViewCreateRNCWebViewInstance.getSettings();
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setDomStorageEnabled(true);
        settings.setSupportMultipleWindows(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        setAllowUniversalAccessFromFileURLs(rNCWebViewCreateRNCWebViewInstance, false);
        setMixedContentMode(rNCWebViewCreateRNCWebViewInstance, ReactScrollViewHelper.OVER_SCROLL_NEVER);
        rNCWebViewCreateRNCWebViewInstance.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        rNCWebViewCreateRNCWebViewInstance.setDownloadListener(new DownloadListener() { // from class: com.reactnativecommunity.webview.RNCWebViewManager.2
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                rNCWebViewCreateRNCWebViewInstance.setIgnoreErrFailedForThisURL(str);
                RNCWebViewModule module = RNCWebViewManager.getModule(themedReactContext);
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                    String strGuessFileName = URLUtil.guessFileName(str, str3, str4);
                    String str5 = "Downloading " + strGuessFileName;
                    try {
                        URL url = new URL(str);
                        request.addRequestHeader(HttpHeaders.COOKIE, CookieManager.getInstance().getCookie(url.getProtocol() + "://" + url.getHost()));
                    } catch (MalformedURLException e) {
                        Log.w(RNCWebViewManager.TAG, "Error getting cookie for DownloadManager", e);
                    }
                    request.addRequestHeader(HttpHeaders.USER_AGENT, str2);
                    request.setTitle(strGuessFileName);
                    request.setDescription(str5);
                    request.allowScanningByMediaScanner();
                    request.setNotificationVisibility(1);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, strGuessFileName);
                    module.setDownloadRequest(request);
                    if (module.grantFileDownloaderPermissions(RNCWebViewManager.this.getDownloadingMessage(), RNCWebViewManager.this.getLackPermissionToDownloadMessage())) {
                        module.downloadFile(RNCWebViewManager.this.getDownloadingMessage());
                    }
                } catch (IllegalArgumentException e2) {
                    Log.w(RNCWebViewManager.TAG, "Unsupported URI, aborting download", e2);
                }
            }
        });
        return rNCWebViewCreateRNCWebViewInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDownloadingMessage() {
        String str = this.mDownloadingMessage;
        return str == null ? DEFAULT_DOWNLOADING_MESSAGE : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLackPermissionToDownloadMessage() {
        return this.mDownloadingMessage == null ? DEFAULT_LACK_PERMISSION_TO_DOWNLOAD_MESSAGE : this.mLackPermissionToDownloadMessage;
    }

    @ReactProp(name = "javaScriptEnabled")
    public void setJavaScriptEnabled(WebView webView, boolean z) {
        webView.getSettings().setJavaScriptEnabled(z);
    }

    @ReactProp(name = "setBuiltInZoomControls")
    public void setBuiltInZoomControls(WebView webView, boolean z) {
        webView.getSettings().setBuiltInZoomControls(z);
    }

    @ReactProp(name = "setDisplayZoomControls")
    public void setDisplayZoomControls(WebView webView, boolean z) {
        webView.getSettings().setDisplayZoomControls(z);
    }

    @ReactProp(name = "setSupportMultipleWindows")
    public void setSupportMultipleWindows(WebView webView, boolean z) {
        webView.getSettings().setSupportMultipleWindows(z);
    }

    @ReactProp(name = "showsHorizontalScrollIndicator")
    public void setShowsHorizontalScrollIndicator(WebView webView, boolean z) {
        webView.setHorizontalScrollBarEnabled(z);
    }

    @ReactProp(name = "showsVerticalScrollIndicator")
    public void setShowsVerticalScrollIndicator(WebView webView, boolean z) {
        webView.setVerticalScrollBarEnabled(z);
    }

    @ReactProp(name = "downloadingMessage")
    public void setDownloadingMessage(WebView webView, String str) {
        this.mDownloadingMessage = str;
    }

    @ReactProp(name = "lackPermissionToDownloadMessage")
    public void setLackPermissionToDownlaodMessage(WebView webView, String str) {
        this.mLackPermissionToDownloadMessage = str;
    }

    @ReactProp(name = "cacheEnabled")
    public void setCacheEnabled(WebView webView, boolean z) {
        webView.getSettings().setCacheMode(z ? -1 : 2);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @ReactProp(name = "cacheMode")
    public void setCacheMode(WebView webView, String str) {
        byte b2;
        Integer num;
        switch (str.hashCode()) {
            case -2059164003:
                b2 = !str.equals("LOAD_NO_CACHE") ? (byte) -1 : (byte) 2;
                break;
            case -1215135800:
                b2 = !str.equals("LOAD_DEFAULT") ? (byte) -1 : (byte) 3;
                break;
            case -873877826:
                b2 = !str.equals("LOAD_CACHE_ELSE_NETWORK") ? (byte) -1 : (byte) 1;
                break;
            case 1548620642:
                b2 = !str.equals("LOAD_CACHE_ONLY") ? (byte) -1 : (byte) 0;
                break;
            default:
                b2 = -1;
                break;
        }
        if (b2 == 0) {
            num = 3;
        } else if (b2 == 1) {
            num = 1;
        } else if (b2 == 2) {
            num = 2;
        } else {
            num = -1;
        }
        webView.getSettings().setCacheMode(num.intValue());
    }

    @ReactProp(name = "androidHardwareAccelerationDisabled")
    public void setHardwareAccelerationDisabled(WebView webView, boolean z) {
        if (z) {
            webView.setLayerType(1, null);
        }
    }

    @ReactProp(name = "androidLayerType")
    public void setLayerType(WebView webView, String str) {
        str.hashCode();
        webView.setLayerType(!str.equals("hardware") ? !str.equals("software") ? 0 : 1 : 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    @com.facebook.react.uimanager.annotations.ReactProp(name = "overScrollMode")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setOverScrollMode(android.webkit.WebView r6, java.lang.String r7) {
        /*
            r5 = this;
            int r0 = r7.hashCode()
            r1 = -1414557169(0xffffffffabaf920f, float:-1.2475037E-12)
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L2b
            r1 = 104712844(0x63dca8c, float:3.5695757E-35)
            if (r0 == r1) goto L21
            r1 = 951530617(0x38b73479, float:8.735894E-5)
            if (r0 == r1) goto L17
            goto L35
        L17:
            java.lang.String r0 = "content"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = r4
            goto L36
        L21:
            java.lang.String r0 = "never"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = r2
            goto L36
        L2b:
            java.lang.String r0 = "always"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L35
            r7 = r3
            goto L36
        L35:
            r7 = -1
        L36:
            if (r7 == 0) goto L44
            if (r7 == r4) goto L3f
            java.lang.Integer r7 = java.lang.Integer.valueOf(r2)
            goto L48
        L3f:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r4)
            goto L48
        L44:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
        L48:
            int r7 = r7.intValue()
            r6.setOverScrollMode(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.reactnativecommunity.webview.RNCWebViewManager.setOverScrollMode(android.webkit.WebView, java.lang.String):void");
    }

    @ReactProp(name = "nestedScrollEnabled")
    public void setNestedScrollEnabled(WebView webView, boolean z) {
        ((RNCWebView) webView).setNestedScrollEnabled(z);
    }

    @ReactProp(name = "thirdPartyCookiesEnabled")
    public void setThirdPartyCookiesEnabled(WebView webView, boolean z) {
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, z);
    }

    @ReactProp(name = "textZoom")
    public void setTextZoom(WebView webView, int i) {
        webView.getSettings().setTextZoom(i);
    }

    @ReactProp(name = "scalesPageToFit")
    public void setScalesPageToFit(WebView webView, boolean z) {
        webView.getSettings().setLoadWithOverviewMode(z);
        webView.getSettings().setUseWideViewPort(z);
    }

    @ReactProp(name = "domStorageEnabled")
    public void setDomStorageEnabled(WebView webView, boolean z) {
        webView.getSettings().setDomStorageEnabled(z);
    }

    @ReactProp(name = "userAgent")
    public void setUserAgent(WebView webView, String str) {
        if (str != null) {
            this.mUserAgent = str;
        } else {
            this.mUserAgent = null;
        }
        setUserAgentString(webView);
    }

    @ReactProp(name = "applicationNameForUserAgent")
    public void setApplicationNameForUserAgent(WebView webView, String str) {
        if (str != null) {
            this.mUserAgentWithApplicationName = WebSettings.getDefaultUserAgent(webView.getContext()) + " " + str;
        } else {
            this.mUserAgentWithApplicationName = null;
        }
        setUserAgentString(webView);
    }

    protected void setUserAgentString(WebView webView) {
        if (this.mUserAgent != null) {
            webView.getSettings().setUserAgentString(this.mUserAgent);
        } else if (this.mUserAgentWithApplicationName != null) {
            webView.getSettings().setUserAgentString(this.mUserAgentWithApplicationName);
        } else {
            webView.getSettings().setUserAgentString(WebSettings.getDefaultUserAgent(webView.getContext()));
        }
    }

    @ReactProp(name = "mediaPlaybackRequiresUserAction")
    public void setMediaPlaybackRequiresUserAction(WebView webView, boolean z) {
        webView.getSettings().setMediaPlaybackRequiresUserGesture(z);
    }

    @ReactProp(name = "javaScriptCanOpenWindowsAutomatically")
    public void setJavaScriptCanOpenWindowsAutomatically(WebView webView, boolean z) {
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(z);
    }

    @ReactProp(name = "allowFileAccessFromFileURLs")
    public void setAllowFileAccessFromFileURLs(WebView webView, boolean z) {
        webView.getSettings().setAllowFileAccessFromFileURLs(z);
    }

    @ReactProp(name = "allowUniversalAccessFromFileURLs")
    public void setAllowUniversalAccessFromFileURLs(WebView webView, boolean z) {
        webView.getSettings().setAllowUniversalAccessFromFileURLs(z);
    }

    @ReactProp(name = "saveFormDataDisabled")
    public void setSaveFormDataDisabled(WebView webView, boolean z) {
        webView.getSettings().setSaveFormData(!z);
    }

    @ReactProp(name = "injectedJavaScript")
    public void setInjectedJavaScript(WebView webView, String str) {
        ((RNCWebView) webView).setInjectedJavaScript(str);
    }

    @ReactProp(name = "injectedJavaScriptBeforeContentLoaded")
    public void setInjectedJavaScriptBeforeContentLoaded(WebView webView, String str) {
        ((RNCWebView) webView).setInjectedJavaScriptBeforeContentLoaded(str);
    }

    @ReactProp(name = "injectedJavaScriptForMainFrameOnly")
    public void setInjectedJavaScriptForMainFrameOnly(WebView webView, boolean z) {
        ((RNCWebView) webView).setInjectedJavaScriptForMainFrameOnly(z);
    }

    @ReactProp(name = "injectedJavaScriptBeforeContentLoadedForMainFrameOnly")
    public void setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(WebView webView, boolean z) {
        ((RNCWebView) webView).setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(z);
    }

    @ReactProp(name = "messagingEnabled")
    public void setMessagingEnabled(WebView webView, boolean z) {
        ((RNCWebView) webView).setMessagingEnabled(z);
    }

    @ReactProp(name = "messagingModuleName")
    public void setMessagingModuleName(WebView webView, String str) {
        ((RNCWebView) webView).setMessagingModuleName(str);
    }

    @ReactProp(name = "incognito")
    public void setIncognito(WebView webView, boolean z) {
        if (z) {
            CookieManager.getInstance().removeAllCookies(null);
            webView.getSettings().setCacheMode(2);
            webView.clearHistory();
            webView.clearCache(true);
            webView.clearFormData();
            webView.getSettings().setSavePassword(false);
            webView.getSettings().setSaveFormData(false);
        }
    }

    @ReactProp(name = "source")
    public void setSource(WebView webView, ReadableMap readableMap) {
        byte[] bytes;
        if (readableMap != null) {
            if (readableMap.hasKey("html")) {
                webView.loadDataWithBaseURL(readableMap.hasKey("baseUrl") ? readableMap.getString("baseUrl") : "", readableMap.getString("html"), HTML_MIME_TYPE, "UTF-8", null);
                return;
            }
            if (readableMap.hasKey("uri")) {
                String string = readableMap.getString("uri");
                String url = webView.getUrl();
                if (url == null || !url.equals(string)) {
                    if (readableMap.hasKey("method") && readableMap.getString("method").equalsIgnoreCase("POST")) {
                        if (readableMap.hasKey("body")) {
                            String string2 = readableMap.getString("body");
                            try {
                                bytes = string2.getBytes("UTF-8");
                            } catch (UnsupportedEncodingException unused) {
                                bytes = string2.getBytes();
                            }
                        } else {
                            bytes = null;
                        }
                        if (bytes == null) {
                            bytes = new byte[0];
                        }
                        webView.postUrl(string, bytes);
                        return;
                    }
                    HashMap map = new HashMap();
                    if (readableMap.hasKey(SdkBackendRequestLabels.HEADERS)) {
                        ReadableMap map2 = readableMap.getMap(SdkBackendRequestLabels.HEADERS);
                        ReadableMapKeySetIterator readableMapKeySetIteratorKeySetIterator = map2.keySetIterator();
                        while (readableMapKeySetIteratorKeySetIterator.hasNextKey()) {
                            String strNextKey = readableMapKeySetIteratorKeySetIterator.nextKey();
                            if ("user-agent".equals(strNextKey.toLowerCase(Locale.ENGLISH))) {
                                if (webView.getSettings() != null) {
                                    webView.getSettings().setUserAgentString(map2.getString(strNextKey));
                                }
                            } else {
                                map.put(strNextKey, map2.getString(strNextKey));
                            }
                        }
                    }
                    webView.loadUrl(string, map);
                    return;
                }
                return;
            }
        }
        webView.loadUrl(BLANK_URL);
    }

    @ReactProp(name = "basicAuthCredential")
    public void setBasicAuthCredential(WebView webView, ReadableMap readableMap) {
        ((RNCWebView) webView).setBasicAuthCredential((readableMap != null && readableMap.hasKey(HintConstants.AUTOFILL_HINT_USERNAME) && readableMap.hasKey("password")) ? new BasicAuthCredential(readableMap.getString(HintConstants.AUTOFILL_HINT_USERNAME), readableMap.getString("password")) : null);
    }

    @ReactProp(name = "onContentSizeChange")
    public void setOnContentSizeChange(WebView webView, boolean z) {
        ((RNCWebView) webView).setSendContentSizeChangeEvents(z);
    }

    @ReactProp(name = "mixedContentMode")
    public void setMixedContentMode(WebView webView, String str) {
        if (str == null || ReactScrollViewHelper.OVER_SCROLL_NEVER.equals(str)) {
            webView.getSettings().setMixedContentMode(1);
        } else if (ReactScrollViewHelper.OVER_SCROLL_ALWAYS.equals(str)) {
            webView.getSettings().setMixedContentMode(0);
        } else if ("compatibility".equals(str)) {
            webView.getSettings().setMixedContentMode(2);
        }
    }

    @ReactProp(name = "urlPrefixesForDefaultIntent")
    public void setUrlPrefixesForDefaultIntent(WebView webView, ReadableArray readableArray) {
        RNCWebViewClient rNCWebViewClient = ((RNCWebView) webView).getRNCWebViewClient();
        if (rNCWebViewClient == null || readableArray == null) {
            return;
        }
        rNCWebViewClient.setUrlPrefixesForDefaultIntent(readableArray);
    }

    @ReactProp(name = "allowsFullscreenVideo")
    public void setAllowsFullscreenVideo(WebView webView, Boolean bool) {
        this.mAllowsFullscreenVideo = bool != null && bool.booleanValue();
        setupWebChromeClient((ReactContext) webView.getContext(), webView);
    }

    @ReactProp(name = "allowFileAccess")
    public void setAllowFileAccess(WebView webView, Boolean bool) {
        webView.getSettings().setAllowFileAccess(bool != null && bool.booleanValue());
    }

    @ReactProp(name = "geolocationEnabled")
    public void setGeolocationEnabled(WebView webView, Boolean bool) {
        webView.getSettings().setGeolocationEnabled(bool != null && bool.booleanValue());
    }

    @ReactProp(name = "onScroll")
    public void setOnScroll(WebView webView, boolean z) {
        ((RNCWebView) webView).setHasScrollEvent(z);
    }

    @ReactProp(name = "forceDarkOn")
    public void setForceDarkOn(WebView webView, boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            if (WebViewFeature.isFeatureSupported("FORCE_DARK")) {
                WebSettingsCompat.setForceDark(webView.getSettings(), z ? 2 : 0);
            }
            if (z && WebViewFeature.isFeatureSupported(WebViewFeature.FORCE_DARK_STRATEGY)) {
                WebSettingsCompat.setForceDarkStrategy(webView.getSettings(), 2);
            }
        }
    }

    @ReactProp(name = "minimumFontSize")
    public void setMinimumFontSize(WebView webView, int i) {
        webView.getSettings().setMinimumFontSize(i);
    }

    @ReactProp(name = "allowsProtectedMedia")
    public void setAllowsProtectedMedia(WebView webView, boolean z) {
        WebChromeClient webChromeClient;
        this.mAllowsProtectedMedia = z;
        if (Build.VERSION.SDK_INT < 26 || (webChromeClient = webView.getWebChromeClient()) == null || !(webChromeClient instanceof RNCWebChromeClient)) {
            return;
        }
        ((RNCWebChromeClient) webChromeClient).setAllowsProtectedMedia(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public void addEventEmitters(ThemedReactContext themedReactContext, WebView webView) {
        webView.setWebViewClient(new RNCWebViewClient());
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public Map getExportedCustomDirectEventTypeConstants() {
        Map<String, Object> exportedCustomDirectEventTypeConstants = super.getExportedCustomDirectEventTypeConstants();
        if (exportedCustomDirectEventTypeConstants == null) {
            exportedCustomDirectEventTypeConstants = MapBuilder.newHashMap();
        }
        exportedCustomDirectEventTypeConstants.put(TopLoadingStartEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingStart"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingFinishEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingFinish"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingErrorEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingError"));
        exportedCustomDirectEventTypeConstants.put(TopMessageEvent.EVENT_NAME, MapBuilder.of("registrationName", "onMessage"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingProgressEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingProgress"));
        exportedCustomDirectEventTypeConstants.put(TopShouldStartLoadWithRequestEvent.EVENT_NAME, MapBuilder.of("registrationName", "onShouldStartLoadWithRequest"));
        exportedCustomDirectEventTypeConstants.put(ScrollEventType.getJSEventName(ScrollEventType.SCROLL), MapBuilder.of("registrationName", "onScroll"));
        exportedCustomDirectEventTypeConstants.put(TopHttpErrorEvent.EVENT_NAME, MapBuilder.of("registrationName", "onHttpError"));
        exportedCustomDirectEventTypeConstants.put(TopRenderProcessGoneEvent.EVENT_NAME, MapBuilder.of("registrationName", "onRenderProcessGone"));
        return exportedCustomDirectEventTypeConstants;
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public Map<String, Integer> getCommandsMap() {
        return MapBuilder.builder().put("goBack", 1).put("goForward", 2).put("reload", 3).put("stopLoading", 4).put("postMessage", 5).put("injectJavaScript", 6).put("loadUrl", 7).put("requestFocus", 8).put("clearFormData", 1000).put("clearCache", 1001).put("clearHistory", 1002).build();
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public void receiveCommand(WebView webView, String str, ReadableArray readableArray) {
        str.hashCode();
        switch (str) {
            case "goBack":
                webView.goBack();
                break;
            case "stopLoading":
                webView.stopLoading();
                break;
            case "reload":
                webView.reload();
                break;
            case "clearCache":
                webView.clearCache(readableArray != null && readableArray.getBoolean(0));
                break;
            case "goForward":
                webView.goForward();
                break;
            case "clearFormData":
                webView.clearFormData();
                break;
            case "loadUrl":
                if (readableArray == null) {
                    throw new RuntimeException("Arguments for loading an url are null!");
                }
                ((RNCWebView) webView).progressChangedFilter.setWaitingForCommandLoadUrl(false);
                webView.loadUrl(readableArray.getString(0));
                break;
                break;
            case "clearHistory":
                webView.clearHistory();
                break;
            case "requestFocus":
                webView.requestFocus();
                break;
            case "postMessage":
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("data", readableArray.getString(0));
                    ((RNCWebView) webView).evaluateJavascriptWithFallback("(function () {var event;var data = " + jSONObject.toString() + ";try {event = new MessageEvent('message', data);} catch (e) {event = document.createEvent('MessageEvent');event.initMessageEvent('message', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();");
                    break;
                } catch (JSONException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "injectJavaScript":
                ((RNCWebView) webView).evaluateJavascriptWithFallback(readableArray.getString(0));
                break;
        }
        super.receiveCommand(webView, str, readableArray);
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public void onDropViewInstance(WebView webView) {
        super.onDropViewInstance(webView);
        ThemedReactContext themedReactContext = (ThemedReactContext) webView.getContext();
        RNCWebView rNCWebView = (RNCWebView) webView;
        themedReactContext.removeLifecycleEventListener(rNCWebView);
        rNCWebView.cleanupCallbacksAndDestroy();
        this.mWebChromeClient = null;
    }

    public static RNCWebViewModule getModule(ReactContext reactContext) {
        return (RNCWebViewModule) reactContext.getNativeModule(RNCWebViewModule.class);
    }

    protected void setupWebChromeClient(ReactContext reactContext, WebView webView) {
        final Activity currentActivity = reactContext.getCurrentActivity();
        if (this.mAllowsFullscreenVideo && currentActivity != null) {
            final int requestedOrientation = currentActivity.getRequestedOrientation();
            this.mWebChromeClient = new RNCWebChromeClient(reactContext, webView) { // from class: com.reactnativecommunity.webview.RNCWebViewManager.3
                @Override // android.webkit.WebChromeClient
                public Bitmap getDefaultVideoPoster() {
                    return Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
                }

                @Override // android.webkit.WebChromeClient
                public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                    if (this.mVideoView != null) {
                        customViewCallback.onCustomViewHidden();
                        return;
                    }
                    this.mVideoView = view;
                    this.mCustomViewCallback = customViewCallback;
                    currentActivity.setRequestedOrientation(-1);
                    this.mVideoView.setSystemUiVisibility(7942);
                    currentActivity.getWindow().setFlags(512, 512);
                    this.mVideoView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                    ViewGroup rootView = getRootView();
                    rootView.addView(this.mVideoView, FULLSCREEN_LAYOUT_PARAMS);
                    if (rootView.getRootView() != this.mWebView.getRootView()) {
                        this.mWebView.getRootView().setVisibility(8);
                    } else {
                        this.mWebView.setVisibility(8);
                    }
                    this.mReactContext.addLifecycleEventListener(this);
                }

                @Override // android.webkit.WebChromeClient
                public void onHideCustomView() {
                    if (this.mVideoView == null) {
                        return;
                    }
                    ViewGroup rootView = getRootView();
                    if (rootView.getRootView() != this.mWebView.getRootView()) {
                        this.mWebView.getRootView().setVisibility(0);
                    } else {
                        this.mWebView.setVisibility(0);
                    }
                    currentActivity.getWindow().clearFlags(512);
                    rootView.removeView(this.mVideoView);
                    this.mCustomViewCallback.onCustomViewHidden();
                    this.mVideoView = null;
                    this.mCustomViewCallback = null;
                    currentActivity.setRequestedOrientation(requestedOrientation);
                    this.mReactContext.removeLifecycleEventListener(this);
                }
            };
        } else {
            RNCWebChromeClient rNCWebChromeClient = this.mWebChromeClient;
            if (rNCWebChromeClient != null) {
                rNCWebChromeClient.onHideCustomView();
            }
            this.mWebChromeClient = new RNCWebChromeClient(reactContext, webView) { // from class: com.reactnativecommunity.webview.RNCWebViewManager.4
                @Override // android.webkit.WebChromeClient
                public Bitmap getDefaultVideoPoster() {
                    return Bitmap.createBitmap(50, 50, Bitmap.Config.ARGB_8888);
                }
            };
        }
        this.mWebChromeClient.setAllowsProtectedMedia(this.mAllowsProtectedMedia);
        webView.setWebChromeClient(this.mWebChromeClient);
    }

    protected static class RNCWebViewClient extends WebViewClient {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        protected ReadableArray mUrlPrefixesForDefaultIntent;
        protected boolean mLastLoadFailed = false;
        protected RNCWebView.ProgressChangedFilter progressChangedFilter = null;
        protected String ignoreErrFailedForThisURL = null;
        protected BasicAuthCredential basicAuthCredential = null;

        protected RNCWebViewClient() {
        }

        public void setIgnoreErrFailedForThisURL(String str) {
            this.ignoreErrFailedForThisURL = str;
        }

        public void setBasicAuthCredential(BasicAuthCredential basicAuthCredential) {
            this.basicAuthCredential = basicAuthCredential;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.mLastLoadFailed) {
                return;
            }
            ((RNCWebView) webView).callInjectedJavaScript();
            emitFinishEvent(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            this.mLastLoadFailed = false;
            RNCWebView rNCWebView = (RNCWebView) webView;
            rNCWebView.callInjectedJavaScriptBeforeContentLoaded();
            rNCWebView.dispatchEvent(webView, new TopLoadingStartEvent(webView.getId(), createWebViewEvent(webView, str)));
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            RNCWebView rNCWebView = (RNCWebView) webView;
            if (!(((ReactContext) webView.getContext()).getJavaScriptContextHolder().get() == 0) && rNCWebView.mCatalystInstance != null) {
                Pair<Integer, AtomicReference<RNCWebViewModule.ShouldOverrideUrlLoadingLock.ShouldOverrideCallbackState>> newLock = RNCWebViewModule.shouldOverrideUrlLoadingLock.getNewLock();
                int iIntValue = newLock.first.intValue();
                AtomicReference<RNCWebViewModule.ShouldOverrideUrlLoadingLock.ShouldOverrideCallbackState> atomicReference = newLock.second;
                WritableMap writableMapCreateWebViewEvent = createWebViewEvent(webView, str);
                writableMapCreateWebViewEvent.putInt("lockIdentifier", iIntValue);
                rNCWebView.sendDirectMessage("onShouldStartLoadWithRequest", writableMapCreateWebViewEvent);
                try {
                    synchronized (atomicReference) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        while (atomicReference.get() == RNCWebViewModule.ShouldOverrideUrlLoadingLock.ShouldOverrideCallbackState.UNDECIDED) {
                            if (SystemClock.elapsedRealtime() - jElapsedRealtime > 250) {
                                FLog.w(RNCWebViewManager.TAG, "Did not receive response to shouldOverrideUrlLoading in time, defaulting to allow loading.");
                                RNCWebViewModule.shouldOverrideUrlLoadingLock.removeLock(Integer.valueOf(iIntValue));
                                return false;
                            }
                            atomicReference.wait(250L);
                        }
                        boolean z = atomicReference.get() == RNCWebViewModule.ShouldOverrideUrlLoadingLock.ShouldOverrideCallbackState.SHOULD_OVERRIDE;
                        RNCWebViewModule.shouldOverrideUrlLoadingLock.removeLock(Integer.valueOf(iIntValue));
                        return z;
                    }
                } catch (InterruptedException e) {
                    FLog.e(RNCWebViewManager.TAG, "shouldOverrideUrlLoading was interrupted while waiting for result.", e);
                    RNCWebViewModule.shouldOverrideUrlLoadingLock.removeLock(Integer.valueOf(iIntValue));
                    return false;
                }
            }
            FLog.w(RNCWebViewManager.TAG, "Couldn't use blocking synchronous call for onShouldStartLoadWithRequest due to debugging or missing Catalyst instance, falling back to old event-and-load.");
            this.progressChangedFilter.setWaitingForCommandLoadUrl(true);
            rNCWebView.dispatchEvent(webView, new TopShouldStartLoadWithRequestEvent(webView.getId(), createWebViewEvent(webView, str)));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            BasicAuthCredential basicAuthCredential = this.basicAuthCredential;
            if (basicAuthCredential != null) {
                httpAuthHandler.proceed(basicAuthCredential.username, this.basicAuthCredential.password);
            } else {
                super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            String url = webView.getUrl();
            String url2 = sslError.getUrl();
            sslErrorHandler.cancel();
            if (!url.equalsIgnoreCase(url2)) {
                Log.w(RNCWebViewManager.TAG, "Resource blocked from loading due to SSL error. Blocked URL: " + url2);
            } else {
                int primaryError = sslError.getPrimaryError();
                onReceivedError(webView, primaryError, "SSL error: ".concat(primaryError != 0 ? primaryError != 1 ? primaryError != 2 ? primaryError != 3 ? primaryError != 4 ? primaryError != 5 ? "Unknown SSL Error" : "A generic error occurred" : "The date of the certificate is invalid" : "The certificate authority is not trusted" : "Hostname mismatch" : "The certificate has expired" : "The certificate is not yet valid"), url2);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            String str3 = this.ignoreErrFailedForThisURL;
            if (str3 != null && str2.equals(str3) && i == -1 && str.equals("net::ERR_FAILED")) {
                setIgnoreErrFailedForThisURL(null);
                return;
            }
            super.onReceivedError(webView, i, str, str2);
            this.mLastLoadFailed = true;
            emitFinishEvent(webView, str2);
            WritableMap writableMapCreateWebViewEvent = createWebViewEvent(webView, str2);
            writableMapCreateWebViewEvent.putDouble(ResponseTypeValues.CODE, i);
            writableMapCreateWebViewEvent.putString("description", str);
            ((RNCWebView) webView).dispatchEvent(webView, new TopLoadingErrorEvent(webView.getId(), writableMapCreateWebViewEvent));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest.isForMainFrame()) {
                WritableMap writableMapCreateWebViewEvent = createWebViewEvent(webView, webResourceRequest.getUrl().toString());
                writableMapCreateWebViewEvent.putInt("statusCode", webResourceResponse.getStatusCode());
                writableMapCreateWebViewEvent.putString("description", webResourceResponse.getReasonPhrase());
                ((RNCWebView) webView).dispatchEvent(webView, new TopHttpErrorEvent(webView.getId(), writableMapCreateWebViewEvent));
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return false;
            }
            super.onRenderProcessGone(webView, renderProcessGoneDetail);
            if (renderProcessGoneDetail.didCrash()) {
                Log.e(RNCWebViewManager.TAG, "The WebView rendering process crashed.");
            } else {
                Log.w(RNCWebViewManager.TAG, "The WebView rendering process was killed by the system.");
            }
            if (webView == null) {
                return true;
            }
            WritableMap writableMapCreateWebViewEvent = createWebViewEvent(webView, webView.getUrl());
            writableMapCreateWebViewEvent.putBoolean("didCrash", renderProcessGoneDetail.didCrash());
            ((RNCWebView) webView).dispatchEvent(webView, new TopRenderProcessGoneEvent(webView.getId(), writableMapCreateWebViewEvent));
            return true;
        }

        protected void emitFinishEvent(WebView webView, String str) {
            ((RNCWebView) webView).dispatchEvent(webView, new TopLoadingFinishEvent(webView.getId(), createWebViewEvent(webView, str)));
        }

        protected WritableMap createWebViewEvent(WebView webView, String str) {
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putDouble("target", webView.getId());
            writableMapCreateMap.putString("url", str);
            writableMapCreateMap.putBoolean("loading", (this.mLastLoadFailed || webView.getProgress() == 100) ? false : true);
            writableMapCreateMap.putString("title", webView.getTitle());
            writableMapCreateMap.putBoolean("canGoBack", webView.canGoBack());
            writableMapCreateMap.putBoolean("canGoForward", webView.canGoForward());
            return writableMapCreateMap;
        }

        public void setUrlPrefixesForDefaultIntent(ReadableArray readableArray) {
            this.mUrlPrefixesForDefaultIntent = readableArray;
        }

        public void setProgressChangedFilter(RNCWebView.ProgressChangedFilter progressChangedFilter) {
            this.progressChangedFilter = progressChangedFilter;
        }
    }

    protected static class RNCWebChromeClient extends WebChromeClient implements LifecycleEventListener {
        protected static final int COMMON_PERMISSION_REQUEST = 3;
        protected static final FrameLayout.LayoutParams FULLSCREEN_LAYOUT_PARAMS = new FrameLayout.LayoutParams(-1, -1, 17);
        protected static final int FULLSCREEN_SYSTEM_UI_VISIBILITY = 7942;
        protected GeolocationPermissions.Callback geolocationPermissionCallback;
        protected String geolocationPermissionOrigin;
        protected List<String> grantedPermissions;
        protected WebChromeClient.CustomViewCallback mCustomViewCallback;
        protected ReactContext mReactContext;
        protected View mVideoView;
        protected View mWebView;
        protected PermissionRequest permissionRequest;
        protected boolean permissionsRequestShown = false;
        protected List<String> pendingPermissions = new ArrayList();
        protected RNCWebView.ProgressChangedFilter progressChangedFilter = null;
        protected boolean mAllowsProtectedMedia = false;
        private PermissionListener webviewPermissionsListener = new PermissionListener() { // from class: com.reactnativecommunity.webview.RNCWebViewManager$RNCWebChromeClient$$ExternalSyntheticLambda0
            @Override // com.facebook.react.modules.core.PermissionListener
            public final boolean onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
                return this.f$0.lambda$new$0(i, strArr, iArr);
            }
        };

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostDestroy() {
        }

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostPause() {
        }

        public RNCWebChromeClient(ReactContext reactContext, WebView webView) {
            this.mReactContext = reactContext;
            this.mWebView = webView;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            ((WebView.WebViewTransport) message.obj).setWebView(new WebView(webView.getContext()));
            message.sendToTarget();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            String url = webView.getUrl();
            if (this.progressChangedFilter.isWaitingForCommandLoadUrl()) {
                return;
            }
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putDouble("target", webView.getId());
            writableMapCreateMap.putString("title", webView.getTitle());
            writableMapCreateMap.putString("url", url);
            writableMapCreateMap.putBoolean("canGoBack", webView.canGoBack());
            writableMapCreateMap.putBoolean("canGoForward", webView.canGoForward());
            writableMapCreateMap.putDouble("progress", i / 100.0f);
            ((RNCWebView) webView).dispatchEvent(webView, new TopLoadingProgressEvent(webView.getId(), writableMapCreateMap));
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(PermissionRequest permissionRequest) {
            this.grantedPermissions = new ArrayList();
            ArrayList arrayList = new ArrayList();
            String[] resources = permissionRequest.getResources();
            int length = resources.length;
            int i = 0;
            while (true) {
                String str = null;
                if (i >= length) {
                    break;
                }
                String str2 = resources[i];
                if (str2.equals("android.webkit.resource.AUDIO_CAPTURE")) {
                    str = "android.permission.RECORD_AUDIO";
                } else if (str2.equals("android.webkit.resource.VIDEO_CAPTURE")) {
                    str = "android.permission.CAMERA";
                } else if (str2.equals("android.webkit.resource.PROTECTED_MEDIA_ID")) {
                    if (this.mAllowsProtectedMedia) {
                        this.grantedPermissions.add(str2);
                    } else {
                        str = "android.webkit.resource.PROTECTED_MEDIA_ID";
                    }
                }
                if (str != null) {
                    if (ContextCompat.checkSelfPermission(this.mReactContext, str) == 0) {
                        this.grantedPermissions.add(str2);
                    } else {
                        arrayList.add(str);
                    }
                }
                i++;
            }
            if (arrayList.isEmpty()) {
                permissionRequest.grant((String[]) this.grantedPermissions.toArray(new String[0]));
                this.grantedPermissions = null;
            } else {
                this.permissionRequest = permissionRequest;
                requestPermissions(arrayList);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            if (ContextCompat.checkSelfPermission(this.mReactContext, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                this.geolocationPermissionCallback = callback;
                this.geolocationPermissionOrigin = str;
                requestPermissions(Collections.singletonList("android.permission.ACCESS_FINE_LOCATION"));
                return;
            }
            callback.invoke(str, true, false);
        }

        private PermissionAwareActivity getPermissionAwareActivity() {
            ComponentCallbacks2 currentActivity = this.mReactContext.getCurrentActivity();
            if (currentActivity == null) {
                throw new IllegalStateException("Tried to use permissions API while not attached to an Activity.");
            }
            if (!(currentActivity instanceof PermissionAwareActivity)) {
                throw new IllegalStateException("Tried to use permissions API but the host Activity doesn't implement PermissionAwareActivity.");
            }
            return (PermissionAwareActivity) currentActivity;
        }

        private synchronized void requestPermissions(List<String> list) {
            if (this.permissionsRequestShown) {
                this.pendingPermissions.addAll(list);
                return;
            }
            PermissionAwareActivity permissionAwareActivity = getPermissionAwareActivity();
            this.permissionsRequestShown = true;
            permissionAwareActivity.requestPermissions((String[]) list.toArray(new String[0]), 3, this.webviewPermissionsListener);
            this.pendingPermissions.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$0(int i, String[] strArr, int[] iArr) {
            PermissionRequest permissionRequest;
            List<String> list;
            List<String> list2;
            List<String> list3;
            List<String> list4;
            GeolocationPermissions.Callback callback;
            String str;
            this.permissionsRequestShown = false;
            boolean z = false;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str2 = strArr[i2];
                boolean z2 = iArr[i2] == 0;
                if (str2.equals("android.permission.ACCESS_FINE_LOCATION") && (callback = this.geolocationPermissionCallback) != null && (str = this.geolocationPermissionOrigin) != null) {
                    if (z2) {
                        callback.invoke(str, true, false);
                    } else {
                        callback.invoke(str, false, false);
                    }
                    this.geolocationPermissionCallback = null;
                    this.geolocationPermissionOrigin = null;
                }
                if (str2.equals("android.permission.RECORD_AUDIO")) {
                    if (z2 && (list4 = this.grantedPermissions) != null) {
                        list4.add("android.webkit.resource.AUDIO_CAPTURE");
                    }
                    z = true;
                }
                if (str2.equals("android.permission.CAMERA")) {
                    if (z2 && (list3 = this.grantedPermissions) != null) {
                        list3.add("android.webkit.resource.VIDEO_CAPTURE");
                    }
                    z = true;
                }
                if (str2.equals("android.webkit.resource.PROTECTED_MEDIA_ID")) {
                    if (z2 && (list2 = this.grantedPermissions) != null) {
                        list2.add("android.webkit.resource.PROTECTED_MEDIA_ID");
                    }
                    z = true;
                }
            }
            if (z && (permissionRequest = this.permissionRequest) != null && (list = this.grantedPermissions) != null) {
                permissionRequest.grant((String[]) list.toArray(new String[0]));
                this.permissionRequest = null;
                this.grantedPermissions = null;
            }
            if (this.pendingPermissions.isEmpty()) {
                return true;
            }
            requestPermissions(this.pendingPermissions);
            return false;
        }

        protected void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
            RNCWebViewManager.getModule(this.mReactContext).startPhotoPickerIntent(valueCallback, str);
        }

        protected void openFileChooser(ValueCallback<Uri> valueCallback) {
            RNCWebViewManager.getModule(this.mReactContext).startPhotoPickerIntent(valueCallback, "");
        }

        protected void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            RNCWebViewManager.getModule(this.mReactContext).startPhotoPickerIntent(valueCallback, str);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            return RNCWebViewManager.getModule(this.mReactContext).startPhotoPickerIntent(valueCallback, fileChooserParams.getAcceptTypes(), fileChooserParams.getMode() == 1);
        }

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostResume() {
            View view = this.mVideoView;
            if (view == null || view.getSystemUiVisibility() == FULLSCREEN_SYSTEM_UI_VISIBILITY) {
                return;
            }
            this.mVideoView.setSystemUiVisibility(FULLSCREEN_SYSTEM_UI_VISIBILITY);
        }

        protected ViewGroup getRootView() {
            return (ViewGroup) this.mReactContext.getCurrentActivity().findViewById(android.R.id.content);
        }

        public void setProgressChangedFilter(RNCWebView.ProgressChangedFilter progressChangedFilter) {
            this.progressChangedFilter = progressChangedFilter;
        }

        public void setAllowsProtectedMedia(boolean z) {
            this.mAllowsProtectedMedia = z;
        }
    }

    protected static class RNCWebView extends WebView implements LifecycleEventListener {
        protected boolean hasScrollEvent;
        protected String injectedJS;
        protected String injectedJSBeforeContentLoaded;
        protected boolean injectedJavaScriptBeforeContentLoadedForMainFrameOnly;
        protected boolean injectedJavaScriptForMainFrameOnly;
        protected CatalystInstance mCatalystInstance;
        private OnScrollDispatchHelper mOnScrollDispatchHelper;
        protected RNCWebViewClient mRNCWebViewClient;
        WebChromeClient mWebChromeClient;
        protected boolean messagingEnabled;
        protected String messagingModuleName;
        protected boolean nestedScrollEnabled;
        protected ProgressChangedFilter progressChangedFilter;
        protected boolean sendContentSizeChangeEvents;

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostPause() {
        }

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostResume() {
        }

        public RNCWebView(ThemedReactContext themedReactContext) {
            super(themedReactContext);
            this.injectedJavaScriptForMainFrameOnly = true;
            this.injectedJavaScriptBeforeContentLoadedForMainFrameOnly = true;
            this.messagingEnabled = false;
            this.sendContentSizeChangeEvents = false;
            this.hasScrollEvent = false;
            this.nestedScrollEnabled = false;
            createCatalystInstance();
            this.progressChangedFilter = new ProgressChangedFilter();
        }

        public void setIgnoreErrFailedForThisURL(String str) {
            this.mRNCWebViewClient.setIgnoreErrFailedForThisURL(str);
        }

        public void setBasicAuthCredential(BasicAuthCredential basicAuthCredential) {
            this.mRNCWebViewClient.setBasicAuthCredential(basicAuthCredential);
        }

        public void setSendContentSizeChangeEvents(boolean z) {
            this.sendContentSizeChangeEvents = z;
        }

        public void setHasScrollEvent(boolean z) {
            this.hasScrollEvent = z;
        }

        public void setNestedScrollEnabled(boolean z) {
            this.nestedScrollEnabled = z;
        }

        @Override // com.facebook.react.bridge.LifecycleEventListener
        public void onHostDestroy() {
            cleanupCallbacksAndDestroy();
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.nestedScrollEnabled) {
                requestDisallowInterceptTouchEvent(true);
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            if (this.sendContentSizeChangeEvents) {
                dispatchEvent(this, new ContentSizeChangeEvent(getId(), i, i2));
            }
        }

        @Override // android.webkit.WebView
        public void setWebViewClient(WebViewClient webViewClient) {
            super.setWebViewClient(webViewClient);
            if (webViewClient instanceof RNCWebViewClient) {
                RNCWebViewClient rNCWebViewClient = (RNCWebViewClient) webViewClient;
                this.mRNCWebViewClient = rNCWebViewClient;
                rNCWebViewClient.setProgressChangedFilter(this.progressChangedFilter);
            }
        }

        @Override // android.webkit.WebView
        public void setWebChromeClient(WebChromeClient webChromeClient) {
            this.mWebChromeClient = webChromeClient;
            super.setWebChromeClient(webChromeClient);
            if (webChromeClient instanceof RNCWebChromeClient) {
                ((RNCWebChromeClient) webChromeClient).setProgressChangedFilter(this.progressChangedFilter);
            }
        }

        public RNCWebViewClient getRNCWebViewClient() {
            return this.mRNCWebViewClient;
        }

        public void setInjectedJavaScript(String str) {
            this.injectedJS = str;
        }

        public void setInjectedJavaScriptBeforeContentLoaded(String str) {
            this.injectedJSBeforeContentLoaded = str;
        }

        public void setInjectedJavaScriptForMainFrameOnly(boolean z) {
            this.injectedJavaScriptForMainFrameOnly = z;
        }

        public void setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(boolean z) {
            this.injectedJavaScriptBeforeContentLoadedForMainFrameOnly = z;
        }

        protected RNCWebViewBridge createRNCWebViewBridge(RNCWebView rNCWebView) {
            return new RNCWebViewBridge(rNCWebView);
        }

        protected void createCatalystInstance() {
            ReactContext reactContext = (ReactContext) getContext();
            if (reactContext != null) {
                this.mCatalystInstance = reactContext.getCatalystInstance();
            }
        }

        public void setMessagingEnabled(boolean z) {
            if (this.messagingEnabled == z) {
                return;
            }
            this.messagingEnabled = z;
            if (z) {
                addJavascriptInterface(createRNCWebViewBridge(this), RNCWebViewManager.JAVASCRIPT_INTERFACE);
            } else {
                removeJavascriptInterface(RNCWebViewManager.JAVASCRIPT_INTERFACE);
            }
        }

        public void setMessagingModuleName(String str) {
            this.messagingModuleName = str;
        }

        protected void evaluateJavascriptWithFallback(String str) {
            evaluateJavascript(str, null);
        }

        public void callInjectedJavaScript() {
            String str;
            if (!getSettings().getJavaScriptEnabled() || (str = this.injectedJS) == null || TextUtils.isEmpty(str)) {
                return;
            }
            evaluateJavascriptWithFallback("(function() {\n" + this.injectedJS + ";\n})();");
        }

        public void callInjectedJavaScriptBeforeContentLoaded() {
            String str;
            if (!getSettings().getJavaScriptEnabled() || (str = this.injectedJSBeforeContentLoaded) == null || TextUtils.isEmpty(str)) {
                return;
            }
            evaluateJavascriptWithFallback("(function() {\n" + this.injectedJSBeforeContentLoaded + ";\n})();");
        }

        public void onMessage(final String str) {
            if (this.mRNCWebViewClient != null) {
                post(new Runnable() { // from class: com.reactnativecommunity.webview.RNCWebViewManager.RNCWebView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (RNCWebView.this.mRNCWebViewClient == null) {
                            return;
                        }
                        RNCWebViewClient rNCWebViewClient = RNCWebView.this.mRNCWebViewClient;
                        WebView webView = this;
                        WritableMap writableMapCreateWebViewEvent = rNCWebViewClient.createWebViewEvent(webView, webView.getUrl());
                        writableMapCreateWebViewEvent.putString("data", str);
                        if (RNCWebView.this.mCatalystInstance != null) {
                            this.sendDirectMessage("onMessage", writableMapCreateWebViewEvent);
                        } else {
                            RNCWebView.this.dispatchEvent(this, new TopMessageEvent(this.getId(), writableMapCreateWebViewEvent));
                        }
                    }
                });
                return;
            }
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putString("data", str);
            if (this.mCatalystInstance != null) {
                sendDirectMessage("onMessage", writableMapCreateMap);
            } else {
                dispatchEvent(this, new TopMessageEvent(getId(), writableMapCreateMap));
            }
        }

        protected void sendDirectMessage(String str, WritableMap writableMap) {
            WritableNativeMap writableNativeMap = new WritableNativeMap();
            writableNativeMap.putMap("nativeEvent", writableMap);
            WritableNativeArray writableNativeArray = new WritableNativeArray();
            writableNativeArray.pushMap(writableNativeMap);
            this.mCatalystInstance.callFunction(this.messagingModuleName, str, writableNativeArray);
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            if (this.hasScrollEvent) {
                if (this.mOnScrollDispatchHelper == null) {
                    this.mOnScrollDispatchHelper = new OnScrollDispatchHelper();
                }
                if (this.mOnScrollDispatchHelper.onScrollChanged(i, i2)) {
                    dispatchEvent(this, ScrollEvent.obtain(getId(), ScrollEventType.SCROLL, i, i2, this.mOnScrollDispatchHelper.getXFlingVelocity(), this.mOnScrollDispatchHelper.getYFlingVelocity(), computeHorizontalScrollRange(), computeVerticalScrollRange(), getWidth(), getHeight()));
                }
            }
        }

        protected void dispatchEvent(WebView webView, Event event) {
            ((UIManagerModule) ((ReactContext) webView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(event);
        }

        protected void cleanupCallbacksAndDestroy() {
            setWebViewClient(null);
            destroy();
        }

        @Override // android.webkit.WebView
        public void destroy() {
            WebChromeClient webChromeClient = this.mWebChromeClient;
            if (webChromeClient != null) {
                webChromeClient.onHideCustomView();
            }
            super.destroy();
        }

        protected class RNCWebViewBridge {
            RNCWebView mContext;

            RNCWebViewBridge(RNCWebView rNCWebView) {
                this.mContext = rNCWebView;
            }

            @JavascriptInterface
            public void postMessage(String str) {
                this.mContext.onMessage(str);
            }
        }

        protected static class ProgressChangedFilter {
            private boolean waitingForCommandLoadUrl = false;

            protected ProgressChangedFilter() {
            }

            public void setWaitingForCommandLoadUrl(boolean z) {
                this.waitingForCommandLoadUrl = z;
            }

            public boolean isWaitingForCommandLoadUrl() {
                return this.waitingForCommandLoadUrl;
            }
        }
    }
}
