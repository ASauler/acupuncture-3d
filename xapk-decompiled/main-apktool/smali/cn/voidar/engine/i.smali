.class public Lcn/voidar/engine/i;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcn/voidar/engine/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/voidar/engine/i;->a:Ljava/lang/String;

    iput p2, p0, Lcn/voidar/engine/i;->b:I

    return-void
.end method

.method static a()Lcn/voidar/engine/i;
    .locals 3

    sget-object v0, Lcn/voidar/engine/i;->c:Lcn/voidar/engine/i;

    if-nez v0, :cond_0

    new-instance v0, Lcn/voidar/engine/i;

    const-string v1, "VoidAR_JAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/voidar/engine/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/voidar/engine/i;->c:Lcn/voidar/engine/i;

    :cond_0
    sget-object v0, Lcn/voidar/engine/i;->c:Lcn/voidar/engine/i;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcn/voidar/engine/i;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/voidar/engine/i;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/voidar/engine/i;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcn/voidar/engine/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/voidar/engine/i;->b:I

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcn/voidar/engine/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lcn/voidar/engine/i;->a(ILjava/lang/String;)V

    return-void
.end method
