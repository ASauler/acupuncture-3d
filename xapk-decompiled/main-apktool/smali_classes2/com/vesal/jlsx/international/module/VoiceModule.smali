.class public Lcom/vesal/jlsx/international/module/VoiceModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "VoiceModule.java"


# instance fields
.field private supportNative:Z

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static bridge synthetic -$$Nest$fgettextToSpeech(Lcom/vesal/jlsx/international/module/VoiceModule;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputsupportNative(Lcom/vesal/jlsx/international/module/VoiceModule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->supportNative:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->supportNative:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "VoiceModule"

    return-object v0
.end method

.method public init(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 23
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/VoiceModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/module/VoiceModule$1;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/module/VoiceModule$1;-><init>(Lcom/vesal/jlsx/international/module/VoiceModule;)V

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 0

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->supportNative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->supportNative:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopSpeak()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/VoiceModule;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method
