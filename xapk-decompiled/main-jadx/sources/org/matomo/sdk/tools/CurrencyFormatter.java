package org.matomo.sdk.tools;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes4.dex */
public class CurrencyFormatter {
    public static String priceString(Integer num) {
        if (num == null) {
            return null;
        }
        return new BigDecimal(num.intValue()).movePointLeft(2).toPlainString();
    }
}
