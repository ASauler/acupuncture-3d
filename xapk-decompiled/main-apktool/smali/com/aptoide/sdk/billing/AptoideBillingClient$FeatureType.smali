.class public interface abstract annotation Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;
.super Ljava/lang/Object;
.source "AptoideBillingClient.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/AptoideBillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FeatureType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FREE_TRIALS:Ljava/lang/Integer;

.field public static final OBFUSCATED_ACCOUNT_ID:Ljava/lang/Integer;

.field public static final SUBSCRIPTIONS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->SUBSCRIPTIONS:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->OBFUSCATED_ACCOUNT_ID:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->FREE_TRIALS:Ljava/lang/Integer;

    return-void
.end method
