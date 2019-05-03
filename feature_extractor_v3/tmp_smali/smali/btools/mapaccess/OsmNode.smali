.class public Lbtools/mapaccess/OsmNode;
.super Lbtools/mapaccess/OsmLink;
.source "OsmNode.java"

# interfaces
.implements Lbtools/mapaccess/OsmPos;


# instance fields
.field public firstRestriction:Lbtools/mapaccess/TurnRestriction;

.field public firstlink:Lbtools/mapaccess/OsmLink;

.field public ilat:I

.field public ilon:I

.field public nodeDescription:[B

.field public selev:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lbtools/mapaccess/OsmLink;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lbtools/mapaccess/OsmLink;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 49
    iput p1, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 50
    iput p2, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Lbtools/mapaccess/OsmLink;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 55
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 56
    const-wide/16 v0, -0x1

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 57
    return-void
.end method

.method private addLink(Lbtools/mapaccess/OsmLink;ZLbtools/mapaccess/OsmNode;)V
    .locals 1
    .param p1, "link"    # Lbtools/mapaccess/OsmLink;
    .param p2, "isReverse"    # Z
    .param p3, "tn"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 85
    iput-object p3, p1, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    .line 86
    iput-object p0, p1, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    .line 87
    iget-object v0, p3, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    iput-object v0, p1, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    .line 88
    iget-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    iput-object v0, p1, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    .line 89
    iput-object p1, p3, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 90
    iput-object p1, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p0, p1, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    .line 95
    iput-object p3, p1, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    .line 96
    iget-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    iput-object v0, p1, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    .line 97
    iget-object v0, p3, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    iput-object v0, p1, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    .line 98
    iput-object p1, p3, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 99
    iput-object p1, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    goto :goto_0
.end method


# virtual methods
.method public final calcDistance(Lbtools/mapaccess/OsmPos;)I
    .locals 20
    .param p1, "p"    # Lbtools/mapaccess/OsmPos;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v16, v0

    const v17, 0x55d4a80

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3e4a80b931cd513cL    # 1.234134E-8

    mul-double v10, v16, v18

    .line 106
    .local v10, "l":D
    mul-double v12, v10, v10

    .line 107
    .local v12, "l2":D
    mul-double v14, v12, v12

    .line 108
    .local v14, "l4":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v12

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v18, v14, v18

    add-double v2, v16, v18

    .line 110
    .local v2, "coslat":D
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lbtools/mapaccess/OsmPos;->getILat()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x412e848000000000L    # 1000000.0

    div-double v6, v16, v18

    .line 111
    .local v6, "dlat":D
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

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

    .line 112
    .local v8, "dlon":D
    mul-double v16, v6, v6

    mul-double v18, v8, v8

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide v18, 0x40fb188000000000L    # 110984.0

    mul-double v4, v16, v18

    .line 113
    .local v4, "d":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    return v16
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 273
    instance-of v2, p1, Lbtools/mapaccess/OsmNode;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Lbtools/mapaccess/OsmNode;

    .line 276
    .local v0, "n":Lbtools/mapaccess/OsmNode;
    iget v2, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v3, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    iget v3, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 278
    .end local v0    # "n":Lbtools/mapaccess/OsmNode;
    :cond_0
    return v1
.end method

.method public final getElev()D
    .locals 4

    .prologue
    .line 78
    iget-short v0, p0, Lbtools/mapaccess/OsmNode;->selev:S

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getILat()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    return v0
.end method

.method public final getILon()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    return v0
.end method

.method public final getIdFromPos()J
    .locals 4

    .prologue
    .line 230
    iget v0, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSElev()S
    .locals 1

    .prologue
    .line 73
    iget-short v0, p0, Lbtools/mapaccess/OsmNode;->selev:S

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v1, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isHollow()Z
    .locals 2

    .prologue
    .line 220
    iget-short v0, p0, Lbtools/mapaccess/OsmNode;->selev:S

    const/16 v1, -0x3039

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parseNodeBody(Lbtools/codec/MicroCache;Lbtools/mapaccess/OsmNodesMap;Lbtools/util/IByteArrayUnifier;)V
    .locals 3
    .param p1, "mc"    # Lbtools/codec/MicroCache;
    .param p2, "hollowNodes"    # Lbtools/mapaccess/OsmNodesMap;
    .param p3, "expCtxWay"    # Lbtools/util/IByteArrayUnifier;

    .prologue
    .line 123
    instance-of v0, p1, Lbtools/codec/MicroCache2;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lbtools/codec/MicroCache2;

    .end local p1    # "mc":Lbtools/codec/MicroCache;
    invoke-virtual {p0, p1, p2, p3}, Lbtools/mapaccess/OsmNode;->parseNodeBody2(Lbtools/codec/MicroCache2;Lbtools/mapaccess/OsmNodesMap;Lbtools/util/IByteArrayUnifier;)V

    .line 129
    return-void

    .line 128
    .restart local p1    # "mc":Lbtools/codec/MicroCache;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown cache version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parseNodeBody2(Lbtools/codec/MicroCache2;Lbtools/mapaccess/OsmNodesMap;Lbtools/util/IByteArrayUnifier;)V
    .locals 21
    .param p1, "mc"    # Lbtools/codec/MicroCache2;
    .param p2, "hollowNodes"    # Lbtools/mapaccess/OsmNodesMap;
    .param p3, "expCtxWay"    # Lbtools/util/IByteArrayUnifier;

    .prologue
    .line 133
    invoke-virtual/range {p2 .. p2}, Lbtools/mapaccess/OsmNodesMap;->getByteArrayUnifier()Lbtools/util/ByteArrayUnifier;

    move-result-object v3

    .line 136
    .local v3, "abUnifier":Lbtools/util/ByteArrayUnifier;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readBoolean()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 138
    new-instance v18, Lbtools/mapaccess/TurnRestriction;

    invoke-direct/range {v18 .. v18}, Lbtools/mapaccess/TurnRestriction;-><init>()V

    .line 139
    .local v18, "tr":Lbtools/mapaccess/TurnRestriction;
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readShort()S

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Lbtools/mapaccess/TurnRestriction;->exceptions:S

    .line 140
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readBoolean()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lbtools/mapaccess/TurnRestriction;->isPositive:Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lbtools/mapaccess/TurnRestriction;->fromLon:I

    .line 142
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lbtools/mapaccess/TurnRestriction;->fromLat:I

    .line 143
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lbtools/mapaccess/TurnRestriction;->toLon:I

    .line 144
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lbtools/mapaccess/TurnRestriction;->toLat:I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/mapaccess/OsmNode;->firstRestriction:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lbtools/mapaccess/TurnRestriction;->next:Lbtools/mapaccess/TurnRestriction;

    .line 146
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/mapaccess/OsmNode;->firstRestriction:Lbtools/mapaccess/TurnRestriction;

    goto :goto_0

    .line 149
    .end local v18    # "tr":Lbtools/mapaccess/TurnRestriction;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readShort()S

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-short v0, v1, Lbtools/mapaccess/OsmNode;->selev:S

    .line 150
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readVarLengthUnsigned()I

    move-result v14

    .line 151
    .local v14, "nodeDescSize":I
    if-nez v14, :cond_8

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 155
    .local v11, "link0":Lbtools/mapaccess/OsmLink;
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->hasMoreData()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 158
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->getEndPointer()I

    move-result v6

    .line 159
    .local v6, "endPointer":I
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readVarLengthSigned()I

    move-result v20

    add-int v13, v19, v20

    .line 160
    .local v13, "linklon":I
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readVarLengthSigned()I

    move-result v20

    add-int v12, v19, v20

    .line 161
    .local v12, "linklat":I
    invoke-virtual/range {p1 .. p1}, Lbtools/codec/MicroCache2;->readVarLengthUnsigned()I

    move-result v15

    .line 162
    .local v15, "sizecode":I
    and-int/lit8 v19, v15, 0x1

    if-eqz v19, :cond_9

    const/4 v8, 0x1

    .line 163
    .local v8, "isReverse":Z
    :goto_3
    const/4 v5, 0x0

    .line 164
    .local v5, "description":[B
    shr-int/lit8 v4, v15, 0x1

    .line 165
    .local v4, "descSize":I
    if-lez v4, :cond_2

    .line 167
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lbtools/codec/MicroCache2;->readUnified(ILbtools/util/IByteArrayUnifier;)[B

    move-result-object v5

    .line 169
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lbtools/codec/MicroCache2;->readDataUntil(I)[B

    move-result-object v7

    .line 171
    .local v7, "geometry":[B
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v12, v0, :cond_1

    .line 176
    :cond_3
    const/16 v17, 0x0

    .line 177
    .local v17, "tn":Lbtools/mapaccess/OsmNode;
    const/4 v10, 0x0

    .line 180
    .local v10, "link":Lbtools/mapaccess/OsmLink;
    move-object v9, v11

    .local v9, "l":Lbtools/mapaccess/OsmLink;
    :goto_4
    if-eqz v9, :cond_5

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v16

    .line 183
    .local v16, "t":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, v16

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v13, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v12, :cond_a

    .line 185
    move-object/from16 v17, v16

    .line 186
    if-nez v8, :cond_4

    iget-object v0, v9, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lbtools/mapaccess/OsmLink;->isReverse(Lbtools/mapaccess/OsmNode;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 188
    :cond_4
    move-object v10, v9

    .line 193
    .end local v16    # "t":Lbtools/mapaccess/OsmNode;
    :cond_5
    if-nez v17, :cond_6

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12}, Lbtools/mapaccess/OsmNodesMap;->get(II)Lbtools/mapaccess/OsmNode;

    move-result-object v17

    .line 196
    if-nez v17, :cond_6

    .line 198
    new-instance v17, Lbtools/mapaccess/OsmNode;

    .end local v17    # "tn":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, v17

    invoke-direct {v0, v13, v12}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    .line 199
    .restart local v17    # "tn":Lbtools/mapaccess/OsmNode;
    invoke-virtual/range {v17 .. v17}, Lbtools/mapaccess/OsmNode;->setHollow()V

    .line 200
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmNodesMap;->put(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    .line 201
    move-object/from16 v10, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v8, v2}, Lbtools/mapaccess/OsmNode;->addLink(Lbtools/mapaccess/OsmLink;ZLbtools/mapaccess/OsmNode;)V

    .line 204
    :cond_6
    if-nez v10, :cond_7

    .line 206
    new-instance v10, Lbtools/mapaccess/OsmLink;

    .end local v10    # "link":Lbtools/mapaccess/OsmLink;
    invoke-direct {v10}, Lbtools/mapaccess/OsmLink;-><init>()V

    .restart local v10    # "link":Lbtools/mapaccess/OsmLink;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v8, v1}, Lbtools/mapaccess/OsmNode;->addLink(Lbtools/mapaccess/OsmLink;ZLbtools/mapaccess/OsmNode;)V

    .line 208
    :cond_7
    if-nez v8, :cond_1

    .line 210
    iput-object v5, v10, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    .line 211
    iput-object v7, v10, Lbtools/mapaccess/OsmLink;->geometry:[B

    goto/16 :goto_2

    .line 151
    .end local v4    # "descSize":I
    .end local v5    # "description":[B
    .end local v6    # "endPointer":I
    .end local v7    # "geometry":[B
    .end local v8    # "isReverse":Z
    .end local v9    # "l":Lbtools/mapaccess/OsmLink;
    .end local v10    # "link":Lbtools/mapaccess/OsmLink;
    .end local v11    # "link0":Lbtools/mapaccess/OsmLink;
    .end local v12    # "linklat":I
    .end local v13    # "linklon":I
    .end local v15    # "sizecode":I
    .end local v17    # "tn":Lbtools/mapaccess/OsmNode;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Lbtools/codec/MicroCache2;->readUnified(ILbtools/util/IByteArrayUnifier;)[B

    move-result-object v19

    goto/16 :goto_1

    .line 162
    .restart local v6    # "endPointer":I
    .restart local v11    # "link0":Lbtools/mapaccess/OsmLink;
    .restart local v12    # "linklat":I
    .restart local v13    # "linklon":I
    .restart local v15    # "sizecode":I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 180
    .restart local v4    # "descSize":I
    .restart local v5    # "description":[B
    .restart local v7    # "geometry":[B
    .restart local v8    # "isReverse":Z
    .restart local v9    # "l":Lbtools/mapaccess/OsmLink;
    .restart local v10    # "link":Lbtools/mapaccess/OsmLink;
    .restart local v16    # "t":Lbtools/mapaccess/OsmNode;
    .restart local v17    # "tn":Lbtools/mapaccess/OsmNode;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v9

    goto :goto_4

    .line 214
    .end local v4    # "descSize":I
    .end local v5    # "description":[B
    .end local v6    # "endPointer":I
    .end local v7    # "geometry":[B
    .end local v8    # "isReverse":Z
    .end local v9    # "l":Lbtools/mapaccess/OsmLink;
    .end local v10    # "link":Lbtools/mapaccess/OsmLink;
    .end local v12    # "linklat":I
    .end local v13    # "linklon":I
    .end local v15    # "sizecode":I
    .end local v16    # "t":Lbtools/mapaccess/OsmNode;
    .end local v17    # "tn":Lbtools/mapaccess/OsmNode;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmNodesMap;->remove(Lbtools/mapaccess/OsmNode;)V

    .line 215
    return-void
.end method

.method public final setHollow()V
    .locals 1

    .prologue
    .line 225
    const/16 v0, -0x3039

    iput-short v0, p0, Lbtools/mapaccess/OsmNode;->selev:S

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkLink(Lbtools/mapaccess/OsmLink;)V
    .locals 4
    .param p1, "link"    # Lbtools/mapaccess/OsmLink;

    .prologue
    .line 235
    invoke-virtual {p1, p0}, Lbtools/mapaccess/OsmLink;->clear(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v1

    .line 237
    .local v1, "n":Lbtools/mapaccess/OsmLink;
    iget-object v3, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    if-ne p1, v3, :cond_1

    .line 239
    iput-object v1, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .line 243
    .local v0, "l":Lbtools/mapaccess/OsmLink;
    :goto_1
    if-eqz v0, :cond_0

    .line 246
    iget-object v3, v0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eq v3, p0, :cond_3

    iget-object v3, v0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v3, :cond_3

    .line 248
    iget-object v2, v0, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    .line 249
    .local v2, "nl":Lbtools/mapaccess/OsmLink;
    if-ne v2, p1, :cond_2

    .line 251
    iput-object v1, v0, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    goto :goto_0

    .line 254
    :cond_2
    move-object v0, v2

    .line 255
    goto :goto_1

    .line 258
    .end local v2    # "nl":Lbtools/mapaccess/OsmLink;
    :cond_3
    iget-object v2, v0, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    .line 259
    .restart local v2    # "nl":Lbtools/mapaccess/OsmLink;
    if-ne v2, p1, :cond_4

    .line 261
    iput-object v1, v0, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    goto :goto_0

    .line 264
    :cond_4
    move-object v0, v2

    .line 265
    goto :goto_1
.end method
