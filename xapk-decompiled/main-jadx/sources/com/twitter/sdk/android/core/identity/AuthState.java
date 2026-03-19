package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticBackportWithForwarding0;
import com.twitter.sdk.android.core.Twitter;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
class AuthState {
    final AtomicReference<AuthHandler> authHandlerRef = new AtomicReference<>(null);

    AuthState() {
    }

    public boolean beginAuthorize(Activity activity, AuthHandler authHandler) {
        if (isAuthorizeInProgress()) {
            Twitter.getLogger().w("Twitter", "Authorize already in progress");
        } else if (authHandler.authorize(activity)) {
            boolean zM = PreviewView$1$$ExternalSyntheticBackportWithForwarding0.m(this.authHandlerRef, null, authHandler);
            if (zM) {
                return zM;
            }
            Twitter.getLogger().w("Twitter", "Failed to update authHandler, authorize already in progress.");
            return zM;
        }
        return false;
    }

    public void endAuthorize() {
        this.authHandlerRef.set(null);
    }

    public boolean isAuthorizeInProgress() {
        return this.authHandlerRef.get() != null;
    }

    public AuthHandler getAuthHandler() {
        return this.authHandlerRef.get();
    }
}
