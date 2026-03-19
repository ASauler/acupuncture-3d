.class public final La/a/a/f/a/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La/a/a/f/a/g;Landroid/content/pm/PackageManager;)Lcom/wikitude/common/CallValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/f/a/g;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "La/a/a/f/a/e;",
            ">;"
        }
    .end annotation

    const-string v0, "android.hardware.sensor.gyroscope"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.hardware.sensor.accelerometer"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "Accelerometer"

    const-string v4, "Missing required sensors: "

    const-string v5, "com.wikitude.device_motion.android"

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    new-instance p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object p1, La/a/a/f/a/a;->d:La/a/a/f/a/a;

    invoke-virtual {p1}, La/a/a/f/a/a;->a()I

    move-result p1

    const-string v0, "Invalid Event Type."

    invoke-direct {p0, p1, v5, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    goto/16 :goto_7

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance p0, La/a/a/f/a/i;

    invoke-direct {p0}, La/a/a/f/a/i;-><init>()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    new-instance p1, La/a/a/f/a/b;

    invoke-direct {p1, p0}, La/a/a/f/a/b;-><init>(La/a/a/f/a/g;)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v1, :cond_4

    const-string p1, "Compass"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/f/a/a;->e:La/a/a/f/a/a;

    invoke-virtual {v0}, La/a/a/f/a/a;->a()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v5, p0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "EMBT3C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "EMBT3S"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, La/a/a/f/a/d;

    invoke-direct {p0}, La/a/a/f/a/d;-><init>()V

    :goto_0
    invoke-static {p0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    goto :goto_7

    :cond_7
    :goto_1
    new-instance p1, La/a/a/f/a/b;

    invoke-direct {p1, p0}, La/a/a/f/a/b;-><init>(La/a/a/f/a/g;)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    new-instance p1, La/a/a/f/a/b;

    invoke-direct {p1, p0}, La/a/a/f/a/b;-><init>(La/a/a/f/a/g;)V

    :goto_2
    invoke-static {p1}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_c

    if-eqz v0, :cond_b

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    :goto_3
    const-string p1, "Accelerometer, Compass or Gyroscope"

    goto :goto_4

    :cond_c
    const-string p1, "Compass or Gyroscope"

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/f/a/a;->e:La/a/a/f/a/a;

    invoke-virtual {v0}, La/a/a/f/a/a;->a()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v5, p0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {p1}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    :goto_7
    return-object p0
.end method
