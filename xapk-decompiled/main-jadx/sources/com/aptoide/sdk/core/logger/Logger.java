package com.aptoide.sdk.core.logger;

import android.content.Context;
import android.util.Log;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowLabels;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\n\u0010\f\u001a\u00060\rj\u0002`\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/aptoide/sdk/core/logger/Logger;", "", "()V", "TAG", "", "isDebuggable", "", "getClassAndMethodName", "logDebug", "", "message", "logError", SdkWebPaymentFlowLabels.EXCEPTION, "Ljava/lang/Exception;", "Lkotlin/Exception;", "logInfo", "logVerbose", "logWarning", "logWarningDebug", "setupLogger", "context", "Landroid/content/Context;", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Logger {
    public static final Logger INSTANCE = new Logger();
    private static final String TAG = "AptoideBillingSDK_1001";
    private static boolean isDebuggable;

    private Logger() {
    }

    @JvmStatic
    public static final void setupLogger(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        isDebuggable = (context.getApplicationContext().getApplicationInfo().flags & 2) != 0;
    }

    @JvmStatic
    public static final void logInfo(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i(TAG, INSTANCE.getClassAndMethodName() + " " + message);
    }

    @JvmStatic
    public static final void logDebug(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (isDebuggable) {
            Log.d(TAG, INSTANCE.getClassAndMethodName() + " " + message);
        }
    }

    @JvmStatic
    public static final void logVerbose(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Log.v(TAG, INSTANCE.getClassAndMethodName() + " " + message);
    }

    @JvmStatic
    public static final void logWarning(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Log.w(TAG, INSTANCE.getClassAndMethodName() + " " + message);
    }

    @JvmStatic
    public static final void logWarningDebug(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (isDebuggable) {
            Log.w(TAG, INSTANCE.getClassAndMethodName() + " " + message);
        }
    }

    @JvmStatic
    public static final void logError(String message, Exception exception) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Log.e(TAG, INSTANCE.getClassAndMethodName() + " " + message, exception);
    }

    @JvmStatic
    public static final void logError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Log.e(TAG, INSTANCE.getClassAndMethodName() + " " + message);
    }

    private final String getClassAndMethodName() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 5) {
            return "[Unknown]";
        }
        StackTraceElement stackTraceElement = stackTrace[4];
        String className = stackTraceElement.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        return "[" + StringsKt.substringAfterLast$default(className, ".", (String) null, 2, (Object) null) + "#" + stackTraceElement.getMethodName() + "]";
    }
}
