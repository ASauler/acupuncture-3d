.class final synthetic Lcom/google/ar/core/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# static fields
.field static final a:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/ai;

    invoke-direct {v0}, Lcom/google/ar/core/ai;-><init>()V

    sput-object v0, Lcom/google/ar/core/ai;->a:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->lambda$setDummyOnImageAvailableListener$0$SharedCamera(Landroid/media/ImageReader;)V

    return-void
.end method
