package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class TweetComposer {
    private static final String MIME_TYPE_JPEG = "image/jpeg";
    private static final String MIME_TYPE_PLAIN_TEXT = "text/plain";
    private static final String TWITTER_PACKAGE_NAME = "com.twitter.android";
    private static final String WEB_INTENT = "https://twitter.com/intent/tweet?text=%s&url=%s";
    static volatile TweetComposer instance;
    SessionManager<TwitterSession> sessionManager = TwitterCore.getInstance().getSessionManager();
    GuestSessionProvider guestSessionProvider = TwitterCore.getInstance().getGuestSessionProvider();
    Context context = Twitter.getInstance().getContext(getIdentifier());

    public String getIdentifier() {
        return "com.twitter.sdk.android:tweet-composer";
    }

    public String getVersion() {
        return "3.3.0.12";
    }

    public static TweetComposer getInstance() {
        if (instance == null) {
            synchronized (TweetComposer.class) {
                if (instance == null) {
                    instance = new TweetComposer();
                }
            }
        }
        return instance;
    }

    TweetComposer() {
    }

    public static class Builder {
        private final Context context;
        private Uri imageUri;
        private String text;
        private URL url;

        public Builder(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.context = context;
        }

        public Builder text(String str) {
            if (str == null) {
                throw new IllegalArgumentException("text must not be null.");
            }
            if (this.text != null) {
                throw new IllegalStateException("text already set.");
            }
            this.text = str;
            return this;
        }

        public Builder url(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("url must not be null.");
            }
            if (this.url != null) {
                throw new IllegalStateException("url already set.");
            }
            this.url = url;
            return this;
        }

        public Builder image(Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("imageUri must not be null.");
            }
            if (this.imageUri != null) {
                throw new IllegalStateException("imageUri already set.");
            }
            this.imageUri = uri;
            return this;
        }

        public Intent createIntent() {
            Intent intentCreateTwitterIntent = createTwitterIntent();
            return intentCreateTwitterIntent == null ? createWebIntent() : intentCreateTwitterIntent;
        }

        Intent createTwitterIntent() {
            Intent intent = new Intent("android.intent.action.SEND");
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.text)) {
                sb.append(this.text);
            }
            if (this.url != null) {
                if (sb.length() > 0) {
                    sb.append(' ');
                }
                sb.append(this.url.toString());
            }
            intent.putExtra("android.intent.extra.TEXT", sb.toString());
            intent.setType("text/plain");
            Uri uri = this.imageUri;
            if (uri != null) {
                intent.putExtra("android.intent.extra.STREAM", uri);
                intent.setType("image/jpeg");
            }
            for (ResolveInfo resolveInfo : this.context.getPackageManager().queryIntentActivities(intent, 65536)) {
                if (resolveInfo.activityInfo.packageName.startsWith(TweetComposer.TWITTER_PACKAGE_NAME)) {
                    intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                    return intent;
                }
            }
            return null;
        }

        Intent createWebIntent() {
            URL url = this.url;
            return new Intent("android.intent.action.VIEW", Uri.parse(String.format(TweetComposer.WEB_INTENT, UrlUtils.urlEncode(this.text), UrlUtils.urlEncode(url == null ? "" : url.toString()))));
        }

        public void show() {
            this.context.startActivity(createIntent());
        }
    }
}
