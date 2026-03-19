.class Lcom/luck/picture/lib/PictureBaseActivity$5;
.super Ljava/lang/Object;
.source "PictureBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->showPromptDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureBaseActivity;

.field final synthetic val$dialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$5;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$5;->val$dialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 867
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$5;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 868
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$5;->val$dialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V

    :cond_0
    return-void
.end method
