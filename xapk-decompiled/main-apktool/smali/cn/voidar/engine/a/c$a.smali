.class Lcn/voidar/engine/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcn/voidar/engine/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/voidar/engine/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/voidar/engine/a/c;-><init>(Lcn/voidar/engine/a/c$1;)V

    sput-object v0, Lcn/voidar/engine/a/c$a;->a:Lcn/voidar/engine/a/c;

    return-void
.end method

.method static synthetic a()Lcn/voidar/engine/a/c;
    .locals 1

    sget-object v0, Lcn/voidar/engine/a/c$a;->a:Lcn/voidar/engine/a/c;

    return-object v0
.end method
