.class Lcom/syanpicker/RNSyanImagePickerModule$1$1;
.super Ljava/lang/Object;
.source "RNSyanImagePickerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syanpicker/RNSyanImagePickerModule$1;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syanpicker/RNSyanImagePickerModule$1;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/syanpicker/RNSyanImagePickerModule$1;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule$1$1;->this$1:Lcom/syanpicker/RNSyanImagePickerModule$1;

    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule$1$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule$1$1;->this$1:Lcom/syanpicker/RNSyanImagePickerModule$1;

    iget-object v0, v0, Lcom/syanpicker/RNSyanImagePickerModule$1;->this$0:Lcom/syanpicker/RNSyanImagePickerModule;

    iget-object v1, p0, Lcom/syanpicker/RNSyanImagePickerModule$1$1;->val$data:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/syanpicker/RNSyanImagePickerModule;->-$$Nest$monGetResult(Lcom/syanpicker/RNSyanImagePickerModule;Landroid/content/Intent;)V

    return-void
.end method
