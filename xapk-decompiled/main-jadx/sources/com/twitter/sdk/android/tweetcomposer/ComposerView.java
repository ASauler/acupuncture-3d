package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.squareup.picasso.Picasso;
import com.twitter.sdk.android.core.internal.UserUtils;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.ComposerController;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class ComposerView extends LinearLayout {
    ImageView avatarView;
    ComposerController.ComposerCallbacks callbacks;
    TextView charCountView;
    ImageView closeView;
    View divider;
    private Picasso imageLoader;
    ImageView imageView;
    ColorDrawable mediaBg;
    ObservableScrollView scrollView;
    Button tweetButton;
    EditText tweetEditView;

    public ComposerView(Context context) {
        this(context, null);
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ComposerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.imageLoader = Picasso.with(getContext());
        this.mediaBg = new ColorDrawable(context.getResources().getColor(R.color.tw__composer_light_gray));
        inflate(context, R.layout.tw__composer_view, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findSubviews();
        this.closeView.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m878x2c264f58(view);
            }
        });
        this.tweetButton.setOnClickListener(new View.OnClickListener() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m879x59fee9b7(view);
            }
        });
        this.tweetEditView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m880x87d78416(textView, i, keyEvent);
            }
        });
        this.tweetEditView.addTextChangedListener(new TextWatcher() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ComposerView.this.callbacks.onTextChanged(ComposerView.this.getTweetText());
            }
        });
        this.scrollView.setScrollViewListener(new ObservableScrollView.ScrollViewListener() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerView$$ExternalSyntheticLambda3
            @Override // com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.ScrollViewListener
            public final void onScrollChanged(int i) {
                this.f$0.m881xb5b01e75(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$0$com-twitter-sdk-android-tweetcomposer-ComposerView, reason: not valid java name */
    /* synthetic */ void m878x2c264f58(View view) {
        this.callbacks.onCloseClick();
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$1$com-twitter-sdk-android-tweetcomposer-ComposerView, reason: not valid java name */
    /* synthetic */ void m879x59fee9b7(View view) {
        this.callbacks.onTweetPost(getTweetText());
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$2$com-twitter-sdk-android-tweetcomposer-ComposerView, reason: not valid java name */
    /* synthetic */ boolean m880x87d78416(TextView textView, int i, KeyEvent keyEvent) {
        this.callbacks.onTweetPost(getTweetText());
        return true;
    }

    /* JADX INFO: renamed from: lambda$onFinishInflate$3$com-twitter-sdk-android-tweetcomposer-ComposerView, reason: not valid java name */
    /* synthetic */ void m881xb5b01e75(int i) {
        if (i > 0) {
            this.divider.setVisibility(0);
        } else {
            this.divider.setVisibility(4);
        }
    }

    void findSubviews() {
        this.avatarView = (ImageView) findViewById(R.id.tw__author_avatar);
        this.closeView = (ImageView) findViewById(R.id.tw__composer_close);
        this.tweetEditView = (EditText) findViewById(R.id.tw__edit_tweet);
        this.charCountView = (TextView) findViewById(R.id.tw__char_count);
        this.tweetButton = (Button) findViewById(R.id.tw__post_tweet);
        this.scrollView = (ObservableScrollView) findViewById(R.id.tw__composer_scroll_view);
        this.divider = findViewById(R.id.tw__composer_profile_divider);
        this.imageView = (ImageView) findViewById(R.id.tw__image_view);
    }

    void setCallbacks(ComposerController.ComposerCallbacks composerCallbacks) {
        this.callbacks = composerCallbacks;
    }

    void setProfilePhotoView(User user) {
        String profileImageUrlHttps = UserUtils.getProfileImageUrlHttps(user, UserUtils.AvatarSize.REASONABLY_SMALL);
        Picasso picasso = this.imageLoader;
        if (picasso != null) {
            picasso.load(profileImageUrlHttps).placeholder(this.mediaBg).into(this.avatarView);
        }
    }

    String getTweetText() {
        return this.tweetEditView.getText().toString();
    }

    void setTweetText(String str) {
        this.tweetEditView.setText(str);
    }

    void setCharCount(int i) {
        this.charCountView.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i)));
    }

    void setCharCountTextStyle(int i) {
        this.charCountView.setTextAppearance(getContext(), i);
    }

    void postTweetEnabled(boolean z) {
        this.tweetButton.setEnabled(z);
    }

    void setImageView(Uri uri) {
        if (this.imageLoader != null) {
            this.imageView.setVisibility(0);
            this.imageLoader.load(uri).into(this.imageView);
        }
    }
}
