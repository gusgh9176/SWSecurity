.class public Lbtools/router/OsmPathElement;
.super Ljava/lang/Object;
.source "OsmPathElement.java"

# interfaces
.implements Lbtools/mapaccess/OsmPos;


# instance fields
.field public cost:I

.field private ilat:I

.field private ilon:I

.field public message:Lbtools/router/MessageData;

.field public origin:Lbtools/router/OsmPathElement;

.field private selev:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 102
    return-void
.end method

.method public static final create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;
    .locals 1
    .param p0, "ilon"    # I
    .param p1, "ilat"    # I
    .param p2, "selev"    # S
    .param p3, "origin"    # Lbtools/router/OsmPathElement;
    .param p4, "countTraffic"    # Z

    .prologue
    .line 92
    if-eqz p4, :cond_0

    new-instance v0, Lbtools/router/OsmPathElementWithTraffic;

    invoke-direct {v0}, Lbtools/router/OsmPathElementWithTraffic;-><init>()V

    .line 93
    .local v0, "pe":Lbtools/router/OsmPathElement;
    :goto_0
    iput p0, v0, Lbtools/router/OsmPathElement;->ilon:I

    .line 94
    iput p1, v0, Lbtools/router/OsmPathElement;->ilat:I

    .line 95
    iput-short p2, v0, Lbtools/router/OsmPathElement;->selev:S

    .line 96
    iput-object p3, v0, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 97
    return-object v0

    .line 92
    .end local v0    # "pe":Lbtools/router/OsmPathElement;
    :cond_0
    new-instance v0, Lbtools/router/OsmPathElement;

    invoke-direct {v0}, Lbtools/router/OsmPathElement;-><init>()V

    goto :goto_0
.end method

.method public static final create(Lbtools/router/OsmPath;Z)Lbtools/router/OsmPathElement;
    .locals 6
    .param p0, "path"    # Lbtools/router/OsmPath;
    .param p1, "countTraffic"    # Z

    .prologue
    .line 83
    invoke-virtual {p0}, Lbtools/router/OsmPath;->getTargetNode()Lbtools/mapaccess/OsmNode;

    move-result-object v0

    .line 84
    .local v0, "n":Lbtools/mapaccess/OsmNode;
    invoke-virtual {v0}, Lbtools/mapaccess/OsmNode;->getILon()I

    move-result v2

    invoke-virtual {v0}, Lbtools/mapaccess/OsmNode;->getILat()I

    move-result v3

    iget-short v4, p0, Lbtools/router/OsmPath;->selev:S

    iget-object v5, p0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    invoke-static {v2, v3, v4, v5, p1}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v1

    .line 85
    .local v1, "pe":Lbtools/router/OsmPathElement;
    iget v2, p0, Lbtools/router/OsmPath;->cost:I

    iput v2, v1, Lbtools/router/OsmPathElement;->cost:I

    .line 86
    iget-object v2, p0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iput-object v2, v1, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 87
    return-object v1
.end method

.method public static readFromStream(Ljava/io/DataInput;)Lbtools/router/OsmPathElement;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lbtools/router/OsmPathElement;

    invoke-direct {v0}, Lbtools/router/OsmPathElement;-><init>()V

    .line 124
    .local v0, "pe":Lbtools/router/OsmPathElement;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lbtools/router/OsmPathElement;->ilat:I

    .line 125
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lbtools/router/OsmPathElement;->ilon:I

    .line 126
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    iput-short v1, v0, Lbtools/router/OsmPathElement;->selev:S

    .line 127
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lbtools/router/OsmPathElement;->cost:I

    .line 128
    return-object v0
.end method


# virtual methods
.method public addTraffic(F)V
    .locals 0
    .param p1, "traffic"    # F

    .prologue
    .line 106
    return-void
.end method

.method public final calcDistance(Lbtools/mapaccess/OsmPos;)I
    .locals 20
    .param p1, "p"    # Lbtools/mapaccess/OsmPos;

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/OsmPathElement;->ilat:I

    move/from16 v16, v0

    const v17, 0x55d4a80

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3e4a80b931cd513cL    # 1.234134E-8

    mul-double v10, v16, v18

    .line 68
    .local v10, "l":D
    mul-double v12, v10, v10

    .line 69
    .local v12, "l2":D
    mul-double v14, v12, v12

    .line 70
    .local v14, "l4":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v12

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v18, v14, v18

    add-double v2, v16, v18

    .line 72
    .local v2, "coslat":D
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/OsmPathElement;->ilat:I

    move/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lbtools/mapaccess/OsmPos;->getILat()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x412e848000000000L    # 1000000.0

    div-double v6, v16, v18

    .line 73
    .local v6, "dlat":D
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/OsmPathElement;->ilon:I

    move/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lbtools/mapaccess/OsmPos;->getILon()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x412e848000000000L    # 1000000.0

    div-double v16, v16, v18

    mul-double v8, v16, v2

    .line 74
    .local v8, "dlon":D
    mul-double v16, v6, v6

    mul-double v18, v8, v8

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide v18, 0x40fb188000000000L    # 110984.0

    mul-double v4, v16, v18

    .line 75
    .local v4, "d":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    return v16
.end method

.method public final getElev()D
    .locals 4

    .prologue
    .line 44
    iget-short v0, p0, Lbtools/router/OsmPathElement;->selev:S

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getILat()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lbtools/router/OsmPathElement;->ilat:I

    return v0
.end method

.method public final getILon()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lbtools/router/OsmPathElement;->ilon:I

    return v0
.end method

.method public final getIdFromPos()J
    .locals 4

    .prologue
    .line 62
    iget v0, p0, Lbtools/router/OsmPathElement;->ilon:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lbtools/router/OsmPathElement;->ilat:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSElev()S
    .locals 1

    .prologue
    .line 39
    iget-short v0, p0, Lbtools/router/OsmPathElement;->selev:S

    return v0
.end method

.method public final getTime()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    iget v0, v0, Lbtools/router/MessageData;->time:F

    goto :goto_0
.end method

.method public final setTime(F)V
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    iput p1, v0, Lbtools/router/MessageData;->time:F

    .line 58
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lbtools/router/OsmPathElement;->ilon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/OsmPathElement;->ilat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToStream(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lbtools/router/OsmPathElement;->ilat:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 116
    iget v0, p0, Lbtools/router/OsmPathElement;->ilon:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 117
    iget-short v0, p0, Lbtools/router/OsmPathElement;->selev:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 118
    iget v0, p0, Lbtools/router/OsmPathElement;->cost:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 119
    return-void
.end method
