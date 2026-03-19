.class Lcom/syanpicker/RNSyanImagePickerModule$1;
.super Lcom/facebook/react/bridge/BaseActivityEventListener;
.source "RNSyanImagePickerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syanpicker/RNSyanImagePickerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syanpicker/RNSyanImagePickerModule;


# direct methods
.method constructor <init>(Lcom/syanpicker/RNSyanImagePickerModule;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule$1;->this$0:Lcom/syanpicker/RNSyanImagePickerModule;

    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseActivityEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    const/16 p1, 0xbc

    if-ne p2, p1, :cond_0

    .line 327
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/syanpicker/RNSyanImagePickerModule$1$1;

    invoke-direct {p2, p0, p4}, Lcom/syanpicker/RNSyanImagePickerModule$1$1;-><init>(Lcom/syanpicker/RNSyanImagePickerModule$1;Landroid/content/Intent;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 332
    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x38d

    if-ne p2, p1, :cond_2

    .line 334
    iget-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule$1;->this$0:Lcom/syanpicker/RNSyanImagePickerModule;

    invoke-static {p1, p4}, Lcom/syanpicker/RNSyanImagePickerModule;->-$$Nest$monGetVideoResult(Lcom/syanpicker/RNSyanImagePickerModule;Landroid/content/Intent;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule$1;->this$0:Lcom/syanpicker/RNSyanImagePickerModule;

    invoke-static {p1, p3}, Lcom/syanpicker/RNSyanImagePickerModule;->-$$Nest$minvokeError(Lcom/syanpicker/RNSyanImagePickerModule;I)V

    :cond_2
    :goto_0
    return-void
.end method
