package com.vesal.jlsx.international.google;

/* JADX INFO: loaded from: classes2.dex */
public class GooglePricingPhase {
    private int billingCycleCount;
    private String billingPeriod;
    private String formattedPrice;
    private long priceAmountMicros;
    private String priceCurrencyCode;
    private int recurrenceMode;

    public GooglePricingPhase(String str, long j, String str2, String str3, int i, int i2) {
        this.priceCurrencyCode = str;
        this.priceAmountMicros = j;
        this.formattedPrice = str2;
        this.billingPeriod = str3;
        this.recurrenceMode = i;
        this.billingCycleCount = i2;
    }

    public String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public void setPriceCurrencyCode(String str) {
        this.priceCurrencyCode = str;
    }

    public long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    public void setPriceAmountMicros(long j) {
        this.priceAmountMicros = j;
    }

    public String getFormattedPrice() {
        return this.formattedPrice;
    }

    public void setFormattedPrice(String str) {
        this.formattedPrice = str;
    }

    public String getBillingPeriod() {
        return this.billingPeriod;
    }

    public void setBillingPeriod(String str) {
        this.billingPeriod = str;
    }

    public int getRecurrenceMode() {
        return this.recurrenceMode;
    }

    public void setRecurrenceMode(int i) {
        this.recurrenceMode = i;
    }

    public int getBillingCycleCount() {
        return this.billingCycleCount;
    }

    public void setBillingCycleCount(int i) {
        this.billingCycleCount = i;
    }
}
