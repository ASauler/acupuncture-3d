package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterSessionVerifier implements SessionVerifier<TwitterSession> {
    private final AccountServiceProvider accountServiceProvider;

    public TwitterSessionVerifier() {
        this(new AccountServiceProvider());
    }

    TwitterSessionVerifier(AccountServiceProvider accountServiceProvider) {
        this.accountServiceProvider = accountServiceProvider;
    }

    @Override // com.twitter.sdk.android.core.internal.SessionVerifier
    public void verifySession(TwitterSession twitterSession) {
        try {
            this.accountServiceProvider.getAccountService(twitterSession).verifyCredentials(true, false, false).execute();
        } catch (IOException | RuntimeException unused) {
        }
    }

    protected static class AccountServiceProvider {
        protected AccountServiceProvider() {
        }

        public AccountService getAccountService(TwitterSession twitterSession) {
            return new TwitterApiClient(twitterSession).getAccountService();
        }
    }
}
