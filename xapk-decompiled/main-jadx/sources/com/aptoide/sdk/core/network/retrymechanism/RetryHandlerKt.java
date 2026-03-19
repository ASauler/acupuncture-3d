package com.aptoide.sdk.core.network.retrymechanism;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* JADX INFO: compiled from: RetryHandler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001an\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00010\n2!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\f¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"retryUntilSuccess", ExifInterface.GPS_DIRECTION_TRUE, "retries", "", "initialInterval", "", "exponentialBackoff", "", "maxInterval", "runningBlock", "Lkotlin/Function0;", "onRetryBlock", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "attempts", "", "(Ljava/lang/Integer;JZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "aptoide-core_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RetryHandlerKt {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> T retryUntilSuccess(java.lang.Integer r5, long r6, boolean r8, long r9, kotlin.jvm.functions.Function0<? extends T> r11, kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r12) throws java.lang.InterruptedException, com.aptoide.sdk.core.network.retrymechanism.exceptions.MaxAttemptsReachedException {
        /*
            java.lang.String r0 = "runningBlock"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "onRetryBlock"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r0 = 0
            r1 = r0
        Ld:
            r2 = 1
            if (r5 == 0) goto L20
            r3 = r5
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            if (r3 <= 0) goto L1b
            r3 = r2
            goto L1c
        L1b:
            r3 = r0
        L1c:
            if (r3 != 0) goto L20
            r3 = r2
            goto L21
        L20:
            r3 = r0
        L21:
            if (r3 != 0) goto L82
            java.lang.Object r5 = r11.invoke()     // Catch: com.aptoide.sdk.core.network.retrymechanism.exceptions.IncompleteCircularFunctionExecutionException -> L28
            return r5
        L28:
            r3 = move-exception
            int r1 = r1 + r2
            if (r5 == 0) goto L36
            int r5 = r5.intValue()
            int r5 = r5 + (-1)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
        L36:
            java.lang.String r2 = r3.getMessage()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Attempt "
            r3.<init>(r4)
            java.lang.StringBuilder r3 = r3.append(r1)
            java.lang.String r4 = " failed: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r2 = r3.append(r2)
            java.lang.String r2 = r2.toString()
            com.aptoide.sdk.core.logger.Logger.logError(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Retrying in "
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r6)
            java.lang.String r3 = " milliseconds..."
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.aptoide.sdk.core.logger.Logger.logInfo(r2)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r1)
            r12.invoke(r2)
            java.lang.Thread.sleep(r6)
            if (r8 == 0) goto Ld
            r2 = 2
            long r2 = (long) r2
            long r6 = r6 * r2
            long r6 = kotlin.ranges.RangesKt.coerceAtMost(r6, r9)
            goto Ld
        L82:
            com.aptoide.sdk.core.network.retrymechanism.exceptions.MaxAttemptsReachedException r5 = new com.aptoide.sdk.core.network.retrymechanism.exceptions.MaxAttemptsReachedException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.core.network.retrymechanism.RetryHandlerKt.retryUntilSuccess(java.lang.Integer, long, boolean, long, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1):java.lang.Object");
    }
}
