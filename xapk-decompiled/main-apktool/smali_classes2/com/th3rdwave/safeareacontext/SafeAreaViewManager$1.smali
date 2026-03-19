.class Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$1;
.super Ljava/lang/Object;
.source "SafeAreaViewManager.java"

# interfaces
.implements Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/th3rdwave/safeareacontext/SafeAreaView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;

.field final synthetic val$dispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$1;->this$0:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;

    iput-object p2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$1;->val$dispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsetsChange(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/th3rdwave/safeareacontext/EdgeInsets;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$1;->val$dispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;

    invoke-virtual {p1}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getId()I

    move-result p1

    invoke-direct {v1, p1, p2}, Lcom/th3rdwave/safeareacontext/InsetsChangeEvent;-><init>(ILcom/th3rdwave/safeareacontext/EdgeInsets;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
