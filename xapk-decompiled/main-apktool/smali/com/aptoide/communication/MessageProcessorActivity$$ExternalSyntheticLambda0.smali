.class public final synthetic Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/communication/MessageProcessorActivity;

.field public final synthetic f$1:Lcom/aptoide/communication/ProcessedValueReturner;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/communication/MessageProcessorActivity;Lcom/aptoide/communication/ProcessedValueReturner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/communication/MessageProcessorActivity;

    iput-object p2, p0, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/communication/ProcessedValueReturner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/communication/MessageProcessorActivity;

    iget-object v1, p0, Lcom/aptoide/communication/MessageProcessorActivity$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/communication/ProcessedValueReturner;

    invoke-static {v0, v1}, Lcom/aptoide/communication/MessageProcessorActivity;->$r8$lambda$XfFgrA6nfQxaXfnuzYH8T51hYCs(Lcom/aptoide/communication/MessageProcessorActivity;Lcom/aptoide/communication/ProcessedValueReturner;)V

    return-void
.end method
