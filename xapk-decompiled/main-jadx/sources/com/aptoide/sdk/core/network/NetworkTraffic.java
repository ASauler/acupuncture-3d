package com.aptoide.sdk.core.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkTraffic.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/core/network/NetworkTraffic;", "", "()V", "getAverageSpeed", "", "context", "Landroid/content/Context;", "Companion", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkTraffic {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final int MBPS_DIVIDER = 1000;

    public final String getAverageSpeed(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Logger.logInfo("Obtaining Network speed information.");
        try {
            Object systemService = context.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            Intrinsics.checkNotNull(networkCapabilities);
            int linkDownstreamBandwidthKbps = networkCapabilities.getLinkDownstreamBandwidthKbps() / 1000;
            Logger.logInfo("Network speed obtained: " + linkDownstreamBandwidthKbps);
            return String.valueOf(linkDownstreamBandwidthKbps);
        } catch (Exception e) {
            Logger.logWarning("There was an error obtaining network speed. " + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: compiled from: NetworkTraffic.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/core/network/NetworkTraffic$Companion;", "", "()V", "MBPS_DIVIDER", "", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
