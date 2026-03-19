package com.aptoide.sdk.billing.usecases.ingameupdates;

import com.aptoide.sdk.billing.usecases.UseCase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetVanillaDeepLink.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0002¨\u0006\u0006"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetVanillaDeepLink;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "packageName", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetVanillaDeepLink extends UseCase {
    public static final GetVanillaDeepLink INSTANCE = new GetVanillaDeepLink();

    private GetVanillaDeepLink() {
    }

    public final String invoke(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        super.invokeUseCase();
        return "aptoidesearch://" + packageName;
    }
}
