package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.billing.SkuDetails;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface SkuDetailsResponseListener {
    void onSkuDetailsResponse(int i, List<SkuDetails> list);
}
