package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.Regex;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterSession;

/* JADX INFO: loaded from: classes2.dex */
public class ComposerActivity extends Activity {
    static final String EXTRA_HASHTAGS = "EXTRA_HASHTAGS";
    static final String EXTRA_IMAGE_URI = "EXTRA_IMAGE_URI";
    static final String EXTRA_TEXT = "EXTRA_TEXT";
    static final String EXTRA_THEME = "EXTRA_THEME";
    static final String EXTRA_USER_TOKEN = "EXTRA_USER_TOKEN";
    private static final int PLACEHOLDER_ID = -1;
    private static final String PLACEHOLDER_SCREEN_NAME = "";
    private ComposerController composerController;

    interface Finisher {
        void finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        TwitterSession twitterSession = new TwitterSession((TwitterAuthToken) intent.getParcelableExtra(EXTRA_USER_TOKEN), -1L, "");
        Uri uri = (Uri) intent.getParcelableExtra(EXTRA_IMAGE_URI);
        String stringExtra = intent.getStringExtra(EXTRA_TEXT);
        String stringExtra2 = intent.getStringExtra(EXTRA_HASHTAGS);
        setTheme(intent.getIntExtra(EXTRA_THEME, R.style.ComposerLight));
        setContentView(R.layout.tw__activity_composer);
        this.composerController = new ComposerController((ComposerView) findViewById(R.id.tw__composer_view), twitterSession, uri, stringExtra, stringExtra2, new FinisherImpl());
    }

    class FinisherImpl implements Finisher {
        FinisherImpl() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.Finisher
        public void finish() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.composerController.onClose();
    }

    public static class Builder {
        private final Context context;
        private String hashtags;
        private Uri imageUri;
        private String text;
        private int themeResId = R.style.ComposerLight;
        private TwitterAuthToken token;

        public Builder(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            this.context = context;
        }

        public Builder session(TwitterSession twitterSession) {
            if (twitterSession == null) {
                throw new IllegalArgumentException("TwitterSession must not be null");
            }
            TwitterAuthToken authToken = twitterSession.getAuthToken();
            if (authToken == null) {
                throw new IllegalArgumentException("TwitterSession token must not be null");
            }
            this.token = authToken;
            return this;
        }

        public Builder image(Uri uri) {
            this.imageUri = uri;
            return this;
        }

        public Builder text(String str) {
            this.text = str;
            return this;
        }

        public Builder hashtags(String... strArr) {
            if (strArr == null) {
                return this;
            }
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                if (Regex.VALID_HASHTAG.matcher(str).find()) {
                    if (sb.length() > 0) {
                        sb.append(" ");
                    }
                    sb.append(str);
                }
            }
            this.hashtags = sb.length() == 0 ? null : sb.toString();
            return this;
        }

        public Builder darkTheme() {
            this.themeResId = R.style.ComposerDark;
            return this;
        }

        public Intent createIntent() {
            if (this.token == null) {
                throw new IllegalStateException("Must set a TwitterSession");
            }
            Intent intent = new Intent(this.context, (Class<?>) ComposerActivity.class);
            intent.putExtra(ComposerActivity.EXTRA_USER_TOKEN, this.token);
            intent.putExtra(ComposerActivity.EXTRA_IMAGE_URI, this.imageUri);
            intent.putExtra(ComposerActivity.EXTRA_THEME, this.themeResId);
            intent.putExtra(ComposerActivity.EXTRA_TEXT, this.text);
            intent.putExtra(ComposerActivity.EXTRA_HASHTAGS, this.hashtags);
            return intent;
        }
    }
}
