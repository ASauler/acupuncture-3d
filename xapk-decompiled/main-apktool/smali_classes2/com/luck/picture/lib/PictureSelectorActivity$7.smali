.class Lcom/luck/picture/lib/PictureSelectorActivity$7;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/listener/OnPermissionDialogOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 2411
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$7;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 2414
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v0, :cond_0

    .line 2415
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$7;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->exit()V

    return-void
.end method

.method public onSetting()V
    .locals 2

    .line 2422
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$7;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/luck/picture/lib/PictureSelectorActivity;->isEnterSetting:Z

    return-void
.end method
