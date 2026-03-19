.class public Lcom/keiwando/lib_nativefileso/OpenedFile;
.super Ljava/lang/Object;
.source "OpenedFile.java"


# instance fields
.field private data:[B

.field private filename:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->path:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->filename:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/keiwando/lib_nativefileso/OpenedFile;-><init>(Ljava/lang/String;[B)V

    .line 16
    iput-object p3, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->data:[B

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/OpenedFile;->path:Ljava/lang/String;

    return-object v0
.end method
