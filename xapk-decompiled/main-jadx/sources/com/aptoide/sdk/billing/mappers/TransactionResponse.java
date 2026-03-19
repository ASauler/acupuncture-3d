package com.aptoide.sdk.billing.mappers;

import com.brentvatne.react.ReactVideoView;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionResponseMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BÏ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0018J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010*J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0005HÆ\u0003JÚ\u0001\u0010A\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0003HÖ\u0001J\t\u0010G\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010+\u001a\u0004\b)\u0010*R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001aR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001a¨\u0006H"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/TransactionResponse;", "", "responseCode", "", "uid", "", "domain", "product", "walletFrom", "type", "method", UserDataStore.COUNTRY, "reference", "hash", "status", "added", "modified", "gateway", "Lcom/aptoide/sdk/billing/mappers/Gateway;", ReactVideoView.EVENT_PROP_METADATA, "Lcom/aptoide/sdk/billing/mappers/Metadata;", FirebaseAnalytics.Param.PRICE, "Lcom/aptoide/sdk/billing/mappers/Price;", "channel", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Gateway;Lcom/aptoide/sdk/billing/mappers/Metadata;Lcom/aptoide/sdk/billing/mappers/Price;Ljava/lang/String;)V", "getAdded", "()Ljava/lang/String;", "getChannel", "getCountry", "getDomain", "getGateway", "()Lcom/aptoide/sdk/billing/mappers/Gateway;", "getHash", "getMetadata", "()Lcom/aptoide/sdk/billing/mappers/Metadata;", "getMethod", "getModified", "getPrice", "()Lcom/aptoide/sdk/billing/mappers/Price;", "getProduct", "getReference", InAppPurchaseConstants.METHOD_GET_RESPONSE_CODE, "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStatus", "getType", "getUid", "getWalletFrom", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Gateway;Lcom/aptoide/sdk/billing/mappers/Metadata;Lcom/aptoide/sdk/billing/mappers/Price;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/TransactionResponse;", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TransactionResponse {
    private final String added;
    private final String channel;
    private final String country;
    private final String domain;
    private final Gateway gateway;
    private final String hash;
    private final Metadata metadata;
    private final String method;
    private final String modified;
    private final Price price;
    private final String product;
    private final String reference;
    private final Integer responseCode;
    private final String status;
    private final String type;
    private final String uid;
    private final String walletFrom;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getHash() {
        return this.hash;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getAdded() {
        return this.added;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getModified() {
        return this.modified;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Gateway getGateway() {
        return this.gateway;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Metadata getMetadata() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Price getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getChannel() {
        return this.channel;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getProduct() {
        return this.product;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getWalletFrom() {
        return this.walletFrom;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getReference() {
        return this.reference;
    }

    public final TransactionResponse copy(Integer responseCode, String uid, String domain, String product, String walletFrom, String type, String method, String country, String reference, String hash, String status, String added, String modified, Gateway gateway, Metadata metadata, Price price, String channel) {
        return new TransactionResponse(responseCode, uid, domain, product, walletFrom, type, method, country, reference, hash, status, added, modified, gateway, metadata, price, channel);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionResponse)) {
            return false;
        }
        TransactionResponse transactionResponse = (TransactionResponse) other;
        return Intrinsics.areEqual(this.responseCode, transactionResponse.responseCode) && Intrinsics.areEqual(this.uid, transactionResponse.uid) && Intrinsics.areEqual(this.domain, transactionResponse.domain) && Intrinsics.areEqual(this.product, transactionResponse.product) && Intrinsics.areEqual(this.walletFrom, transactionResponse.walletFrom) && Intrinsics.areEqual(this.type, transactionResponse.type) && Intrinsics.areEqual(this.method, transactionResponse.method) && Intrinsics.areEqual(this.country, transactionResponse.country) && Intrinsics.areEqual(this.reference, transactionResponse.reference) && Intrinsics.areEqual(this.hash, transactionResponse.hash) && Intrinsics.areEqual(this.status, transactionResponse.status) && Intrinsics.areEqual(this.added, transactionResponse.added) && Intrinsics.areEqual(this.modified, transactionResponse.modified) && Intrinsics.areEqual(this.gateway, transactionResponse.gateway) && Intrinsics.areEqual(this.metadata, transactionResponse.metadata) && Intrinsics.areEqual(this.price, transactionResponse.price) && Intrinsics.areEqual(this.channel, transactionResponse.channel);
    }

    public int hashCode() {
        Integer num = this.responseCode;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.uid;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.domain;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.product;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.walletFrom;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.type;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.method;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.country;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.reference;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.hash;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.status;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.added;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.modified;
        int iHashCode13 = (iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Gateway gateway = this.gateway;
        int iHashCode14 = (iHashCode13 + (gateway == null ? 0 : gateway.hashCode())) * 31;
        Metadata metadata = this.metadata;
        int iHashCode15 = (iHashCode14 + (metadata == null ? 0 : metadata.hashCode())) * 31;
        Price price = this.price;
        int iHashCode16 = (iHashCode15 + (price == null ? 0 : price.hashCode())) * 31;
        String str13 = this.channel;
        return iHashCode16 + (str13 != null ? str13.hashCode() : 0);
    }

    public String toString() {
        return "TransactionResponse(responseCode=" + this.responseCode + ", uid=" + this.uid + ", domain=" + this.domain + ", product=" + this.product + ", walletFrom=" + this.walletFrom + ", type=" + this.type + ", method=" + this.method + ", country=" + this.country + ", reference=" + this.reference + ", hash=" + this.hash + ", status=" + this.status + ", added=" + this.added + ", modified=" + this.modified + ", gateway=" + this.gateway + ", metadata=" + this.metadata + ", price=" + this.price + ", channel=" + this.channel + ")";
    }

    public TransactionResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Gateway gateway, Metadata metadata, Price price, String str13) {
        this.responseCode = num;
        this.uid = str;
        this.domain = str2;
        this.product = str3;
        this.walletFrom = str4;
        this.type = str5;
        this.method = str6;
        this.country = str7;
        this.reference = str8;
        this.hash = str9;
        this.status = str10;
        this.added = str11;
        this.modified = str12;
        this.gateway = gateway;
        this.metadata = metadata;
        this.price = price;
        this.channel = str13;
    }

    public /* synthetic */ TransactionResponse(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Gateway gateway, Metadata metadata, Price price, String str13, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : str9, (i & 1024) != 0 ? null : str10, (i & 2048) != 0 ? null : str11, (i & 4096) != 0 ? null : str12, (i & 8192) != 0 ? null : gateway, (i & 16384) != 0 ? null : metadata, (i & 32768) != 0 ? null : price, (i & 65536) == 0 ? str13 : null);
    }

    public final Integer getResponseCode() {
        return this.responseCode;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getProduct() {
        return this.product;
    }

    public final String getWalletFrom() {
        return this.walletFrom;
    }

    public final String getType() {
        return this.type;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getReference() {
        return this.reference;
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getAdded() {
        return this.added;
    }

    public final String getModified() {
        return this.modified;
    }

    public final Gateway getGateway() {
        return this.gateway;
    }

    public final Metadata getMetadata() {
        return this.metadata;
    }

    public final Price getPrice() {
        return this.price;
    }

    public final String getChannel() {
        return this.channel;
    }
}
