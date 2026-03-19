package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class WalletInteract {
    private static final int ID_LENGTH = 40;
    private final AttributionSharedPreferences attributionSharedPreferences;

    public WalletInteract(AttributionSharedPreferences attributionSharedPreferences) {
        this.attributionSharedPreferences = attributionSharedPreferences;
    }

    public String retrieveWalletId() {
        String walletId = this.attributionSharedPreferences.getWalletId();
        if (walletId != null) {
            return walletId;
        }
        String strGenerateId = generateId();
        this.attributionSharedPreferences.setWalletId(strGenerateId);
        return strGenerateId;
    }

    private String generateId() {
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        while (sb.length() < 40) {
            sb.append(Integer.toHexString(random.nextInt()));
        }
        sb.setLength(40);
        return sb.toString();
    }
}
