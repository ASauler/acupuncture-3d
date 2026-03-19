.class final Lcom/unity3d/player/n$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/n;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/n;


# direct methods
.method constructor <init>(Lcom/unity3d/player/n;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/n$4;->a:Lcom/unity3d/player/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/n$4;->a:Lcom/unity3d/player/n;

    invoke-static {p1}, Lcom/unity3d/player/n;->b(Lcom/unity3d/player/n;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/unity3d/player/n;->a(Lcom/unity3d/player/n;Ljava/lang/String;Z)V

    :cond_0
    return p3
.end method
