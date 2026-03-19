.class Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;
.super Ljava/lang/Object;
.source "TwitterLoginModule.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/TwitterLoginModule;->login1(Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;->this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

    iput-object p2, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;->this$0:Lcom/vesal/jlsx/international/module/TwitterLoginModule;

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getCredential()Lcom/google/firebase/auth/AuthCredential;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/OAuthCredential;

    invoke-virtual {v1}, Lcom/google/firebase/auth/OAuthCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getCredential()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/OAuthCredential;

    invoke-virtual {p1}, Lcom/google/firebase/auth/OAuthCredential;->getSecret()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;->val$callback:Lcom/facebook/react/bridge/Callback;

    .line 71
    invoke-static {v0, v1, p1, v2}, Lcom/vesal/jlsx/international/module/TwitterLoginModule;->-$$Nest$mloginSuccess(Lcom/vesal/jlsx/international/module/TwitterLoginModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginModule$2;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
