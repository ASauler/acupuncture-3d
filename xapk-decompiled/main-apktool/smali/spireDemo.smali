.class public LspireDemo;
.super Ljava/lang/Object;
.source "spireDemo.java"


# static fields
.field public static folderDir:Ljava/lang/String; = "result/"

.field public static pptDir:Ljava/lang/String; = "testppt.pptx"


# instance fields
.field public ShapesDisplay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ShapesType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvalues/SHAPE_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public animationShaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/spire/presentation/IShape;",
            ">;"
        }
    .end annotation
.end field

.field public destFolder:Ljava/lang/String;

.field destPresentation:Lcom/spire/presentation/Presentation;

.field public exp_PPT_format_path:Ljava/lang/String;

.field pageNum:I

.field public page_dir:Ljava/lang/String;

.field ppt:Lcom/spire/presentation/Presentation;

.field splitFileGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field splitppt:Lcom/spire/presentation/Presentation;

.field public vslFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, LspireDemo;->pageNum:I

    const-string v0, ""

    .line 44
    iput-object v0, p0, LspireDemo;->vslFileName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, LspireDemo;->destFolder:Ljava/lang/String;

    .line 46
    iput-object v0, p0, LspireDemo;->exp_PPT_format_path:Ljava/lang/String;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 479
    new-instance p0, Ljava/io/File;

    sget-object v0, LspireDemo;->pptDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 480
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LspireDemo;->pptDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file not founded!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 483
    :cond_0
    new-instance p0, Ljava/io/File;

    sget-object v0, LspireDemo;->folderDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 484
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LspireDemo;->folderDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "directory not founded!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 488
    :cond_1
    new-instance p0, LspireDemo;

    invoke-direct {p0}, LspireDemo;-><init>()V

    .line 489
    new-instance v0, Lvalues/Common_Value;

    invoke-direct {v0}, Lvalues/Common_Value;-><init>()V

    .line 490
    new-instance v1, Lvalues/ConvertPPT;

    invoke-direct {v1}, Lvalues/ConvertPPT;-><init>()V

    .line 492
    sget-object v2, LspireDemo;->pptDir:Ljava/lang/String;

    sget-object v3, LspireDemo;->folderDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lvalues/Common_Value;->Init_Common_Value(Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    sget-object v2, LspireDemo;->pptDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lvalues/ConvertPPT;->initConvert(Ljava/lang/String;Lvalues/Common_Value;)V

    .line 495
    sget-object v2, LspireDemo;->pptDir:Ljava/lang/String;

    sget-object v3, LspireDemo;->folderDir:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, LspireDemo;->pptSplit(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v2, LspireDemo;->pptDir:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, LspireDemo;->produce_PPT_xml_file(Ljava/lang/String;Lvalues/ConvertPPT;)V

    .line 497
    sget-object p0, Lvalues/Common_Value;->weike_outputdir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lvalues/Common_Value;->deleteFolder(Ljava/lang/String;)V

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LspireDemo;->folderDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\\TempPPTX"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lvalues/Common_Value;->deleteFolder(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add_animation_list_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "Animtions"

    .line 325
    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object/from16 v3, p3

    .line 326
    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 328
    invoke-virtual/range {p0 .. p1}, LspireDemo;->getAnimationShapes(Lcom/spire/presentation/ISlide;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 331
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v6

    const-string v7, "0"

    const-string v8, "noClick"

    const-string v9, "entr"

    const-string/jumbo v10, "shapeId"

    const-string v11, "id"

    const-string v12, "Animation"

    const-string/jumbo v13, "waittime"

    const-string/jumbo v14, "type"

    const-string v15, "action"

    if-ge v4, v6, :cond_1

    .line 332
    invoke-interface/range {p1 .. p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v6

    .line 333
    invoke-interface {v6}, Lcom/spire/presentation/IShape;->getLeft()F

    move-result v3

    move-object/from16 v16, v2

    float-to-double v2, v3

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    cmpl-double v2, v2, v17

    if-eqz v2, :cond_0

    invoke-interface {v6}, Lcom/spire/presentation/IShape;->getTop()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v17, 0x4034000000000000L    # 20.0

    cmpl-double v2, v2, v17

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, v0, LspireDemo;->ShapesDisplay:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {v1, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 336
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-interface {v2, v15, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v2, v14, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v2, v13, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 343
    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v3, v16

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 350
    invoke-interface/range {p1 .. p1}, Lcom/spire/presentation/ISlide;->getTimeline()Lcom/spire/presentation/drawing/animation/TimeLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spire/presentation/drawing/animation/TimeLine;->getMainSequence()Lcom/spire/presentation/collections/AnimationEffectCollection;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lcom/spire/presentation/collections/AnimationEffectCollection;->getCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_a

    .line 354
    invoke-virtual {v2, v6}, Lcom/spire/presentation/collections/AnimationEffectCollection;->get(I)Lcom/spire/presentation/drawing/animation/AnimationEffect;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v16}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getShapeTarget()Lcom/spire/presentation/Shape;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v6}, Lcom/spire/presentation/collections/AnimationEffectCollection;->get(I)Lcom/spire/presentation/drawing/animation/AnimationEffect;

    move-result-object v16

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getTiming()Lcom/spire/presentation/drawing/animation/Timing;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v18}, Lcom/spire/presentation/drawing/animation/Timing;->getTriggerType()Lcom/spire/presentation/drawing/animation/AnimationTriggerType;

    move-result-object v2

    move/from16 v18, v6

    .line 359
    invoke-interface {v1, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 360
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v11, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 361
    invoke-virtual {v0, v4, v1}, LspireDemo;->getShapeID(Lcom/spire/presentation/IShape;Lcom/spire/presentation/ISlide;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v10, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, LspireDemo$1;->$SwitchMap$com$spire$presentation$drawing$animation$TimeNodePresetClassType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getPresetClassType()Lcom/spire/presentation/drawing/animation/TimeNodePresetClassType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/spire/presentation/drawing/animation/TimeNodePresetClassType;->ordinal()I

    move-result v20

    aget v0, v0, v20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 373
    instance-of v0, v4, Lcom/spire/presentation/IVideo;

    if-eqz v0, :cond_2

    const-string v0, "mediacall"

    .line 374
    invoke-interface {v6, v15, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call"

    const-string v1, "play"

    .line 375
    invoke-interface {v6, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "playfrom"

    const/4 v1, 0x0

    .line 376
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const-string v0, "emph"

    .line 370
    invoke-interface {v6, v15, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const-string v0, "exit"

    .line 367
    invoke-interface {v6, v15, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 364
    invoke-interface {v6, v15, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_3
    sget-object v0, Lcom/spire/presentation/drawing/animation/AnimationTriggerType;->ON_PAGE_CLICK:Lcom/spire/presentation/drawing/animation/AnimationTriggerType;

    if-ne v2, v0, :cond_6

    const-string v0, "Clicked"

    .line 383
    invoke-interface {v6, v14, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 384
    :cond_6
    sget-object v0, Lcom/spire/presentation/drawing/animation/AnimationTriggerType;->NONE:Lcom/spire/presentation/drawing/animation/AnimationTriggerType;

    if-ne v2, v0, :cond_7

    .line 385
    invoke-interface {v6, v14, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, "Mixed"

    .line 387
    invoke-interface {v6, v14, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getTiming()Lcom/spire/presentation/drawing/animation/Timing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spire/presentation/drawing/animation/Timing;->getTriggerDelayTime()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_9

    const v2, 0x4479c000    # 999.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    goto :goto_5

    .line 392
    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v13, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 390
    :cond_9
    :goto_5
    invoke-interface {v6, v13, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_6
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, v17

    move-object/from16 v2, v19

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public add_audio_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Audios"

    .line 266
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 267
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    .line 269
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 270
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v3

    .line 271
    instance-of v4, v3, Lcom/spire/presentation/IAudio;

    if-eqz v4, :cond_0

    .line 272
    iget-object v4, p0, LspireDemo;->ShapesType:Ljava/util/List;

    sget-object v5, Lvalues/SHAPE_TYPE;->ADUIO:Lvalues/SHAPE_TYPE;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Meida_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    check-cast v3, Lcom/spire/presentation/IAudio;

    invoke-interface {v3}, Lcom/spire/presentation/IAudio;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "\u4fdd\u5b58\u97f3\u9891"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v3

    check-cast v3, Lcom/spire/presentation/IAudio;

    invoke-interface {v3}, Lcom/spire/presentation/IAudio;->getData()Lcom/spire/presentation/IAudioData;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/spire/presentation/IAudioData;->saveToFile(Ljava/lang/String;)V

    const-string v3, "Audio"

    .line 280
    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v5, "id"

    .line 281
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "shapeId"

    .line 282
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Filename"

    .line 283
    invoke-interface {v3, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "StartPoint"

    .line 284
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public add_background_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LspireDemo;->pageNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p0, p1, v0}, LspireDemo;->saveBackgroudPng(Lcom/spire/presentation/ISlide;Ljava/lang/String;)V

    const-string p1, "BackGrounds"

    .line 405
    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 406
    invoke-interface {p3, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p3, "BackGround"

    .line 409
    invoke-interface {p2, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "id"

    const/4 v1, 0x0

    .line 410
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Filename"

    .line 411
    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public add_model_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 206
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 207
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v3

    .line 208
    instance-of v4, v3, Lcom/spire/presentation/SlidePicture;

    if-eqz v4, :cond_1

    .line 209
    move-object v4, v3

    check-cast v4, Lcom/spire/presentation/SlidePicture;

    invoke-virtual {v4}, Lcom/spire/presentation/SlidePicture;->getAlternativeText()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v5}, Lvalues/Constants;->get_Vesal_Model_Name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_1

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 214
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MOD_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v4}, Lcom/spire/presentation/SlidePicture;->getPictureFill()Lcom/spire/presentation/drawing/PictureFillFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spire/presentation/drawing/PictureFillFormat;->getPicture()Lcom/spire/presentation/PictureShape;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spire/presentation/PictureShape;->getEmbedImage()Lcom/spire/presentation/drawing/IImageData;

    move-result-object v4

    invoke-interface {v4}, Lcom/spire/presentation/drawing/IImageData;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object v4

    .line 216
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "PNG"

    invoke-static {v4, v6, v7}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    .line 217
    iget-object v4, p0, LspireDemo;->ShapesType:Ljava/util/List;

    sget-object v6, Lvalues/SHAPE_TYPE;->MODEL:Lvalues/SHAPE_TYPE;

    invoke-interface {v4, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Model"

    .line 218
    invoke-interface {p2, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v6, "id"

    .line 219
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "shapeId"

    .line 220
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "modelId"

    .line 221
    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getLeft()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getTop()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getWidth()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "w"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v5, "h"

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-interface {p3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public add_video_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Videos"

    .line 234
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 235
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    .line 237
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 238
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v3

    .line 239
    instance-of v4, v3, Lcom/spire/presentation/IVideo;

    if-eqz v4, :cond_1

    .line 240
    iget-object v4, p0, LspireDemo;->ShapesType:Ljava/util/List;

    sget-object v5, Lvalues/SHAPE_TYPE;->VIDEO:Lvalues/SHAPE_TYPE;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Meida_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v5

    check-cast v5, Lcom/spire/presentation/IVideo;

    invoke-interface {v5}, Lcom/spire/presentation/IVideo;->getEmbeddedVideoData()Lcom/spire/presentation/VideoData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 243
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\u4fdd\u5b58\u89c6\u9891"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v5

    check-cast v5, Lcom/spire/presentation/IVideo;

    invoke-interface {v5}, Lcom/spire/presentation/IVideo;->getEmbeddedVideoData()Lcom/spire/presentation/VideoData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/spire/presentation/VideoData;->saveToFile(Ljava/lang/String;)V

    const-string v5, "Video"

    .line 249
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "id"

    .line 250
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "shapeId"

    .line 251
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getLeft()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getTop()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "y"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getWidth()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "w"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v6, "h"

    invoke-interface {v5, v6, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Filename"

    .line 256
    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "isPlayAudio"

    const-string/jumbo v4, "true"

    .line 257
    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "StartPoint"

    .line 258
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\u672a\u627e\u5230\u89c6\u9891"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public closePPT()V
    .locals 1

    .line 453
    iget-object v0, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/spire/presentation/Presentation;->dispose()V

    :cond_0
    return-void
.end method

.method public createPicturesforShapes(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Images"

    .line 293
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 294
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    .line 296
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 297
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v3

    .line 299
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getLeft()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getTop()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ANM_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object v5, p0, LspireDemo;->ShapesType:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lvalues/SHAPE_TYPE;->Normal:Lvalues/SHAPE_TYPE;

    if-ne v5, v6, :cond_0

    .line 302
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "slide=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",slide.getShapes()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/spire/presentation/ShapeCollection;->saveAsImage(I)Ljava/awt/image/BufferedImage;

    move-result-object v5

    .line 304
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, p3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "PNG"

    invoke-static {v5, v7, v6}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    const-string v5, "Image"

    .line 308
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "id"

    .line 309
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "shapeId"

    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getLeft()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getTop()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "y"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getWidth()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "w"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-interface {v3}, Lcom/spire/presentation/IShape;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v6, "h"

    invoke-interface {v5, v6, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Filename"

    .line 315
    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getAnimationShapes(Lcom/spire/presentation/ISlide;)V
    .locals 7

    .line 417
    iget-object v0, p0, LspireDemo;->animationShaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getTimeline()Lcom/spire/presentation/drawing/animation/TimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spire/presentation/drawing/animation/TimeLine;->getMainSequence()Lcom/spire/presentation/collections/AnimationEffectCollection;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 420
    :goto_0
    invoke-virtual {v0}, Lcom/spire/presentation/collections/AnimationEffectCollection;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 421
    invoke-virtual {v0, v2}, Lcom/spire/presentation/collections/AnimationEffectCollection;->get(I)Lcom/spire/presentation/drawing/animation/AnimationEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getShapeTarget()Lcom/spire/presentation/Shape;

    move-result-object v3

    .line 422
    invoke-virtual {v0, v2}, Lcom/spire/presentation/collections/AnimationEffectCollection;->get(I)Lcom/spire/presentation/drawing/animation/AnimationEffect;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getPresetClassType()Lcom/spire/presentation/drawing/animation/TimeNodePresetClassType;

    move-result-object v4

    sget-object v5, Lcom/spire/presentation/drawing/animation/TimeNodePresetClassType;->ENTRANCE:Lcom/spire/presentation/drawing/animation/TimeNodePresetClassType;

    if-ne v4, v5, :cond_0

    .line 424
    iget-object v4, p0, LspireDemo;->ShapesDisplay:Ljava/util/List;

    invoke-virtual {p0, v3, p1}, LspireDemo;->getShapeID(Lcom/spire/presentation/IShape;Lcom/spire/presentation/ISlide;)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    iget-object v4, p0, LspireDemo;->animationShaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 428
    :cond_1
    iget-object v3, p0, LspireDemo;->animationShaps:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spire/presentation/collections/AnimationEffectCollection;->get(I)Lcom/spire/presentation/drawing/animation/AnimationEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spire/presentation/drawing/animation/AnimationEffect;->getShapeTarget()Lcom/spire/presentation/Shape;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getShapeID(Lcom/spire/presentation/IShape;Lcom/spire/presentation/ISlide;)I
    .locals 2

    const/4 v0, 0x0

    .line 434
    :goto_0
    invoke-interface {p2}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 435
    invoke-interface {p2}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSlideTitle(Lcom/spire/presentation/ISlide;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v1

    const-string v2, ""

    if-ge v0, v1, :cond_2

    .line 183
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spire/presentation/ShapeCollection;->get(I)Lcom/spire/presentation/IShape;

    move-result-object v1

    .line 185
    :try_start_0
    invoke-interface {v1}, Lcom/spire/presentation/IShape;->getPlaceholder()Lcom/spire/presentation/PlaceholderEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/PlaceholderEx;->getType()Lcom/spire/presentation/PlaceholderType;

    move-result-object v3

    sget-object v4, Lcom/spire/presentation/PlaceholderType;->CENTERED_TITLE:Lcom/spire/presentation/PlaceholderType;

    if-eq v3, v4, :cond_0

    .line 186
    invoke-interface {v1}, Lcom/spire/presentation/IShape;->getPlaceholder()Lcom/spire/presentation/PlaceholderEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/PlaceholderEx;->getType()Lcom/spire/presentation/PlaceholderType;

    move-result-object v3

    sget-object v4, Lcom/spire/presentation/PlaceholderType;->TITLE:Lcom/spire/presentation/PlaceholderType;

    if-ne v3, v4, :cond_1

    .line 187
    :cond_0
    check-cast v1, Lcom/spire/presentation/IAutoShape;

    invoke-interface {v1}, Lcom/spire/presentation/IAutoShape;->getTextFrame()Lcom/spire/presentation/ITextFrameProperties;

    move-result-object v1

    invoke-interface {v1}, Lcom/spire/presentation/ITextFrameProperties;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_1
    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    .line 194
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u7b2c"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LspireDemo;->pageNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "\u9875"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public initSlide(Lcom/spire/presentation/ISlide;)V
    .locals 3

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LspireDemo;->animationShaps:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LspireDemo;->ShapesDisplay:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LspireDemo;->ShapesType:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, LspireDemo;->ShapesDisplay:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, LspireDemo;->ShapesType:Ljava/util/List;

    sget-object v2, Lvalues/SHAPE_TYPE;->Normal:Lvalues/SHAPE_TYPE;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openPPT(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/spire/presentation/Presentation;

    invoke-direct {v0}, Lcom/spire/presentation/Presentation;-><init>()V

    iput-object v0, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    .line 160
    invoke-virtual {v0, p1}, Lcom/spire/presentation/Presentation;->loadFromFile(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public pptSplit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u5f00\u59cb\u62c6\u5206ppt"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, LspireDemo;->destFolder:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LspireDemo;->splitFileGroup:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/spire/presentation/Presentation;

    invoke-direct {v0}, Lcom/spire/presentation/Presentation;-><init>()V

    iput-object v0, p0, LspireDemo;->ppt:Lcom/spire/presentation/Presentation;

    .line 57
    invoke-virtual {v0, p1}, Lcom/spire/presentation/Presentation;->loadFromFile(Ljava/lang/String;)V

    .line 59
    new-instance p1, Ljava/io/File;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    .line 67
    :goto_0
    iget-object v3, p0, LspireDemo;->ppt:Lcom/spire/presentation/Presentation;

    invoke-virtual {v3}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/collections/SlideCollection;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    if-nez v2, :cond_2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\\TempPPTX\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".pptx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v3, Lcom/spire/presentation/Presentation;

    invoke-direct {v3}, Lcom/spire/presentation/Presentation;-><init>()V

    iput-object v3, p0, LspireDemo;->splitppt:Lcom/spire/presentation/Presentation;

    .line 71
    invoke-virtual {v3}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/spire/presentation/collections/SlideCollection;->removeAt(I)V

    .line 73
    :cond_2
    iget-object v3, p0, LspireDemo;->splitppt:Lcom/spire/presentation/Presentation;

    invoke-virtual {v3}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v3

    iget-object v4, p0, LspireDemo;->ppt:Lcom/spire/presentation/Presentation;

    invoke-virtual {v4}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/spire/presentation/collections/SlideCollection;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/spire/presentation/collections/SlideCollection;->append(Lcom/spire/presentation/ISlide;)I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 75
    iget-object v3, p0, LspireDemo;->ppt:Lcom/spire/presentation/Presentation;

    invoke-virtual {v3}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spire/presentation/collections/SlideCollection;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4

    .line 76
    :cond_3
    iget-object v2, p0, LspireDemo;->splitFileGroup:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, LspireDemo;->splitppt:Lcom/spire/presentation/Presentation;

    sget-object v3, Lcom/spire/presentation/FileFormat;->PPTX_2013:Lcom/spire/presentation/FileFormat;

    invoke-virtual {v2, v0, v3}, Lcom/spire/presentation/Presentation;->saveToFile(Ljava/lang/String;Lcom/spire/presentation/FileFormat;)V

    move v2, p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo p2, "\u62c6\u5206ppt\u5b8c\u6210"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public produce_PPT_xml_file(Ljava/lang/String;Lvalues/ConvertPPT;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, LspireDemo;->splitFileGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u5f00\u59cb\u8f6c\u6362ppt"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    iget-object v0, p2, Lvalues/ConvertPPT;->vslFileName:Ljava/lang/String;

    iput-object v0, p0, LspireDemo;->vslFileName:Ljava/lang/String;

    .line 95
    iget-object v0, p2, Lvalues/ConvertPPT;->exp_PPT_format_path:Ljava/lang/String;

    iput-object v0, p0, LspireDemo;->exp_PPT_format_path:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 100
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    const-string v2, "SlideDoc"

    .line 101
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 102
    iput v1, p0, LspireDemo;->pageNum:I

    const/4 v3, 0x0

    move v4, v3

    .line 103
    :goto_0
    iget-object v5, p0, LspireDemo;->splitFileGroup:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 104
    iget-object v5, p0, LspireDemo;->splitFileGroup:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, LspireDemo;->openPPT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    if-nez v4, :cond_2

    const-string v5, "name"

    .line 108
    invoke-interface {v2, v5, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    invoke-virtual {v5}, Lcom/spire/presentation/Presentation;->getSlideSize()Lcom/spire/presentation/SlideSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spire/presentation/SlideSize;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-interface {v2, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    invoke-virtual {v5}, Lcom/spire/presentation/Presentation;->getSlideSize()Lcom/spire/presentation/SlideSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spire/presentation/SlideSize;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    const-string v6, "height"

    invoke-interface {v2, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 112
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v7, "createTime"

    .line 113
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 116
    :cond_2
    iget-object v5, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    invoke-virtual {v5}, Lcom/spire/presentation/Presentation;->getSlides()Lcom/spire/presentation/collections/SlideCollection;

    move-result-object v5

    move v6, v3

    .line 117
    :goto_1
    invoke-virtual {v5}, Lcom/spire/presentation/SlideList;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 118
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7}, LspireDemo;->initSlide(Lcom/spire/presentation/ISlide;)V

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lvalues/ConvertPPT;->exp_PPT_format_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, LspireDemo;->pageNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, LspireDemo;->page_dir:Ljava/lang/String;

    .line 121
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 123
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_3
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7}, LspireDemo;->getSlideTitle(Lcom/spire/presentation/ISlide;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Slide"

    .line 127
    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    const-string v9, "SlideName"

    .line 128
    invoke-interface {v8, v9, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v7, p0, LspireDemo;->pageNum:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "pageNum"

    invoke-interface {v8, v9, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 131
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->add_model_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 132
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->add_video_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 133
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->add_audio_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 135
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->createPicturesforShapes(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 136
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->add_animation_list_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 137
    invoke-virtual {v5, v6}, Lcom/spire/presentation/SlideList;->get(I)Lcom/spire/presentation/ISlide;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v8}, LspireDemo;->add_background_info_to_xml(Lcom/spire/presentation/ISlide;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 139
    iget v7, p0, LspireDemo;->pageNum:I

    add-int/2addr v7, v1

    iput v7, p0, LspireDemo;->pageNum:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 141
    :cond_4
    invoke-virtual {p0}, LspireDemo;->closePPT()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 143
    :cond_5
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    const-string v1, "indent"

    const-string/jumbo v2, "yes"

    .line 148
    invoke-virtual {p1, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lvalues/ConvertPPT;->outputfile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 151
    invoke-virtual {p0}, LspireDemo;->zipDIR()V

    .line 152
    new-instance p1, Ljava/io/File;

    iget-object p2, p2, Lvalues/ConvertPPT;->exp_PPT_format_path:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 155
    :cond_6
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo p2, "\u8f6c\u5316\u6210\u529f"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public saveBackgroudPng(Lcom/spire/presentation/ISlide;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spire/presentation/ShapeCollection;->getCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 443
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->getShapes()Lcom/spire/presentation/ShapeCollection;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/spire/presentation/ShapeCollection;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    invoke-virtual {v0}, Lcom/spire/presentation/Presentation;->getSlideSize()Lcom/spire/presentation/SlideSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spire/presentation/SlideSize;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, LspireDemo;->destPresentation:Lcom/spire/presentation/Presentation;

    .line 447
    invoke-virtual {v1}, Lcom/spire/presentation/Presentation;->getSlideSize()Lcom/spire/presentation/SlideSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spire/presentation/SlideSize;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v1

    double-to-int v1, v1

    .line 446
    invoke-interface {p1, v0, v1}, Lcom/spire/presentation/ISlide;->saveAsImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LspireDemo;->page_dir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "PNG"

    invoke-static {v0, p2, v1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    .line 449
    invoke-interface {p1}, Lcom/spire/presentation/ISlide;->dispose()V

    return-void
.end method

.method public testUnity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u63a5\u6536\u5230\u53c2\u6570=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p1
.end method

.method public zipDIR()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LspireDemo;->destFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LspireDemo;->vslFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lvalues/Common_Value;->DelFile(Ljava/lang/String;)V

    .line 460
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 462
    iget-object v1, p0, LspireDemo;->exp_PPT_format_path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lutils/zipClass;->toZip(Ljava/lang/String;Ljava/io/OutputStream;Z)V

    return-void
.end method
