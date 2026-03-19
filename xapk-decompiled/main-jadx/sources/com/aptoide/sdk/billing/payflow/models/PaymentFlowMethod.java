package com.aptoide.sdk.billing.payflow.models;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.internal.ServerProtocol;
import com.facebook.react.util.JSStackTrace;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: PaymentFlowMethod.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00142\u00020\u0001:\u0006\u0013\u0014\u0015\u0016\u0017\u0018B'\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0005\u0019\u001a\u001b\u001c\u001d¨\u0006\u001e"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "", "name", "", "priority", "", "availableFeatures", "", "(Ljava/lang/String;ILjava/util/List;)V", "getAvailableFeatures", "()Ljava/util/List;", "getName", "()Ljava/lang/String;", "getPriority", "()I", "equals", "", "other", InAppPurchaseConstants.METHOD_TO_STRING, "AptoideGames", "Companion", "GamesHub", "UnavailableBilling", "Wallet", "WebPayment", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class PaymentFlowMethod {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String DEFAULT_PAYMENT_FLOW = "default";
    public static final String DEFAULT_WEB_PAYMENT_URL_VERSION = "v1";
    public static final int SCREEN_ORIENTATION_LANDSCAPE = 2;
    public static final int SCREEN_ORIENTATION_PORTRAIT = 1;
    private final List<Integer> availableFeatures;
    private final String name;
    private final int priority;

    public /* synthetic */ PaymentFlowMethod(String str, int i, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, list);
    }

    private PaymentFlowMethod(String str, int i, List<Integer> list) {
        this.name = str;
        this.priority = i;
        this.availableFeatures = list;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final List<Integer> getAvailableFeatures() {
        return this.availableFeatures;
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "name", "", "priority", "", "availableFeatures", "", "(Ljava/lang/String;ILjava/util/List;)V", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Wallet extends PaymentFlowMethod {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Wallet(String name, int i, List<Integer> list) {
            super(name, i, list, null);
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "name", "", "priority", "", "availableFeatures", "", "(Ljava/lang/String;ILjava/util/List;)V", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class GamesHub extends PaymentFlowMethod {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GamesHub(String name, int i, List<Integer> list) {
            super(name, i, list, null);
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "name", "", "priority", "", "availableFeatures", "", "(Ljava/lang/String;ILjava/util/List;)V", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AptoideGames extends PaymentFlowMethod {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AptoideGames(String name, int i, List<Integer> list) {
            super(name, i, list, null);
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "name", "", "priority", "", "availableFeatures", "", ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "paymentFlow", "webViewDetails", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V", "getPaymentFlow", "()Ljava/lang/String;", "getVersion", "getWebViewDetails", "()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "equals", "", "other", "", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WebPayment extends PaymentFlowMethod {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String paymentFlow;
        private final String version;
        private final WebViewDetails webViewDetails;

        public final String getVersion() {
            return this.version;
        }

        public final String getPaymentFlow() {
            return this.paymentFlow;
        }

        public final WebViewDetails getWebViewDetails() {
            return this.webViewDetails;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebPayment(String name, int i, List<Integer> list, String str, String str2, WebViewDetails webViewDetails) {
            super(name, i, list, null);
            Intrinsics.checkNotNullParameter(name, "name");
            this.version = str;
            this.paymentFlow = str2;
            this.webViewDetails = webViewDetails;
        }

        /* JADX INFO: compiled from: PaymentFlowMethod.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\f¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;", "", "()V", "fromJsonObject", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;", "paymentMethodsJsonObject", "Lorg/json/JSONObject;", JSStackTrace.METHOD_NAME_KEY, "", "priority", "", "availableFeatures", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x0050  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod.WebPayment fromJsonObject(org.json.JSONObject r12, java.lang.String r13, int r14, java.util.List<java.lang.Integer> r15) {
                /*
                    r11 = this;
                    java.lang.String r0 = "methodName"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
                    r0 = 1
                    r1 = 0
                    r2 = 0
                    if (r12 == 0) goto L26
                    java.lang.String r3 = "version"
                    java.lang.String r3 = r12.optString(r3)
                    if (r3 == 0) goto L26
                    r4 = r3
                    java.lang.CharSequence r4 = (java.lang.CharSequence) r4
                    int r4 = r4.length()
                    if (r4 <= 0) goto L1e
                    r4 = r0
                    goto L1f
                L1e:
                    r4 = r1
                L1f:
                    if (r4 == 0) goto L22
                    goto L23
                L22:
                    r3 = r2
                L23:
                    if (r3 == 0) goto L26
                    goto L29
                L26:
                    java.lang.String r3 = "v1"
                L29:
                    r8 = r3
                    if (r12 == 0) goto L50
                    java.lang.String r3 = "payment_flow"
                    java.lang.String r3 = r12.optString(r3)
                    if (r3 == 0) goto L50
                    r4 = r3
                    java.lang.CharSequence r4 = (java.lang.CharSequence) r4
                    int r4 = r4.length()
                    if (r4 <= 0) goto L3f
                    r4 = r0
                    goto L40
                L3f:
                    r4 = r1
                L40:
                    if (r4 == 0) goto L4b
                    java.lang.String r4 = "default"
                    boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                    if (r4 != 0) goto L4b
                    goto L4c
                L4b:
                    r0 = r1
                L4c:
                    if (r0 == 0) goto L50
                    r9 = r3
                    goto L51
                L50:
                    r9 = r2
                L51:
                    com.aptoide.sdk.billing.payflow.models.WebViewDetails$Companion r0 = com.aptoide.sdk.billing.payflow.models.WebViewDetails.INSTANCE
                    if (r12 == 0) goto L5c
                    java.lang.String r1 = "screen_details"
                    org.json.JSONObject r2 = r12.optJSONObject(r1)
                L5c:
                    com.aptoide.sdk.billing.payflow.models.WebViewDetails r10 = r0.fromJsonObject(r2)
                    com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod$WebPayment r12 = new com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod$WebPayment
                    r4 = r12
                    r5 = r13
                    r6 = r14
                    r7 = r15
                    r4.<init>(r5, r6, r7, r8, r9, r10)
                    return r12
                */
                throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod.WebPayment.Companion.fromJsonObject(org.json.JSONObject, java.lang.String, int, java.util.List):com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod$WebPayment");
            }
        }

        @Override // com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod
        public String toString() {
            return getClass().getName() + ": [name: " + getName() + ", priority: " + getPriority() + ", version: " + this.version + ", paymentFlow: " + this.paymentFlow + ", webViewDetails: " + this.webViewDetails + ", availableFeatures: " + getAvailableFeatures() + "]";
        }

        @Override // com.aptoide.sdk.billing.payflow.models.PaymentFlowMethod
        public boolean equals(Object other) {
            if (other == null || !Intrinsics.areEqual(other.getClass(), getClass())) {
                return false;
            }
            WebPayment webPayment = (WebPayment) other;
            return Intrinsics.areEqual(webPayment.getName(), getName()) && webPayment.getPriority() == getPriority() && Intrinsics.areEqual(webPayment.paymentFlow, this.paymentFlow) && Intrinsics.areEqual(webPayment.version, this.version) && Intrinsics.areEqual(webPayment.webViewDetails, this.webViewDetails) && Intrinsics.areEqual(webPayment.getAvailableFeatures(), getAvailableFeatures());
        }
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000 \f2\u00020\u0001:\u0001\fB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "name", "", "priority", "", "availableFeatures", "", "errorMessage", "(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "Companion", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UnavailableBilling extends PaymentFlowMethod {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String errorMessage;

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX INFO: compiled from: PaymentFlowMethod.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\f¨\u0006\r"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;", "", "()V", "fromJsonObject", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;", "paymentMethodsJsonObject", "Lorg/json/JSONObject;", JSStackTrace.METHOD_NAME_KEY, "", "priority", "", "availableFeatures", "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final UnavailableBilling fromJsonObject(JSONObject paymentMethodsJsonObject, String methodName, int priority, List<Integer> availableFeatures) {
                String strOptString;
                Intrinsics.checkNotNullParameter(methodName, "methodName");
                String str = null;
                if (paymentMethodsJsonObject != null && (strOptString = paymentMethodsJsonObject.optString("error_message")) != null) {
                    if (strOptString.length() > 0) {
                        str = strOptString;
                    }
                }
                return new UnavailableBilling(methodName, priority, availableFeatures, str);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnavailableBilling(String name, int i, List<Integer> list, String str) {
            super(name, i, list, null);
            Intrinsics.checkNotNullParameter(name, "name");
            this.errorMessage = str;
        }
    }

    public String toString() {
        return getClass().getName() + ": [name: " + this.name + ", priority: " + this.priority + ", availableFeatures: " + this.availableFeatures + "]";
    }

    public boolean equals(Object other) {
        if (other == null || !Intrinsics.areEqual(other.getClass(), getClass())) {
            return false;
        }
        PaymentFlowMethod paymentFlowMethod = (PaymentFlowMethod) other;
        return Intrinsics.areEqual(paymentFlowMethod.name, this.name) && paymentFlowMethod.priority == this.priority && Intrinsics.areEqual(paymentFlowMethod.availableFeatures, this.availableFeatures);
    }

    /* JADX INFO: compiled from: PaymentFlowMethod.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u0004\u0018\u00010\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bJ\u0016\u0010\r\u001a\u0004\u0018\u00010\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;", "", "()V", "DEFAULT_PAYMENT_FLOW", "", "DEFAULT_WEB_PAYMENT_URL_VERSION", "SCREEN_ORIENTATION_LANDSCAPE", "", "SCREEN_ORIENTATION_PORTRAIT", "getPaymentFlowFromPayflowMethod", "payflowMethodsList", "", "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;", "getPaymentUrlVersionFromPayflowMethod", "getUnavailableBillingMessage", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getPaymentUrlVersionFromPayflowMethod(List<PaymentFlowMethod> payflowMethodsList) {
            Object next;
            Intrinsics.checkNotNullParameter(payflowMethodsList, "payflowMethodsList");
            Iterator<T> it = payflowMethodsList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((PaymentFlowMethod) next) instanceof WebPayment) {
                    break;
                }
            }
            WebPayment webPayment = (WebPayment) next;
            if (webPayment != null) {
                return webPayment.getVersion();
            }
            return null;
        }

        public final String getPaymentFlowFromPayflowMethod(List<PaymentFlowMethod> payflowMethodsList) {
            PaymentFlowMethod paymentFlowMethod;
            Object next;
            if (payflowMethodsList != null) {
                Iterator<T> it = payflowMethodsList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (((PaymentFlowMethod) next) instanceof WebPayment) {
                        break;
                    }
                }
                paymentFlowMethod = (PaymentFlowMethod) next;
            } else {
                paymentFlowMethod = null;
            }
            WebPayment webPayment = (WebPayment) paymentFlowMethod;
            if (webPayment != null) {
                return webPayment.getPaymentFlow();
            }
            return null;
        }

        public final String getUnavailableBillingMessage(List<PaymentFlowMethod> payflowMethodsList) {
            Object next;
            Intrinsics.checkNotNullParameter(payflowMethodsList, "payflowMethodsList");
            Iterator<T> it = payflowMethodsList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((PaymentFlowMethod) next) instanceof UnavailableBilling) {
                    break;
                }
            }
            UnavailableBilling unavailableBilling = (UnavailableBilling) next;
            if (unavailableBilling != null) {
                return unavailableBilling.getErrorMessage();
            }
            return null;
        }
    }
}
