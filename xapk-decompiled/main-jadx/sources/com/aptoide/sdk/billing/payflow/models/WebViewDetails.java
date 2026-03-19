package com.aptoide.sdk.billing.payflow.models;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: WebViewDetails.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0002!\"B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J2\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0019J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006#"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "Ljava/io/Serializable;", "forcedScreenOrientation", "", "landscapeScreenDimensions", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "portraitScreenDimensions", "(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V", "getForcedScreenOrientation", "()Ljava/lang/Integer;", "setForcedScreenOrientation", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getLandscapeScreenDimensions", "()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "setLandscapeScreenDimensions", "(Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V", "getPortraitScreenDimensions", "setPortraitScreenDimensions", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "equals", "", "other", "", "hasLandscapeDetails", "hasPortraitDetails", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "Companion", "OrientedScreenDimensions", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class WebViewDetails implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Integer forcedScreenOrientation;
    private OrientedScreenDimensions landscapeScreenDimensions;
    private OrientedScreenDimensions portraitScreenDimensions;

    public WebViewDetails() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ WebViewDetails copy$default(WebViewDetails webViewDetails, Integer num, OrientedScreenDimensions orientedScreenDimensions, OrientedScreenDimensions orientedScreenDimensions2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = webViewDetails.forcedScreenOrientation;
        }
        if ((i & 2) != 0) {
            orientedScreenDimensions = webViewDetails.landscapeScreenDimensions;
        }
        if ((i & 4) != 0) {
            orientedScreenDimensions2 = webViewDetails.portraitScreenDimensions;
        }
        return webViewDetails.copy(num, orientedScreenDimensions, orientedScreenDimensions2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getForcedScreenOrientation() {
        return this.forcedScreenOrientation;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final OrientedScreenDimensions getLandscapeScreenDimensions() {
        return this.landscapeScreenDimensions;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OrientedScreenDimensions getPortraitScreenDimensions() {
        return this.portraitScreenDimensions;
    }

    public final WebViewDetails copy(Integer forcedScreenOrientation, OrientedScreenDimensions landscapeScreenDimensions, OrientedScreenDimensions portraitScreenDimensions) {
        return new WebViewDetails(forcedScreenOrientation, landscapeScreenDimensions, portraitScreenDimensions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebViewDetails)) {
            return false;
        }
        WebViewDetails webViewDetails = (WebViewDetails) other;
        return Intrinsics.areEqual(this.forcedScreenOrientation, webViewDetails.forcedScreenOrientation) && Intrinsics.areEqual(this.landscapeScreenDimensions, webViewDetails.landscapeScreenDimensions) && Intrinsics.areEqual(this.portraitScreenDimensions, webViewDetails.portraitScreenDimensions);
    }

    public int hashCode() {
        Integer num = this.forcedScreenOrientation;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        OrientedScreenDimensions orientedScreenDimensions = this.landscapeScreenDimensions;
        int iHashCode2 = (iHashCode + (orientedScreenDimensions == null ? 0 : orientedScreenDimensions.hashCode())) * 31;
        OrientedScreenDimensions orientedScreenDimensions2 = this.portraitScreenDimensions;
        return iHashCode2 + (orientedScreenDimensions2 != null ? orientedScreenDimensions2.hashCode() : 0);
    }

    public String toString() {
        return "WebViewDetails(forcedScreenOrientation=" + this.forcedScreenOrientation + ", landscapeScreenDimensions=" + this.landscapeScreenDimensions + ", portraitScreenDimensions=" + this.portraitScreenDimensions + ")";
    }

    public WebViewDetails(Integer num, OrientedScreenDimensions orientedScreenDimensions, OrientedScreenDimensions orientedScreenDimensions2) {
        this.forcedScreenOrientation = num;
        this.landscapeScreenDimensions = orientedScreenDimensions;
        this.portraitScreenDimensions = orientedScreenDimensions2;
    }

    public /* synthetic */ WebViewDetails(Integer num, OrientedScreenDimensions orientedScreenDimensions, OrientedScreenDimensions orientedScreenDimensions2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : orientedScreenDimensions, (i & 4) != 0 ? null : orientedScreenDimensions2);
    }

    public final Integer getForcedScreenOrientation() {
        return this.forcedScreenOrientation;
    }

    public final void setForcedScreenOrientation(Integer num) {
        this.forcedScreenOrientation = num;
    }

    public final OrientedScreenDimensions getLandscapeScreenDimensions() {
        return this.landscapeScreenDimensions;
    }

    public final void setLandscapeScreenDimensions(OrientedScreenDimensions orientedScreenDimensions) {
        this.landscapeScreenDimensions = orientedScreenDimensions;
    }

    public final OrientedScreenDimensions getPortraitScreenDimensions() {
        return this.portraitScreenDimensions;
    }

    public final void setPortraitScreenDimensions(OrientedScreenDimensions orientedScreenDimensions) {
        this.portraitScreenDimensions = orientedScreenDimensions;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasLandscapeDetails() {
        /*
            r2 = this;
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.landscapeScreenDimensions
            if (r0 == 0) goto L33
            r1 = 0
            if (r0 == 0) goto Lc
            java.lang.Integer r0 = r0.getHeightDp()
            goto Ld
        Lc:
            r0 = r1
        Ld:
            if (r0 != 0) goto L1b
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.landscapeScreenDimensions
            if (r0 == 0) goto L18
            java.lang.Double r0 = r0.getHeightPercentage()
            goto L19
        L18:
            r0 = r1
        L19:
            if (r0 == 0) goto L33
        L1b:
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.landscapeScreenDimensions
            if (r0 == 0) goto L24
            java.lang.Integer r0 = r0.getWidthDp()
            goto L25
        L24:
            r0 = r1
        L25:
            if (r0 != 0) goto L31
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.landscapeScreenDimensions
            if (r0 == 0) goto L2f
            java.lang.Double r1 = r0.getWidthPercentage()
        L2f:
            if (r1 == 0) goto L33
        L31:
            r0 = 1
            goto L34
        L33:
            r0 = 0
        L34:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.payflow.models.WebViewDetails.hasLandscapeDetails():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasPortraitDetails() {
        /*
            r2 = this;
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.portraitScreenDimensions
            if (r0 == 0) goto L33
            r1 = 0
            if (r0 == 0) goto Lc
            java.lang.Integer r0 = r0.getHeightDp()
            goto Ld
        Lc:
            r0 = r1
        Ld:
            if (r0 != 0) goto L1b
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.portraitScreenDimensions
            if (r0 == 0) goto L18
            java.lang.Double r0 = r0.getHeightPercentage()
            goto L19
        L18:
            r0 = r1
        L19:
            if (r0 == 0) goto L33
        L1b:
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.portraitScreenDimensions
            if (r0 == 0) goto L24
            java.lang.Integer r0 = r0.getWidthDp()
            goto L25
        L24:
            r0 = r1
        L25:
            if (r0 != 0) goto L31
            com.aptoide.sdk.billing.payflow.models.WebViewDetails$OrientedScreenDimensions r0 = r2.portraitScreenDimensions
            if (r0 == 0) goto L2f
            java.lang.Double r1 = r0.getWidthPercentage()
        L2f:
            if (r1 == 0) goto L33
        L31:
            r0 = 1
            goto L34
        L33:
            r0 = 0
        L34:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aptoide.sdk.billing.payflow.models.WebViewDetails.hasPortraitDetails():boolean");
    }

    /* JADX INFO: compiled from: WebViewDetails.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u000fJ>\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u000f\"\u0004\b\u0016\u0010\u0011¨\u0006$"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "Ljava/io/Serializable;", "widthDp", "", "heightDp", "widthPercentage", "", "heightPercentage", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V", "getHeightDp", "()Ljava/lang/Integer;", "setHeightDp", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHeightPercentage", "()Ljava/lang/Double;", "setHeightPercentage", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getWidthDp", "setWidthDp", "getWidthPercentage", "setWidthPercentage", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "equals", "", "other", "", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OrientedScreenDimensions implements Serializable {
        private Integer heightDp;
        private Double heightPercentage;
        private Integer widthDp;
        private Double widthPercentage;

        public static /* synthetic */ OrientedScreenDimensions copy$default(OrientedScreenDimensions orientedScreenDimensions, Integer num, Integer num2, Double d, Double d2, int i, Object obj) {
            if ((i & 1) != 0) {
                num = orientedScreenDimensions.widthDp;
            }
            if ((i & 2) != 0) {
                num2 = orientedScreenDimensions.heightDp;
            }
            if ((i & 4) != 0) {
                d = orientedScreenDimensions.widthPercentage;
            }
            if ((i & 8) != 0) {
                d2 = orientedScreenDimensions.heightPercentage;
            }
            return orientedScreenDimensions.copy(num, num2, d, d2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Integer getWidthDp() {
            return this.widthDp;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getHeightDp() {
            return this.heightDp;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Double getWidthPercentage() {
            return this.widthPercentage;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Double getHeightPercentage() {
            return this.heightPercentage;
        }

        public final OrientedScreenDimensions copy(Integer widthDp, Integer heightDp, Double widthPercentage, Double heightPercentage) {
            return new OrientedScreenDimensions(widthDp, heightDp, widthPercentage, heightPercentage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OrientedScreenDimensions)) {
                return false;
            }
            OrientedScreenDimensions orientedScreenDimensions = (OrientedScreenDimensions) other;
            return Intrinsics.areEqual(this.widthDp, orientedScreenDimensions.widthDp) && Intrinsics.areEqual(this.heightDp, orientedScreenDimensions.heightDp) && Intrinsics.areEqual((Object) this.widthPercentage, (Object) orientedScreenDimensions.widthPercentage) && Intrinsics.areEqual((Object) this.heightPercentage, (Object) orientedScreenDimensions.heightPercentage);
        }

        public int hashCode() {
            Integer num = this.widthDp;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.heightDp;
            int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
            Double d = this.widthPercentage;
            int iHashCode3 = (iHashCode2 + (d == null ? 0 : d.hashCode())) * 31;
            Double d2 = this.heightPercentage;
            return iHashCode3 + (d2 != null ? d2.hashCode() : 0);
        }

        public String toString() {
            return "OrientedScreenDimensions(widthDp=" + this.widthDp + ", heightDp=" + this.heightDp + ", widthPercentage=" + this.widthPercentage + ", heightPercentage=" + this.heightPercentage + ")";
        }

        public OrientedScreenDimensions(Integer num, Integer num2, Double d, Double d2) {
            this.widthDp = num;
            this.heightDp = num2;
            this.widthPercentage = d;
            this.heightPercentage = d2;
        }

        public final Integer getWidthDp() {
            return this.widthDp;
        }

        public final void setWidthDp(Integer num) {
            this.widthDp = num;
        }

        public final Integer getHeightDp() {
            return this.heightDp;
        }

        public final void setHeightDp(Integer num) {
            this.heightDp = num;
        }

        public final Double getWidthPercentage() {
            return this.widthPercentage;
        }

        public final void setWidthPercentage(Double d) {
            this.widthPercentage = d;
        }

        public final Double getHeightPercentage() {
            return this.heightPercentage;
        }

        public final void setHeightPercentage(Double d) {
            this.heightPercentage = d;
        }
    }

    /* JADX INFO: compiled from: WebViewDetails.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;", "", "()V", "fromJsonObject", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;", "screenDetailsJSONObject", "Lorg/json/JSONObject;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v9 */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        public final WebViewDetails fromJsonObject(JSONObject screenDetailsJSONObject) {
            OrientedScreenDimensions orientedScreenDimensions;
            OrientedScreenDimensions orientedScreenDimensions2 = null;
            if (screenDetailsJSONObject == null) {
                return null;
            }
            Integer numValueOf = Integer.valueOf(screenDetailsJSONObject.optInt("force_screen_orientation"));
            if ((numValueOf.intValue() != 0) == false) {
                numValueOf = null;
            }
            JSONObject jSONObjectOptJSONObject = screenDetailsJSONObject.optJSONObject("landscape");
            if (jSONObjectOptJSONObject != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject);
                Integer numValueOf2 = Integer.valueOf(jSONObjectOptJSONObject.optInt("width_dp"));
                if ((numValueOf2.intValue() != 0) == false) {
                    numValueOf2 = null;
                }
                Integer numValueOf3 = Integer.valueOf(jSONObjectOptJSONObject.optInt("height_dp"));
                if ((numValueOf3.intValue() != 0) == false) {
                    numValueOf3 = null;
                }
                Double dValueOf = Double.valueOf(jSONObjectOptJSONObject.optDouble("width_percentage"));
                if (!(!Double.isNaN(dValueOf.doubleValue()))) {
                    dValueOf = null;
                }
                Double dValueOf2 = Double.valueOf(jSONObjectOptJSONObject.optDouble("height_percentage"));
                if (!(!Double.isNaN(dValueOf2.doubleValue()))) {
                    dValueOf2 = null;
                }
                orientedScreenDimensions = new OrientedScreenDimensions(numValueOf2, numValueOf3, dValueOf, dValueOf2);
            } else {
                orientedScreenDimensions = null;
            }
            JSONObject jSONObjectOptJSONObject2 = screenDetailsJSONObject.optJSONObject("portrait");
            if (jSONObjectOptJSONObject2 != null) {
                Intrinsics.checkNotNull(jSONObjectOptJSONObject2);
                Integer numValueOf4 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("width_dp"));
                if ((numValueOf4.intValue() != 0) == false) {
                    numValueOf4 = null;
                }
                Integer numValueOf5 = Integer.valueOf(jSONObjectOptJSONObject2.optInt("height_dp"));
                if (!(numValueOf5.intValue() != 0)) {
                    numValueOf5 = null;
                }
                Double dValueOf3 = Double.valueOf(jSONObjectOptJSONObject2.optDouble("width_percentage"));
                if (!(!Double.isNaN(dValueOf3.doubleValue()))) {
                    dValueOf3 = null;
                }
                Double dValueOf4 = Double.valueOf(jSONObjectOptJSONObject2.optDouble("height_percentage"));
                orientedScreenDimensions2 = new OrientedScreenDimensions(numValueOf4, numValueOf5, dValueOf3, true ^ Double.isNaN(dValueOf4.doubleValue()) ? dValueOf4 : null);
            }
            return new WebViewDetails(numValueOf, orientedScreenDimensions, orientedScreenDimensions2);
        }
    }
}
