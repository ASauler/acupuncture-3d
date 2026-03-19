.class final enum Lcom/google/ar/core/af;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/ar/core/af;

.field public static final enum B:Lcom/google/ar/core/af;

.field public static final enum C:Lcom/google/ar/core/af;

.field public static final enum D:Lcom/google/ar/core/af;

.field private static final synthetic H:[Lcom/google/ar/core/af;

.field public static final enum a:Lcom/google/ar/core/af;

.field public static final enum b:Lcom/google/ar/core/af;

.field public static final enum c:Lcom/google/ar/core/af;

.field public static final enum d:Lcom/google/ar/core/af;

.field public static final enum e:Lcom/google/ar/core/af;

.field public static final enum f:Lcom/google/ar/core/af;

.field public static final enum g:Lcom/google/ar/core/af;

.field public static final enum h:Lcom/google/ar/core/af;

.field public static final enum i:Lcom/google/ar/core/af;

.field public static final enum j:Lcom/google/ar/core/af;

.field public static final enum k:Lcom/google/ar/core/af;

.field public static final enum l:Lcom/google/ar/core/af;

.field public static final enum m:Lcom/google/ar/core/af;

.field public static final enum n:Lcom/google/ar/core/af;

.field public static final enum o:Lcom/google/ar/core/af;

.field public static final enum p:Lcom/google/ar/core/af;

.field public static final enum q:Lcom/google/ar/core/af;

.field public static final enum r:Lcom/google/ar/core/af;

.field public static final enum s:Lcom/google/ar/core/af;

.field public static final enum t:Lcom/google/ar/core/af;

.field public static final enum u:Lcom/google/ar/core/af;

.field public static final enum v:Lcom/google/ar/core/af;

.field public static final enum w:Lcom/google/ar/core/af;

.field public static final enum x:Lcom/google/ar/core/af;

.field public static final enum y:Lcom/google/ar/core/af;

.field public static final enum z:Lcom/google/ar/core/af;


# instance fields
.field final E:I

.field final F:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v1, Lcom/google/ar/core/af;

    move-object v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "SUCCESS"

    .line 1
    invoke-direct {v1, v4, v2, v2, v3}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Lcom/google/ar/core/af;->a:Lcom/google/ar/core/af;

    new-instance v2, Lcom/google/ar/core/af;

    move-object v1, v2

    const/4 v3, -0x1

    const-class v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ERROR_INVALID_ARGUMENT"

    const/4 v6, 0x1

    .line 2
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v2, Lcom/google/ar/core/af;->b:Lcom/google/ar/core/af;

    new-instance v3, Lcom/google/ar/core/af;

    move-object v2, v3

    const/4 v4, -0x2

    const-class v5, Lcom/google/ar/core/exceptions/FatalException;

    const-string v6, "ERROR_FATAL"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v3, Lcom/google/ar/core/af;->c:Lcom/google/ar/core/af;

    new-instance v4, Lcom/google/ar/core/af;

    move-object v3, v4

    const/4 v5, -0x3

    const-class v6, Lcom/google/ar/core/exceptions/SessionPausedException;

    const-string v7, "ERROR_SESSION_PAUSED"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v4, Lcom/google/ar/core/af;->d:Lcom/google/ar/core/af;

    new-instance v5, Lcom/google/ar/core/af;

    move-object v4, v5

    const/4 v6, -0x4

    const-class v7, Lcom/google/ar/core/exceptions/SessionNotPausedException;

    const-string v8, "ERROR_SESSION_NOT_PAUSED"

    const/4 v9, 0x4

    .line 5
    invoke-direct {v5, v8, v9, v6, v7}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v5, Lcom/google/ar/core/af;->e:Lcom/google/ar/core/af;

    new-instance v6, Lcom/google/ar/core/af;

    move-object v5, v6

    const/4 v7, -0x5

    const-class v8, Lcom/google/ar/core/exceptions/NotTrackingException;

    const-string v9, "ERROR_NOT_TRACKING"

    const/4 v10, 0x5

    .line 6
    invoke-direct {v6, v9, v10, v7, v8}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v6, Lcom/google/ar/core/af;->f:Lcom/google/ar/core/af;

    new-instance v7, Lcom/google/ar/core/af;

    move-object v6, v7

    const/4 v8, -0x6

    const-class v9, Lcom/google/ar/core/exceptions/TextureNotSetException;

    const-string v10, "ERROR_TEXTURE_NOT_SET"

    const/4 v11, 0x6

    .line 7
    invoke-direct {v7, v10, v11, v8, v9}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v7, Lcom/google/ar/core/af;->g:Lcom/google/ar/core/af;

    new-instance v8, Lcom/google/ar/core/af;

    move-object v7, v8

    const/4 v9, -0x7

    const-class v10, Lcom/google/ar/core/exceptions/MissingGlContextException;

    const-string v11, "ERROR_MISSING_GL_CONTEXT"

    const/4 v12, 0x7

    .line 8
    invoke-direct {v8, v11, v12, v9, v10}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v8, Lcom/google/ar/core/af;->h:Lcom/google/ar/core/af;

    new-instance v9, Lcom/google/ar/core/af;

    move-object v8, v9

    const/4 v10, -0x8

    .line 9
    const-class v11, Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;

    const-string v12, "ERROR_UNSUPPORTED_CONFIGURATION"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v9, Lcom/google/ar/core/af;->i:Lcom/google/ar/core/af;

    new-instance v10, Lcom/google/ar/core/af;

    move-object v9, v10

    const-string v15, "ERROR_CAMERA_PERMISSION_NOT_GRANTED"

    const/16 v16, 0x9

    const/16 v17, -0x9

    const-class v18, Ljava/lang/SecurityException;

    const-string v19, "Camera permission is not granted"

    move-object v14, v10

    .line 10
    invoke-direct/range {v14 .. v19}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/google/ar/core/af;->j:Lcom/google/ar/core/af;

    new-instance v11, Lcom/google/ar/core/af;

    move-object v10, v11

    const/16 v12, -0xa

    const-class v13, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    const-string v14, "ERROR_DEADLINE_EXCEEDED"

    const/16 v15, 0xa

    .line 11
    invoke-direct {v11, v14, v15, v12, v13}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v11, Lcom/google/ar/core/af;->k:Lcom/google/ar/core/af;

    new-instance v12, Lcom/google/ar/core/af;

    move-object v11, v12

    const/16 v13, -0xb

    const-class v14, Lcom/google/ar/core/exceptions/ResourceExhaustedException;

    const-string v15, "ERROR_RESOURCE_EXHAUSTED"

    move-object/from16 v30, v0

    const/16 v0, 0xb

    .line 12
    invoke-direct {v12, v15, v0, v13, v14}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v12, Lcom/google/ar/core/af;->l:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object v12, v0

    const/16 v13, -0xc

    const-class v14, Lcom/google/ar/core/exceptions/NotYetAvailableException;

    const-string v15, "ERROR_NOT_YET_AVAILABLE"

    move-object/from16 v31, v1

    const/16 v1, 0xc

    .line 13
    invoke-direct {v0, v15, v1, v13, v14}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->m:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object v13, v0

    const/16 v1, -0xd

    const-class v14, Lcom/google/ar/core/exceptions/CameraNotAvailableException;

    const-string v15, "ERROR_CAMERA_NOT_AVAILABLE"

    move-object/from16 v32, v2

    const/16 v2, 0xd

    .line 14
    invoke-direct {v0, v15, v2, v1, v14}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->n:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object v14, v0

    const/16 v1, -0x10

    const-class v2, Lcom/google/ar/core/exceptions/AnchorNotSupportedForHostingException;

    const-string v15, "ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING"

    move-object/from16 v33, v3

    const/16 v3, 0xe

    .line 15
    invoke-direct {v0, v15, v3, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->o:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object v15, v0

    const/16 v1, -0x11

    const-class v2, Lcom/google/ar/core/exceptions/ImageInsufficientQualityException;

    const-string v3, "ERROR_IMAGE_INSUFFICIENT_QUALITY"

    move-object/from16 v34, v4

    const/16 v4, 0xf

    .line 16
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->p:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v16, v0

    const/16 v1, -0x12

    const-class v2, Lcom/google/ar/core/exceptions/DataInvalidFormatException;

    const-string v3, "ERROR_DATA_INVALID_FORMAT"

    const/16 v4, 0x10

    .line 17
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->q:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v17, v0

    const/16 v1, -0x13

    const-class v2, Lcom/google/ar/core/exceptions/DataUnsupportedVersionException;

    const-string v3, "ERROR_DATA_UNSUPPORTED_VERSION"

    const/16 v4, 0x11

    .line 18
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->r:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v18, v0

    const/16 v1, -0x14

    const-class v2, Ljava/lang/IllegalStateException;

    const-string v3, "ERROR_ILLEGAL_STATE"

    const/16 v4, 0x12

    .line 19
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->s:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v19, v0

    const/16 v1, -0x17

    const-class v2, Lcom/google/ar/core/exceptions/RecordingFailedException;

    const-string v3, "ERROR_RECORDING_FAILED"

    const/16 v4, 0x13

    .line 20
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->t:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v20, v0

    const/16 v1, -0x18

    const-class v2, Lcom/google/ar/core/exceptions/PlaybackFailedException;

    const-string v3, "ERROR_PLAYBACK_FAILED"

    const/16 v4, 0x14

    .line 21
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->u:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v21, v0

    const/16 v1, -0x19

    const-class v2, Lcom/google/ar/core/exceptions/SessionUnsupportedException;

    const-string v3, "ERROR_SESSION_UNSUPPORTED"

    const/16 v4, 0x15

    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->v:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v22, v0

    const/16 v1, -0x1a

    const-class v2, Lcom/google/ar/core/exceptions/MetadataNotFoundException;

    const-string v3, "ERROR_METADATA_NOT_FOUND"

    const/16 v4, 0x16

    .line 23
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->w:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v23, v0

    const/16 v1, -0xe

    const-class v2, Lcom/google/ar/core/exceptions/CloudAnchorsNotConfiguredException;

    const-string v3, "ERROR_CLOUD_ANCHORS_NOT_CONFIGURED"

    const/16 v4, 0x17

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->x:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v24, v0

    const-string v36, "ERROR_INTERNET_PERMISSION_NOT_GRANTED"

    const/16 v37, 0x18

    const/16 v38, -0xf

    const-class v39, Ljava/lang/SecurityException;

    const-string v40, "Internet permission is not granted"

    move-object/from16 v35, v0

    .line 25
    invoke-direct/range {v35 .. v40}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ar/core/af;->y:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v25, v0

    const/16 v1, -0x64

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;

    const-string v3, "UNAVAILABLE_ARCORE_NOT_INSTALLED"

    const/16 v4, 0x19

    .line 26
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->z:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v26, v0

    const/16 v1, -0x65

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    const-string v3, "UNAVAILABLE_DEVICE_NOT_COMPATIBLE"

    const/16 v4, 0x1a

    .line 27
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->A:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v27, v0

    const/16 v1, -0x67

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;

    const-string v3, "UNAVAILABLE_APK_TOO_OLD"

    const/16 v4, 0x1b

    .line 28
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->B:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v28, v0

    const/16 v1, -0x68

    .line 29
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;

    const-string v3, "UNAVAILABLE_SDK_TOO_OLD"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->C:Lcom/google/ar/core/af;

    new-instance v0, Lcom/google/ar/core/af;

    move-object/from16 v29, v0

    const/16 v1, -0x69

    const-class v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    const-string v3, "UNAVAILABLE_USER_DECLINED_INSTALLATION"

    const/16 v4, 0x1d

    .line 30
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/af;->D:Lcom/google/ar/core/af;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    filled-new-array/range {v0 .. v29}, [Lcom/google/ar/core/af;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/af;->H:[Lcom/google/ar/core/af;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/ar/core/af;-><init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/af;->E:I

    iput-object p4, p0, Lcom/google/ar/core/af;->F:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/ar/core/af;->G:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/ar/core/af;
    .locals 1

    sget-object v0, Lcom/google/ar/core/af;->H:[Lcom/google/ar/core/af;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/af;

    return-object v0
.end method
