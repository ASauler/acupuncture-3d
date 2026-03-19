.class Lcom/luck/picture/lib/camera/CustomCameraView$8;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camera/CustomCameraView;->startVideoPlay(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camera/CustomCameraView;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$8;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 717
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$8;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$2300(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 718
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$8;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$2300(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
