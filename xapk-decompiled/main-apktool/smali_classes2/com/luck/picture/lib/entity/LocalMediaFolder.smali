.class public Lcom/luck/picture/lib/entity/LocalMediaFolder;
.super Ljava/lang/Object;
.source "LocalMediaFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:J

.field private checkedNum:I

.field private currentDataPage:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private firstImagePath:Ljava/lang/String;

.field private firstMimeType:Ljava/lang/String;

.field private imageNum:I

.field private isCameraFolder:Z

.field private isChecked:Z

.field private isHasMore:Z

.field private name:Ljava/lang/String;

.field private ofAllType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isCameraFolder:Z

    .line 88
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    return-wide v0
.end method

.method public getCheckedNum()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    return v0
.end method

.method public getCurrentDataPage()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    return-object v0
.end method

.method public getFirstImagePath()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMimeType()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageNum()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getOfAllType()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    return v0
.end method

.method public isCameraFolder()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isCameraFolder:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    return v0
.end method

.method public isHasMore()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return v0
.end method

.method public setBucketId(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    return-void
.end method

.method public setCameraFolder(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isCameraFolder:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    return-void
.end method

.method public setCheckedNum(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    return-void
.end method

.method public setCurrentDataPage(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    return-void
.end method

.method public setFirstImagePath(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-void
.end method

.method public setFirstMimeType(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return-void
.end method

.method public setImageNum(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    return-void
.end method

.method public setOfAllType(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->ofAllType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isCameraFolder:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 105
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
