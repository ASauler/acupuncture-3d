package com.aptoide.sdk.billing.mappers;

import com.aptoide.sdk.billing.service.RequestResponse;
import com.aptoide.sdk.billing.utils.ServiceUtils;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkBackendRequestType;
import com.aptoide.sdk.core.logger.Logger;
import java.util.ArrayList;
import java.util.Comparator;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: StoreLinkResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/StoreLinkResponseMapper;", "", "()V", "map", "Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;", "response", "Lcom/aptoide/sdk/billing/service/RequestResponse;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StoreLinkResponseMapper {
    public final StoreLinkResponse map(RequestResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!ServiceUtils.isSuccess(response.getResponseCode()) || response.getResponse() == null) {
            Logger.logError("Failed to obtain StoreLink Response. ResponseCode: " + response.getResponseCode() + " | Cause: " + response.getException());
            return new StoreLinkResponse(Integer.valueOf(response.getResponseCode()), null, 2, null);
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(response.getResponse()).optJSONArray("store_link_methods");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject.optString("deeplink");
                    int iOptInt = jSONObjectOptJSONObject.optInt("priority", -1);
                    Intrinsics.checkNotNull(strOptString);
                    arrayList.add(new StoreLinkMethod(strOptString, iOptInt));
                }
                ArrayList arrayList2 = arrayList;
                if (arrayList2.size() > 1) {
                    CollectionsKt.sortWith(arrayList2, new Comparator() { // from class: com.aptoide.sdk.billing.mappers.StoreLinkResponseMapper$map$lambda$1$$inlined$sortBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return ComparisonsKt.compareValues(Integer.valueOf(((StoreLinkMethod) t).getPriority()), Integer.valueOf(((StoreLinkMethod) t2).getPriority()));
                        }
                    });
                }
            }
        } catch (Exception e) {
            Logger.logError("There was an error mapping the response.", e);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendBackendMappingFailureEvent(SdkBackendRequestType.STORE_DEEPLINK, response.getResponse(), e.toString());
        }
        Integer numValueOf = Integer.valueOf(response.getResponseCode());
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (((StoreLinkMethod) obj).getPriority() >= 0) {
                arrayList3.add(obj);
            }
        }
        return new StoreLinkResponse(numValueOf, (ArrayList) CollectionsKt.toCollection(arrayList3, new ArrayList()));
    }
}
