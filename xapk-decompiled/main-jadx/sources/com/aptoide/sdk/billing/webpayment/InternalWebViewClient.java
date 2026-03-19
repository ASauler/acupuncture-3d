package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.aptoide.sdk.core.logger.Logger;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: InternalWebViewClient.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0002J\u001a\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0017J\u001c\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;", "Landroid/webkit/WebViewClient;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "shouldAllowExternalApps", "", "getShouldAllowExternalApps", "()Z", "setShouldAllowExternalApps", "(Z)V", "canHandleExternalApps", "uri", "Landroid/net/Uri;", "canHandleWebDeeplinkScheme", "handleUri", "shouldOverrideUrlLoading", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "request", "Landroid/webkit/WebResourceRequest;", "url", "", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InternalWebViewClient extends WebViewClient {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String WEB_DEEPLINK_SCHEME = "web-iap-result";
    private final Activity activity;
    private boolean shouldAllowExternalApps;

    public InternalWebViewClient(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
    }

    public final boolean getShouldAllowExternalApps() {
        return this.shouldAllowExternalApps;
    }

    public final void setShouldAllowExternalApps(boolean z) {
        this.shouldAllowExternalApps = z;
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java")
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        try {
            Uri uri = Uri.parse(url);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            return handleUri(uri);
        } catch (Exception e) {
            Logger.logError("There was a failure with the URL to Override.", e);
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Uri url = request.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
        return handleUri(url);
    }

    private final boolean handleUri(Uri uri) {
        try {
            Logger.logDebug(String.valueOf(uri));
            Logger.logInfo(String.valueOf(uri.getScheme()));
            if (canHandleWebDeeplinkScheme(uri)) {
                return true;
            }
            if (canHandleExternalApps(uri)) {
                return true;
            }
        } catch (Exception e) {
            Logger.logError("There was a failure with the URL to Override.", e);
        }
        Logger.logInfo("SDK can't handle internally the Deeplink. WebView should handle.");
        return false;
    }

    private final boolean canHandleWebDeeplinkScheme(Uri uri) {
        if (!StringsKt.equals$default(uri.getScheme(), WEB_DEEPLINK_SCHEME, false, 2, null)) {
            return false;
        }
        Logger.logInfo("Handling WebDeeplinkScheme.");
        this.activity.finish();
        return true;
    }

    private final boolean canHandleExternalApps(Uri uri) {
        String scheme = uri.getScheme();
        if ((scheme == null || scheme.length() == 0) || !this.shouldAllowExternalApps) {
            return false;
        }
        if (Intrinsics.areEqual(uri.getScheme(), "http") || Intrinsics.areEqual(uri.getScheme(), "https")) {
            return false;
        }
        try {
            this.activity.startActivity(new Intent("android.intent.action.VIEW", uri));
            return true;
        } catch (ActivityNotFoundException e) {
            Logger.logError("Failed to start URI: " + uri, e);
            return true;
        }
    }

    /* JADX INFO: compiled from: InternalWebViewClient.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient$Companion;", "", "()V", "WEB_DEEPLINK_SCHEME", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
