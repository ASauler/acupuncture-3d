package com.aptoide.sdk.core.analytics;

import com.aptoide.sdk.core.analytics.manager.KeyValueNormalizer;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class KeysNormalizer implements KeyValueNormalizer, Serializable {
    KeysNormalizer() {
    }

    @Override // com.aptoide.sdk.core.analytics.manager.KeyValueNormalizer
    public Map<String, Object> normalize(Map<String, Object> map) {
        HashMap map2 = new HashMap();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                if (entry.getValue().getClass().equals(HashMap.class)) {
                    map2.put(entry.getKey(), normalize((HashMap) entry.getValue()));
                } else {
                    map2.put(entry.getKey(), entry.getValue());
                }
            }
        }
        return map2;
    }
}
