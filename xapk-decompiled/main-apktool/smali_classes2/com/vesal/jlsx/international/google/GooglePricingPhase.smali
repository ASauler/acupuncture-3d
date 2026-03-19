.class public Lcom/vesal/jlsx/international/google/GooglePricingPhase;
.super Ljava/lang/Object;
.source "GooglePricingPhase.java"


# instance fields
.field private billingCycleCount:I

.field private billingPeriod:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private priceAmountMicros:J

.field private priceCurrencyCode:Ljava/lang/String;

.field private recurrenceMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceAmountMicros:J

    .line 14
    iput-object p4, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->formattedPrice:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingPeriod:Ljava/lang/String;

    .line 16
    iput p6, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->recurrenceMode:I

    .line 17
    iput p7, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingCycleCount:I

    return-void
.end method


# virtual methods
.method public getBillingCycleCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingCycleCount:I

    return v0
.end method

.method public getBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceMode()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->recurrenceMode:I

    return v0
.end method

.method public setBillingCycleCount(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingCycleCount:I

    return-void
.end method

.method public setBillingPeriod(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->billingPeriod:Ljava/lang/String;

    return-void
.end method

.method public setFormattedPrice(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->formattedPrice:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmountMicros(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceAmountMicros:J

    return-void
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->priceCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public setRecurrenceMode(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/vesal/jlsx/international/google/GooglePricingPhase;->recurrenceMode:I

    return-void
.end method
