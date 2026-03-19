package com.aptoide.sdk.billing.usecases;

import android.content.Context;
import com.aptoide.sdk.billing.oemid.OemIdExtractorV1;
import com.aptoide.sdk.billing.oemid.OemIdExtractorV2;
import com.aptoide.sdk.billing.service.OemIdExtractorService;
import com.aptoide.sdk.billing.sharedpreferences.AttributionSharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetOemIdForPackage.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0002¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "packageName", "context", "Landroid/content/Context;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetOemIdForPackage extends UseCase {
    public static final GetOemIdForPackage INSTANCE = new GetOemIdForPackage();

    private GetOemIdForPackage() {
    }

    public final String invoke(String packageName, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.invokeUseCase();
        String oemId = new AttributionSharedPreferences(context).getOemId();
        return oemId == null ? new OemIdExtractorService(new OemIdExtractorV1(context), new OemIdExtractorV2(context)).extractOemId(packageName) : oemId;
    }
}
