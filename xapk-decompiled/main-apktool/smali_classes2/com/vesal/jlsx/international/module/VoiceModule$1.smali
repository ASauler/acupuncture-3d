.class Lcom/vesal/jlsx/international/module/VoiceModule$1;
.super Ljava/lang/Object;
.source "VoiceModule.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/module/VoiceModule;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/module/VoiceModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/module/VoiceModule;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule$1;->this$0:Lcom/vesal/jlsx/international/module/VoiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/VoiceModule$1;->this$0:Lcom/vesal/jlsx/international/module/VoiceModule;

    invoke-static {v0}, Lcom/vesal/jlsx/international/module/VoiceModule;->-$$Nest$fgettextToSpeech(Lcom/vesal/jlsx/international/module/VoiceModule;)Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule$1;->this$0:Lcom/vesal/jlsx/international/module/VoiceModule;

    invoke-static {p1}, Lcom/vesal/jlsx/international/module/VoiceModule;->-$$Nest$fgettextToSpeech(Lcom/vesal/jlsx/international/module/VoiceModule;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule$1;->this$0:Lcom/vesal/jlsx/international/module/VoiceModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vesal/jlsx/international/module/VoiceModule;->-$$Nest$fputsupportNative(Lcom/vesal/jlsx/international/module/VoiceModule;Z)V

    :cond_0
    return-void
.end method
