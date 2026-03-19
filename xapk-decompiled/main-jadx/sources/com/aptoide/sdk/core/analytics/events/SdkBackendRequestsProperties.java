package com.aptoide.sdk.core.analytics.events;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.aptoide.sdk.core.analytics.matomo.Property;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SdkBackendRequestEvents.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001f¨\u0006 "}, d2 = {"Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;", "", "Lcom/aptoide/sdk/core/analytics/matomo/Property;", SDKConstants.PARAM_KEY, "", "eventName", "id", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V", "getEventName", "()Ljava/lang/String;", "getId", "()I", "getKey", "TYPE_FROM_BACKEND_REQUEST", "TYPE_FROM_BACKEND_RESPONSE", "TYPE_FROM_BACKEND_MAPPING_FAILURE", "TYPE_FROM_BACKEND_ERROR", "URL_FROM_BACKEND_REQUEST", "URL_FROM_BACKEND_ERROR", "METHOD_FROM_BACKEND_REQUEST", "HEADERS_FROM_BACKEND_REQUEST", "PATHS_FROM_BACKEND_REQUEST", "QUERIES_FROM_BACKEND_REQUEST", "BODY_FROM_BACKEND_REQUEST", "RESPONSE_CODE_FROM_BACKEND_RESPONSE", "RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE", "RESPONSE_MESSAGE_FROM_BACKEND_ERROR", "RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE", "ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE", "ERROR_MESSAGE_FROM_BACKEND_RESPONSE", "NETWORK_SPEED_FROM_BACKEND_ERROR", "aptoide-core_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkBackendRequestsProperties implements Property {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SdkBackendRequestsProperties[] $VALUES;
    private final String eventName;
    private final int id;
    private final String key;
    public static final SdkBackendRequestsProperties TYPE_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("TYPE_FROM_BACKEND_REQUEST", 0, "type", SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 200);
    public static final SdkBackendRequestsProperties TYPE_FROM_BACKEND_RESPONSE = new SdkBackendRequestsProperties("TYPE_FROM_BACKEND_RESPONSE", 1, "type", SdkBackendRequestEvents.SDK_CALL_BACKEND_RESPONSE, 201);
    public static final SdkBackendRequestsProperties TYPE_FROM_BACKEND_MAPPING_FAILURE = new SdkBackendRequestsProperties("TYPE_FROM_BACKEND_MAPPING_FAILURE", 2, "type", SdkBackendRequestEvents.SDK_CALL_BACKEND_MAPPING_FAILURE, DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER);
    public static final SdkBackendRequestsProperties TYPE_FROM_BACKEND_ERROR = new SdkBackendRequestsProperties("TYPE_FROM_BACKEND_ERROR", 3, "type", SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR, DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER);
    public static final SdkBackendRequestsProperties URL_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("URL_FROM_BACKEND_REQUEST", 4, "url", SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 210);
    public static final SdkBackendRequestsProperties URL_FROM_BACKEND_ERROR = new SdkBackendRequestsProperties("URL_FROM_BACKEND_ERROR", 5, "url", SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR, 211);
    public static final SdkBackendRequestsProperties METHOD_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("METHOD_FROM_BACKEND_REQUEST", 6, "method", SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 220);
    public static final SdkBackendRequestsProperties HEADERS_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("HEADERS_FROM_BACKEND_REQUEST", 7, SdkBackendRequestLabels.HEADERS, SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 230);
    public static final SdkBackendRequestsProperties PATHS_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("PATHS_FROM_BACKEND_REQUEST", 8, SdkBackendRequestLabels.PATHS, SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 240);
    public static final SdkBackendRequestsProperties QUERIES_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("QUERIES_FROM_BACKEND_REQUEST", 9, SdkBackendRequestLabels.QUERIES, SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    public static final SdkBackendRequestsProperties BODY_FROM_BACKEND_REQUEST = new SdkBackendRequestsProperties("BODY_FROM_BACKEND_REQUEST", 10, "body", SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 260);
    public static final SdkBackendRequestsProperties RESPONSE_CODE_FROM_BACKEND_RESPONSE = new SdkBackendRequestsProperties("RESPONSE_CODE_FROM_BACKEND_RESPONSE", 11, "response_code", SdkBackendRequestEvents.SDK_CALL_BACKEND_RESPONSE, 270);
    public static final SdkBackendRequestsProperties RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE = new SdkBackendRequestsProperties("RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE", 12, SdkBackendRequestLabels.RESPONSE_MESSAGE, SdkBackendRequestEvents.SDK_CALL_BACKEND_REQUEST, 280);
    public static final SdkBackendRequestsProperties RESPONSE_MESSAGE_FROM_BACKEND_ERROR = new SdkBackendRequestsProperties("RESPONSE_MESSAGE_FROM_BACKEND_ERROR", 13, SdkBackendRequestLabels.RESPONSE_MESSAGE, SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR, 281);
    public static final SdkBackendRequestsProperties RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE = new SdkBackendRequestsProperties("RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE", 14, SdkBackendRequestLabels.RESPONSE_MESSAGE, SdkBackendRequestEvents.SDK_CALL_BACKEND_MAPPING_FAILURE, 282);
    public static final SdkBackendRequestsProperties ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE = new SdkBackendRequestsProperties("ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE", 15, "error_message", SdkBackendRequestEvents.SDK_CALL_BACKEND_MAPPING_FAILURE, 290);
    public static final SdkBackendRequestsProperties ERROR_MESSAGE_FROM_BACKEND_RESPONSE = new SdkBackendRequestsProperties("ERROR_MESSAGE_FROM_BACKEND_RESPONSE", 16, "error_message", SdkBackendRequestEvents.SDK_CALL_BACKEND_RESPONSE, 291);
    public static final SdkBackendRequestsProperties NETWORK_SPEED_FROM_BACKEND_ERROR = new SdkBackendRequestsProperties("NETWORK_SPEED_FROM_BACKEND_ERROR", 17, SdkBackendRequestLabels.NETWORK_SPEED, SdkBackendRequestEvents.SDK_CALL_BACKEND_ERROR, 300);

    private static final /* synthetic */ SdkBackendRequestsProperties[] $values() {
        return new SdkBackendRequestsProperties[]{TYPE_FROM_BACKEND_REQUEST, TYPE_FROM_BACKEND_RESPONSE, TYPE_FROM_BACKEND_MAPPING_FAILURE, TYPE_FROM_BACKEND_ERROR, URL_FROM_BACKEND_REQUEST, URL_FROM_BACKEND_ERROR, METHOD_FROM_BACKEND_REQUEST, HEADERS_FROM_BACKEND_REQUEST, PATHS_FROM_BACKEND_REQUEST, QUERIES_FROM_BACKEND_REQUEST, BODY_FROM_BACKEND_REQUEST, RESPONSE_CODE_FROM_BACKEND_RESPONSE, RESPONSE_MESSAGE_FROM_BACKEND_RESPONSE, RESPONSE_MESSAGE_FROM_BACKEND_ERROR, RESPONSE_MESSAGE_FROM_BACKEND_MAPPING_FAILURE, ERROR_MESSAGE_FROM_BACKEND_MAPPING_FAILURE, ERROR_MESSAGE_FROM_BACKEND_RESPONSE, NETWORK_SPEED_FROM_BACKEND_ERROR};
    }

    public static EnumEntries<SdkBackendRequestsProperties> getEntries() {
        return $ENTRIES;
    }

    public static SdkBackendRequestsProperties valueOf(String str) {
        return (SdkBackendRequestsProperties) Enum.valueOf(SdkBackendRequestsProperties.class, str);
    }

    public static SdkBackendRequestsProperties[] values() {
        return (SdkBackendRequestsProperties[]) $VALUES.clone();
    }

    private SdkBackendRequestsProperties(String str, int i, String str2, String str3, int i2) {
        this.key = str2;
        this.eventName = str3;
        this.id = i2;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public String getKey() {
        return this.key;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public String getEventName() {
        return this.eventName;
    }

    @Override // com.aptoide.sdk.core.analytics.matomo.Property
    public int getId() {
        return this.id;
    }

    static {
        SdkBackendRequestsProperties[] sdkBackendRequestsPropertiesArr$values = $values();
        $VALUES = sdkBackendRequestsPropertiesArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sdkBackendRequestsPropertiesArr$values);
    }
}
