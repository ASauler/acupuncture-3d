.class public Lcom/indicative/client/android/Indicative$SendEventsTimerThread;
.super Ljava/lang/Thread;
.source "Indicative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/indicative/client/android/Indicative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendEventsTimerThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/indicative/client/android/Indicative;


# direct methods
.method constructor <init>(Lcom/indicative/client/android/Indicative;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->this$0:Lcom/indicative/client/android/Indicative;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->context:Landroid/content/Context;

    .line 715
    iput-object p3, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->handler:Landroid/os/Handler;

    const-string p1, "SendEventsTimer"

    .line 716
    invoke-virtual {p0, p1}, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->this$0:Lcom/indicative/client/android/Indicative;

    iget-object v1, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/indicative/client/android/Indicative;->sendAllEvents(Landroid/content/Context;)V

    .line 730
    iget-object v0, p0, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
