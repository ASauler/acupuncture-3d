.class public final synthetic Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/luck/picture/lib/listener/OnQueryDataResultListener;


# instance fields
.field public final synthetic f$0:Lcom/luck/picture/lib/PictureSelectorActivity;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;->f$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iput-wide p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;->f$1:J

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/util/List;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;->f$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-wide v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;->f$1:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/luck/picture/lib/PictureSelectorActivity;->lambda$loadMoreData$1$com-luck-picture-lib-PictureSelectorActivity(JLjava/util/List;IZ)V

    return-void
.end method
