package org.matomo.sdk.extra;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.matomo.sdk.tools.CurrencyFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class EcommerceItems {
    private final Map<String, JSONArray> mItems = new HashMap();

    public void addItem(Item item) {
        this.mItems.put(item.mSku, item.toJson());
    }

    public static class Item {
        private String mCategory;
        private String mName;
        private Integer mPrice;
        private Integer mQuantity;
        private final String mSku;

        public Item(String str) {
            this.mSku = str;
        }

        public Item name(String str) {
            this.mName = str;
            return this;
        }

        public Item category(String str) {
            this.mCategory = str;
            return this;
        }

        public Item price(int i) {
            this.mPrice = Integer.valueOf(i);
            return this;
        }

        public Item quantity(int i) {
            this.mQuantity = Integer.valueOf(i);
            return this;
        }

        public String getSku() {
            return this.mSku;
        }

        public String getCategory() {
            return this.mCategory;
        }

        public Integer getPrice() {
            return this.mPrice;
        }

        public Integer getQuantity() {
            return this.mQuantity;
        }

        public String getName() {
            return this.mName;
        }

        protected JSONArray toJson() {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.mSku);
            String str = this.mName;
            if (str != null) {
                jSONArray.put(str);
            }
            String str2 = this.mCategory;
            if (str2 != null) {
                jSONArray.put(str2);
            }
            Integer num = this.mPrice;
            if (num != null) {
                jSONArray.put(CurrencyFormatter.priceString(num));
            }
            Integer num2 = this.mQuantity;
            if (num2 != null) {
                jSONArray.put(String.valueOf(num2));
            }
            return jSONArray;
        }
    }

    public void remove(String str) {
        this.mItems.remove(str);
    }

    public void remove(Item item) {
        this.mItems.remove(item.mSku);
    }

    public void clear() {
        this.mItems.clear();
    }

    public String toJson() {
        JSONArray jSONArray = new JSONArray();
        Iterator<JSONArray> it = this.mItems.values().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        return jSONArray.toString();
    }
}
