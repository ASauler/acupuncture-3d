package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.Validator;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;

/* JADX INFO: loaded from: classes2.dex */
class ComposerController {
    final ComposerView composerView;
    final DependencyProvider dependencyProvider;
    final ComposerActivity.Finisher finisher;
    final Uri imageUri;
    final TwitterSession session;

    interface ComposerCallbacks {
        void onCloseClick();

        void onTextChanged(String str);

        void onTweetPost(String str);
    }

    static boolean isPostEnabled(int i) {
        return i > 0 && i <= 140;
    }

    static boolean isTweetTextOverflow(int i) {
        return i > 140;
    }

    static int remainingCharCount(int i) {
        return 140 - i;
    }

    ComposerController(ComposerView composerView, TwitterSession twitterSession, Uri uri, String str, String str2, ComposerActivity.Finisher finisher) {
        this(composerView, twitterSession, uri, str, str2, finisher, new DependencyProvider());
    }

    ComposerController(ComposerView composerView, TwitterSession twitterSession, Uri uri, String str, String str2, ComposerActivity.Finisher finisher, DependencyProvider dependencyProvider) {
        this.composerView = composerView;
        this.session = twitterSession;
        this.imageUri = uri;
        this.finisher = finisher;
        this.dependencyProvider = dependencyProvider;
        composerView.setCallbacks(new ComposerCallbacksImpl());
        composerView.setTweetText(generateText(str, str2));
        setProfilePhoto();
        setImageView(uri);
    }

    String generateText(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    void setProfilePhoto() {
        this.dependencyProvider.getApiClient(this.session).getAccountService().verifyCredentials(false, true, false).enqueue(new Callback<User>() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerController.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<User> result) {
                ComposerController.this.composerView.setProfilePhotoView(result.data);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException twitterException) {
                ComposerController.this.composerView.setProfilePhotoView(null);
            }
        });
    }

    void setImageView(Uri uri) {
        if (uri != null) {
            this.composerView.setImageView(uri);
        }
    }

    class ComposerCallbacksImpl implements ComposerCallbacks {
        ComposerCallbacksImpl() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onTextChanged(String str) {
            int iTweetTextLength = ComposerController.this.tweetTextLength(str);
            ComposerController.this.composerView.setCharCount(ComposerController.remainingCharCount(iTweetTextLength));
            if (ComposerController.isTweetTextOverflow(iTweetTextLength)) {
                ComposerController.this.composerView.setCharCountTextStyle(R.style.tw__ComposerCharCountOverflow);
            } else {
                ComposerController.this.composerView.setCharCountTextStyle(R.style.tw__ComposerCharCount);
            }
            ComposerController.this.composerView.postTweetEnabled(ComposerController.isPostEnabled(iTweetTextLength));
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onTweetPost(String str) {
            Intent intent = new Intent(ComposerController.this.composerView.getContext(), (Class<?>) TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", ComposerController.this.session.getAuthToken());
            intent.putExtra("EXTRA_TWEET_TEXT", str);
            intent.putExtra("EXTRA_IMAGE_URI", ComposerController.this.imageUri);
            ComposerController.this.composerView.getContext().startService(intent);
            ComposerController.this.finisher.finish();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onCloseClick() {
            ComposerController.this.onClose();
        }
    }

    void onClose() {
        sendCancelBroadcast();
        this.finisher.finish();
    }

    int tweetTextLength(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return this.dependencyProvider.getTweetValidator().getTweetLength(str);
    }

    void sendCancelBroadcast() {
        Intent intent = new Intent(TweetUploadService.TWEET_COMPOSE_CANCEL);
        intent.setPackage(this.composerView.getContext().getPackageName());
        this.composerView.getContext().sendBroadcast(intent);
    }

    static class DependencyProvider {
        final Validator tweetValidator = new Validator();

        DependencyProvider() {
        }

        TwitterApiClient getApiClient(TwitterSession twitterSession) {
            return TwitterCore.getInstance().getApiClient(twitterSession);
        }

        Validator getTweetValidator() {
            return this.tweetValidator;
        }
    }
}
