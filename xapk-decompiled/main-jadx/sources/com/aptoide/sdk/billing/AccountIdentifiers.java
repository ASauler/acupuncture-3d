package com.aptoide.sdk.billing;

import kotlin.Metadata;

/* JADX INFO: compiled from: AccountIdentifiers.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/AccountIdentifiers;", "", "obfuscatedAccountId", "", "(Ljava/lang/String;)V", "getObfuscatedAccountId", "()Ljava/lang/String;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccountIdentifiers {
    private final String obfuscatedAccountId;

    public AccountIdentifiers(String str) {
        this.obfuscatedAccountId = str;
    }

    public final String getObfuscatedAccountId() {
        return this.obfuscatedAccountId;
    }
}
