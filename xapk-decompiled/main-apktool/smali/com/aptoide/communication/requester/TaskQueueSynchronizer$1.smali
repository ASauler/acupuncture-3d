.class Lcom/aptoide/communication/requester/TaskQueueSynchronizer$1;
.super Ljava/lang/Object;
.source "TaskQueueSynchronizer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->executeTask(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Landroid/os/Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aptoide/communication/requester/TaskQueueSynchronizer;


# direct methods
.method constructor <init>(Lcom/aptoide/communication/requester/TaskQueueSynchronizer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aptoide/communication/requester/TaskQueueSynchronizer$1;->this$0:Lcom/aptoide/communication/requester/TaskQueueSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
