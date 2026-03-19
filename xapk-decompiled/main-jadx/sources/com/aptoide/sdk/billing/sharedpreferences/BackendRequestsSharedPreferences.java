package com.aptoide.sdk.billing.sharedpreferences;

import android.content.Context;
import android.util.Base64;
import com.aptoide.sdk.billing.service.RequestData;
import com.aptoide.sdk.core.logger.Logger;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BackendRequestsSharedPreferences.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;", "Lcom/aptoide/sdk/billing/sharedpreferences/SharedPreferencesRepository;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getFailedRequests", "", "Lcom/aptoide/sdk/billing/service/RequestData;", "setFailedRequests", "", "value", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BackendRequestsSharedPreferences extends SharedPreferencesRepository {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final String FAILED_REQUESTS_KEY = "FAILED_REQUESTS";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackendRequestsSharedPreferences(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final List<RequestData> getFailedRequests() {
        String string$default = SharedPreferencesRepository.getString$default(this, FAILED_REQUESTS_KEY, null, 2, null);
        if (string$default == null) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(string$default, 0)));
            try {
                Object object = objectInputStream.readObject();
                List<RequestData> list = object instanceof List ? (List) object : null;
                CloseableKt.closeFinally(objectInputStream, null);
                return list;
            } finally {
            }
        } catch (Exception e) {
            Logger.logError("There was an error getting the Failed Requests.", e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setFailedRequests$default(BackendRequestsSharedPreferences backendRequestsSharedPreferences, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        backendRequestsSharedPreferences.setFailedRequests(list);
    }

    public final void setFailedRequests(List<RequestData> value) {
        List<RequestData> list = value;
        if (list == null || list.isEmpty()) {
            setString(FAILED_REQUESTS_KEY, null);
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(value);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                setString(FAILED_REQUESTS_KEY, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
            } finally {
            }
        } catch (Exception e) {
            Logger.logError("There was an error setting the Failed Requests.", e);
        }
    }

    /* JADX INFO: compiled from: BackendRequestsSharedPreferences.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences$Companion;", "", "()V", "FAILED_REQUESTS_KEY", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
