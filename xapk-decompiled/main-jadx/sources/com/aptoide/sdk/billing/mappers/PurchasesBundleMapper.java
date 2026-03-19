package com.aptoide.sdk.billing.mappers;

import android.os.Bundle;
import com.aptoide.sdk.billing.ResponseCode;
import com.aptoide.sdk.billing.utils.AptoideBillingConstants;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesBundleMapper.kt */
/* JADX INFO: loaded from: classes.dex */
@kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002Jx\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fH\u0002J\u008e\u0001\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u001c\b\u0002\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\f2\u001c\b\u0002\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\f2\u001c\b\u0002\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\f2\u001c\b\u0002\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\f¨\u0006\u0012"}, d2 = {"Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;", "", "()V", "buildPurchaseBundle", "", "bundle", "Landroid/os/Bundle;", "purchasesResponse", "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;", "idsList", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "skuList", "dataList", "signatureDataList", "mapGuestPurchases", "bundleResponse", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PurchasesBundleMapper {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Bundle mapGuestPurchases$default(PurchasesBundleMapper purchasesBundleMapper, Bundle bundle, PurchasesResponse purchasesResponse, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, int i, Object obj) {
        if ((i & 4) != 0) {
            arrayList = new ArrayList();
        }
        ArrayList arrayList5 = arrayList;
        if ((i & 8) != 0) {
            arrayList2 = new ArrayList();
        }
        ArrayList arrayList6 = arrayList2;
        if ((i & 16) != 0) {
            arrayList3 = new ArrayList();
        }
        ArrayList arrayList7 = arrayList3;
        if ((i & 32) != 0) {
            arrayList4 = new ArrayList();
        }
        return purchasesBundleMapper.mapGuestPurchases(bundle, purchasesResponse, arrayList5, arrayList6, arrayList7, arrayList4);
    }

    public final Bundle mapGuestPurchases(Bundle bundleResponse, PurchasesResponse purchasesResponse, ArrayList<String> idsList, ArrayList<String> skuList, ArrayList<String> dataList, ArrayList<String> signatureDataList) {
        Intrinsics.checkNotNullParameter(bundleResponse, "bundleResponse");
        Intrinsics.checkNotNullParameter(purchasesResponse, "purchasesResponse");
        if (idsList == null) {
            idsList = new ArrayList<>();
        }
        ArrayList<String> arrayList = idsList;
        if (skuList == null) {
            skuList = new ArrayList<>();
        }
        ArrayList<String> arrayList2 = skuList;
        if (dataList == null) {
            dataList = new ArrayList<>();
        }
        ArrayList<String> arrayList3 = dataList;
        if (signatureDataList == null) {
            signatureDataList = new ArrayList<>();
        }
        buildPurchaseBundle(bundleResponse, purchasesResponse, arrayList, arrayList2, arrayList3, signatureDataList);
        return bundleResponse;
    }

    private final void buildPurchaseBundle(Bundle bundle, PurchasesResponse purchasesResponse, ArrayList<String> idsList, ArrayList<String> skuList, ArrayList<String> dataList, ArrayList<String> signatureDataList) {
        for (Purchase purchase : purchasesResponse.getPurchases()) {
            idsList.add(purchase.getUid());
            dataList.add(purchase.getVerification().getData());
            signatureDataList.add(purchase.getVerification().getSignature());
            skuList.add(purchase.getSku());
        }
        bundle.putInt(AptoideBillingConstants.RESPONSE_CODE, ResponseCode.OK.getValue());
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ID_LIST, idsList);
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_ITEM_LIST, skuList);
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_PURCHASE_DATA_LIST, dataList);
        bundle.putStringArrayList(AptoideBillingConstants.INAPP_DATA_SIGNATURE_LIST, signatureDataList);
    }
}
