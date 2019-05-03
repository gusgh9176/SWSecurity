.class public final Lbtools/router/RoutingContext;
.super Ljava/lang/Object;
.source "RoutingContext.java"


# instance fields
.field public additionalcostfactor:D

.field public alternativeIdx:I

.field public bikeMode:Z

.field public buffertime:D

.field public carMode:Z

.field public changetime:D

.field public considerTurnRestrictions:Z

.field private cosangle:D

.field private coslat:D

.field public cost1speed:D

.field public countTraffic:Z

.field public downhillcostdiv:I

.field public downhillcutoff:I

.field public elevationbufferreduce:I

.field public elevationmaxbuffer:I

.field public elevationpenaltybuffer:I

.field public expctxNode:Lbtools/expressions/BExpressionContextNode;

.field public expctxWay:Lbtools/expressions/BExpressionContextWay;

.field public farTrafficDecayLength:D

.field public farTrafficWeight:D

.field public firstPrePath:Lbtools/router/OsmPrePath;

.field public forceSecondaryData:Z

.field public geometryDecoder:Lbtools/mapaccess/GeometryDecoder;

.field public ilatshortest:I

.field public ilonshortest:I

.field public inittimeadjustment:D

.field public inverseDirection:Z

.field public inverseRouting:Z

.field public isEndpoint:Z

.field private keepnogopoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field public localFunction:Ljava/lang/String;

.field public memoryclass:I

.field public nearTrafficDecayLength:D

.field public nearTrafficWeight:D

.field public nogomatch:Z

.field public nogopoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field public pass1coefficient:D

.field public pass2coefficient:D

.field public pm:Lbtools/router/OsmPathModel;

.field public processUnusedTags:Z

.field public profileTimestamp:J

.field public rawTrackPath:Ljava/lang/String;

.field public shortestmatch:Z

.field public showspeed:Z

.field public startDirection:Ljava/lang/Integer;

.field public startDirectionValid:Z

.field public starttimeoffset:D

.field public trafficDirectionFactor:D

.field public trafficOutputStream:Ljava/io/DataOutput;

.field public trafficSourceExponent:D

.field public trafficSourceMinDist:D

.field public transitonly:Z

.field public turnInstructionCatchingRange:D

.field public turnInstructionMode:I

.field public turnInstructionRoundabouts:Z

.field public uphillcostdiv:I

.field public uphillcutoff:I

.field public waittimeadjustment:D

.field public wayfraction:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lbtools/router/RoutingContext;->alternativeIdx:I

    .line 47
    new-instance v0, Lbtools/mapaccess/GeometryDecoder;

    invoke-direct {v0}, Lbtools/mapaccess/GeometryDecoder;-><init>()V

    iput-object v0, p0, Lbtools/router/RoutingContext;->geometryDecoder:Lbtools/mapaccess/GeometryDecoder;

    .line 49
    const/16 v0, 0x40

    iput v0, p0, Lbtools/router/RoutingContext;->memoryclass:I

    .line 154
    iput-object v2, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    .line 155
    iput-object v2, p0, Lbtools/router/RoutingContext;->keepnogopoints:Ljava/util/List;

    .line 162
    iput-boolean v1, p0, Lbtools/router/RoutingContext;->nogomatch:Z

    .line 163
    iput-boolean v1, p0, Lbtools/router/RoutingContext;->isEndpoint:Z

    .line 165
    iput-boolean v1, p0, Lbtools/router/RoutingContext;->shortestmatch:Z

    return-void
.end method

.method private static asin(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 401
    mul-double v0, p0, p0

    .line 402
    .local v0, "x2":D
    mul-double v2, v0, v0

    .line 403
    .local v2, "x4":D
    const-wide v4, 0x404cba19652bd3c3L    # 57.4539

    const-wide v6, 0x402326bb98c7e282L    # 9.57565

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    const-wide v6, 0x40113c74fb549f95L    # 4.30904

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    const-wide v6, 0x400484ef88b97785L    # 2.56491

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method public static prepareNogoPoints(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "nogos":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    const/4 v10, 0x4

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmNodeNamed;

    .line 195
    .local v2, "nogo":Lbtools/router/OsmNodeNamed;
    iget-object v3, v2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 196
    .local v3, "s":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 197
    .local v0, "idx":I
    if-lez v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_0
    const/16 v1, 0x14

    .line 199
    .local v1, "ir":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_1

    .line 201
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :cond_1
    :goto_1
    int-to-double v6, v1

    const-wide v8, 0x40fb188000000000L    # 110984.0

    div-double/2addr v6, v8

    iput-wide v6, v2, Lbtools/router/OsmNodeNamed;->radius:D

    goto :goto_0

    .line 206
    .end local v0    # "idx":I
    .end local v1    # "ir":I
    .end local v2    # "nogo":Lbtools/router/OsmNodeNamed;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-void

    .line 202
    .restart local v0    # "idx":I
    .restart local v1    # "ir":I
    .restart local v2    # "nogo":Lbtools/router/OsmNodeNamed;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private setModel(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Lbtools/router/StdModel;

    invoke-direct {v2}, Lbtools/router/StdModel;-><init>()V

    iput-object v2, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    .line 94
    :goto_0
    iget-object v2, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    iget-object v3, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    iget-object v4, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    invoke-virtual {v2, v3, v4}, Lbtools/router/OsmPathModel;->init(Lbtools/expressions/BExpressionContextWay;Lbtools/expressions/BExpressionContextNode;)V

    .line 95
    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmPathModel;

    iput-object v2, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create path-model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public calcAngle(IIIIII)D
    .locals 26
    .param p1, "lon0"    # I
    .param p2, "lat0"    # I
    .param p3, "lon1"    # I
    .param p4, "lat1"    # I
    .param p5, "lon2"    # I
    .param p6, "lat2"    # I

    .prologue
    .line 364
    sub-int v20, p4, p2

    move/from16 v0, v20

    int-to-double v8, v0

    .line 365
    .local v8, "dlat1":D
    sub-int v20, p3, p1

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->coslat:D

    move-wide/from16 v22, v0

    mul-double v12, v20, v22

    .line 366
    .local v12, "dlon1":D
    sub-int v20, p6, p4

    move/from16 v0, v20

    int-to-double v10, v0

    .line 367
    .local v10, "dlat2":D
    sub-int v20, p5, p3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->coslat:D

    move-wide/from16 v22, v0

    mul-double v14, v20, v22

    .line 369
    .local v14, "dlon2":D
    mul-double v20, v8, v8

    mul-double v22, v12, v12

    add-double v20, v20, v22

    mul-double v22, v10, v10

    mul-double v24, v14, v14

    add-double v22, v22, v24

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 370
    .local v6, "dd":D
    const-wide/16 v20, 0x0

    cmpl-double v20, v6, v20

    if-nez v20, :cond_1

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->cosangle:D

    const-wide/16 v16, 0x0

    .line 396
    :cond_0
    :goto_0
    return-wide v16

    .line 371
    :cond_1
    mul-double v20, v8, v14

    mul-double v22, v12, v10

    sub-double v20, v20, v22

    div-double v18, v20, v6

    .line 372
    .local v18, "sinp":D
    mul-double v20, v8, v10

    mul-double v22, v12, v14

    add-double v20, v20, v22

    div-double v4, v20, v6

    .line 373
    .local v4, "cosp":D
    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/router/RoutingContext;->cosangle:D

    .line 376
    const-wide v20, -0x40195f6fd21ff2e5L    # -0.7071

    cmpl-double v20, v18, v20

    if-lez v20, :cond_3

    const-wide v20, 0x3fe6a0902de00d1bL    # 0.7071

    cmpg-double v20, v18, v20

    if-gez v20, :cond_3

    .line 378
    invoke-static/range {v18 .. v19}, Lbtools/router/RoutingContext;->asin(D)D

    move-result-wide v16

    .line 379
    .local v16, "p":D
    const-wide/16 v20, 0x0

    cmpg-double v20, v4, v20

    if-gez v20, :cond_2

    .line 381
    const-wide v20, 0x4066800000000000L    # 180.0

    sub-double v16, v20, v16

    .line 392
    :cond_2
    :goto_1
    const-wide v20, 0x4066800000000000L    # 180.0

    cmpl-double v20, v16, v20

    if-lez v20, :cond_0

    .line 394
    const-wide v20, 0x4076800000000000L    # 360.0

    sub-double v16, v16, v20

    goto :goto_0

    .line 386
    .end local v16    # "p":D
    :cond_3
    const-wide v20, 0x4056800000000000L    # 90.0

    invoke-static {v4, v5}, Lbtools/router/RoutingContext;->asin(D)D

    move-result-wide v22

    sub-double v16, v20, v22

    .line 387
    .restart local v16    # "p":D
    const-wide/16 v20, 0x0

    cmpg-double v20, v18, v20

    if-gez v20, :cond_2

    .line 389
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    goto :goto_1
.end method

.method public calcDistance(IIII)I
    .locals 48
    .param p1, "lon1"    # I
    .param p2, "lat1"    # I
    .param p3, "lon2"    # I
    .param p4, "lat2"    # I

    .prologue
    .line 260
    const v44, 0x55d4a80

    sub-int v44, p4, v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3e4a80b931cd513cL    # 1.234134E-8

    mul-double v14, v44, v46

    .line 261
    .local v14, "l":D
    mul-double v16, v14, v14

    .line 262
    .local v16, "l2":D
    mul-double v18, v16, v16

    .line 263
    .local v18, "l4":D
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    sub-double v44, v44, v16

    const-wide/high16 v46, 0x4018000000000000L    # 6.0

    div-double v46, v18, v46

    add-double v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->coslat:D

    .line 264
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->coslat:D

    move-wide/from16 v44, v0

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v4, v44, v46

    .line 266
    .local v4, "coslat6":D
    sub-int v44, p3, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v10, v44, v4

    .line 267
    .local v10, "dx":D
    sub-int v44, p4, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v12, v44, v46

    .line 268
    .local v12, "dy":D
    mul-double v44, v12, v12

    mul-double v46, v10, v10

    add-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 270
    .local v6, "d":D
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingContext;->shortestmatch:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    move-object/from16 v44, v0

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_9

    const-wide/16 v44, 0x0

    cmpl-double v44, v6, v44

    if-lez v44, :cond_9

    .line 274
    const/16 v20, 0x0

    .local v20, "ngidx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lbtools/router/OsmNodeNamed;

    .line 277
    .local v21, "nogo":Lbtools/router/OsmNodeNamed;
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v44, v0

    sub-int v44, p1, v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v32, v44, v4

    .line 278
    .local v32, "x1":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v44, v0

    sub-int v44, p2, v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v38, v44, v46

    .line 279
    .local v38, "y1":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v44, v0

    sub-int v44, p3, v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v34, v44, v4

    .line 280
    .local v34, "x2":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v44, v0

    sub-int v44, p4, v44

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v40, v44, v46

    .line 281
    .local v40, "y2":D
    mul-double v44, v32, v32

    mul-double v46, v38, v38

    add-double v22, v44, v46

    .line 282
    .local v22, "r12":D
    mul-double v44, v34, v34

    mul-double v46, v40, v40

    add-double v24, v44, v46

    .line 283
    .local v24, "r22":D
    cmpg-double v44, v22, v24

    if-gez v44, :cond_2

    mul-double v44, v38, v10

    mul-double v46, v32, v12

    sub-double v44, v44, v46

    :goto_1
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    div-double v26, v44, v6

    .line 285
    .local v26, "radius":D
    move-object/from16 v0, v21

    iget-wide v0, v0, Lbtools/router/OsmNodeNamed;->radius:D

    move-wide/from16 v44, v0

    cmpg-double v44, v26, v44

    if-gez v44, :cond_1

    .line 287
    mul-double v44, v32, v10

    mul-double v46, v38, v12

    add-double v28, v44, v46

    .line 288
    .local v28, "s1":D
    mul-double v44, v34, v10

    mul-double v46, v40, v12

    add-double v30, v44, v46

    .line 291
    .local v30, "s2":D
    const-wide/16 v44, 0x0

    cmpg-double v44, v28, v44

    if-gez v44, :cond_0

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .line 292
    :cond_0
    const-wide/16 v44, 0x0

    cmpl-double v44, v30, v44

    if-lez v44, :cond_4

    .line 294
    cmpg-double v44, v28, v30

    if-gez v44, :cond_3

    .end local v22    # "r12":D
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 295
    move-object/from16 v0, v21

    iget-wide v0, v0, Lbtools/router/OsmNodeNamed;->radius:D

    move-wide/from16 v44, v0

    cmpl-double v44, v26, v44

    if-lez v44, :cond_4

    .line 274
    .end local v28    # "s1":D
    .end local v30    # "s2":D
    :cond_1
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 283
    .end local v26    # "radius":D
    .restart local v22    # "r12":D
    :cond_2
    mul-double v44, v40, v10

    mul-double v46, v34, v12

    sub-double v44, v44, v46

    goto :goto_1

    .restart local v26    # "radius":D
    .restart local v28    # "s1":D
    .restart local v30    # "s2":D
    :cond_3
    move-wide/from16 v22, v24

    .line 294
    goto :goto_2

    .line 297
    .end local v22    # "r12":D
    :cond_4
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lbtools/router/OsmNodeNamed;->isNogo:Z

    move/from16 v44, v0

    if-eqz v44, :cond_5

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingContext;->nogomatch:Z

    goto :goto_3

    .line 300
    :cond_5
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingContext;->shortestmatch:Z

    .line 301
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lbtools/router/OsmNodeNamed;->radius:D

    .line 303
    const-wide/16 v44, 0x0

    cmpg-double v44, v30, v44

    if-gez v44, :cond_6

    .line 305
    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v44, v0

    mul-double v46, v6, v6

    div-double v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->wayfraction:D

    .line 306
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v10

    sub-double v36, v34, v44

    .line 307
    .local v36, "xm":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v12

    sub-double v42, v40, v44

    .line 308
    .local v42, "ym":D
    div-double v44, v36, v4

    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    add-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilonshortest:I

    .line 309
    const-wide v44, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    div-double v44, v42, v44

    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    add-double v44, v44, v46

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilatshortest:I

    .line 328
    .end local v36    # "xm":D
    .end local v42    # "ym":D
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->isEndpoint:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8

    .line 330
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v46, v0

    sub-double v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->wayfraction:D

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move/from16 p3, v0

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    move/from16 p4, v0

    .line 340
    :goto_5
    sub-int v44, p3, p1

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v10, v44, v4

    .line 341
    sub-int v44, p4, p2

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v12, v44, v46

    .line 342
    mul-double v44, v12, v12

    mul-double v46, v10, v10

    add-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    goto/16 :goto_3

    .line 311
    :cond_6
    cmpl-double v44, v28, v30

    if-lez v44, :cond_7

    .line 313
    const-wide/16 v44, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->wayfraction:D

    .line 314
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilonshortest:I

    .line 315
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilatshortest:I

    goto :goto_4

    .line 319
    :cond_7
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingContext;->wayfraction:D

    .line 320
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilonshortest:I

    .line 321
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/RoutingContext;->ilatshortest:I

    goto :goto_4

    .line 336
    :cond_8
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingContext;->nogomatch:Z

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move/from16 p1, v0

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    move/from16 p2, v0

    goto :goto_5

    .line 347
    .end local v20    # "ngidx":I
    .end local v21    # "nogo":Lbtools/router/OsmNodeNamed;
    .end local v24    # "r22":D
    .end local v26    # "radius":D
    .end local v28    # "s1":D
    .end local v30    # "s2":D
    .end local v32    # "x1":D
    .end local v34    # "x2":D
    .end local v38    # "y1":D
    .end local v40    # "y2":D
    :cond_9
    const-wide v44, 0x40fb188000000000L    # 110984.0

    mul-double v8, v6, v44

    .line 348
    .local v8, "dd":D
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    add-double v44, v44, v8

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    return v44
.end method

.method public cleanNogolist(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "waypoints":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    iget-object v5, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    if-nez v5, :cond_0

    .line 227
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, "nogos":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    iget-object v5, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmNodeNamed;

    .line 214
    .local v1, "nogo":Lbtools/router/OsmNodeNamed;
    iget-wide v6, v1, Lbtools/router/OsmNodeNamed;->radius:D

    const-wide v8, 0x40fb516000000000L    # 111894.0

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 215
    .local v3, "radiusInMeter":I
    const/4 v0, 0x1

    .line 216
    .local v0, "goodGuy":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmNodeNamed;

    .line 218
    .local v4, "wp":Lbtools/router/OsmNodeNamed;
    invoke-virtual {v4, v1}, Lbtools/router/OsmNodeNamed;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v7

    if-ge v7, v3, :cond_2

    .line 220
    const/4 v0, 0x0

    .line 224
    .end local v4    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    .end local v0    # "goodGuy":Z
    .end local v1    # "nogo":Lbtools/router/OsmNodeNamed;
    .end local v3    # "radiusInMeter":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x0

    .end local v2    # "nogos":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    :cond_5
    iput-object v2, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    goto :goto_0
.end method

.method public createPath(Lbtools/mapaccess/OsmLink;)Lbtools/router/OsmPath;
    .locals 2
    .param p1, "link"    # Lbtools/mapaccess/OsmLink;

    .prologue
    .line 420
    iget-object v1, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    invoke-virtual {v1}, Lbtools/router/OsmPathModel;->createPath()Lbtools/router/OsmPath;

    move-result-object v0

    .line 421
    .local v0, "p":Lbtools/router/OsmPath;
    invoke-virtual {v0, p1}, Lbtools/router/OsmPath;->init(Lbtools/mapaccess/OsmLink;)V

    .line 422
    return-object v0
.end method

.method public createPath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmPath;
    .locals 6
    .param p1, "origin"    # Lbtools/router/OsmPath;
    .param p2, "link"    # Lbtools/mapaccess/OsmLink;
    .param p3, "refTrack"    # Lbtools/router/OsmTrack;
    .param p4, "detailMode"    # Z

    .prologue
    .line 427
    iget-object v1, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    invoke-virtual {v1}, Lbtools/router/OsmPathModel;->createPath()Lbtools/router/OsmPath;

    move-result-object v0

    .local v0, "p":Lbtools/router/OsmPath;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    .line 428
    invoke-virtual/range {v0 .. v5}, Lbtools/router/OsmPath;->init(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;ZLbtools/router/RoutingContext;)V

    .line 429
    return-object v0
.end method

.method public createPrePath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;)Lbtools/router/OsmPrePath;
    .locals 2
    .param p1, "origin"    # Lbtools/router/OsmPath;
    .param p2, "link"    # Lbtools/mapaccess/OsmLink;

    .prologue
    .line 410
    iget-object v1, p0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    invoke-virtual {v1}, Lbtools/router/OsmPathModel;->createPrePath()Lbtools/router/OsmPrePath;

    move-result-object v0

    .line 411
    .local v0, "p":Lbtools/router/OsmPrePath;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1, p2, p0}, Lbtools/router/OsmPrePath;->init(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/RoutingContext;)V

    .line 415
    :cond_0
    return-object v0
.end method

.method public getAlternativeIdx(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 27
    iget v0, p0, Lbtools/router/RoutingContext;->alternativeIdx:I

    if-ge v0, p1, :cond_0

    .end local p1    # "min":I
    :goto_0
    return p1

    .restart local p1    # "min":I
    :cond_0
    iget v0, p0, Lbtools/router/RoutingContext;->alternativeIdx:I

    if-le v0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    iget p1, p0, Lbtools/router/RoutingContext;->alternativeIdx:I

    goto :goto_0
.end method

.method public getCosAngle()D
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lbtools/router/RoutingContext;->cosangle:D

    return-wide v0
.end method

.method public getCosLat()D
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lbtools/router/RoutingContext;->coslat:D

    return-wide v0
.end method

.method public getNogoChecksums()[J
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 231
    const/4 v5, 0x3

    new-array v0, v5, [J

    .line 232
    .local v0, "cs":[J
    iget-object v5, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    if-nez v5, :cond_0

    move v2, v4

    .line 233
    .local v2, "n":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 235
    iget-object v5, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/OsmNodeNamed;

    .line 236
    .local v3, "nogo":Lbtools/router/OsmNodeNamed;
    aget-wide v6, v0, v4

    iget v5, v3, Lbtools/router/OsmNodeNamed;->ilon:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v0, v4

    .line 237
    const/4 v5, 0x1

    aget-wide v6, v0, v5

    iget v8, v3, Lbtools/router/OsmNodeNamed;->ilat:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 238
    const/4 v5, 0x2

    aget-wide v6, v0, v5

    iget-wide v8, v3, Lbtools/router/OsmNodeNamed;->radius:D

    const-wide v10, 0x40fb516000000000L    # 111894.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "nogo":Lbtools/router/OsmNodeNamed;
    :cond_0
    iget-object v5, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 240
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v1, "unknown"

    .line 38
    .local v1, "name":Ljava/lang/String;
    :goto_0
    const-string v2, ".brf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 40
    .local v0, "idx":I
    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_1
    return-object v1

    .line 37
    .end local v0    # "idx":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    goto :goto_0
.end method

.method public readGlobalConfig()V
    .locals 10

    .prologue
    const v9, 0x3f666666    # 0.9f

    const v8, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 99
    iget-object v0, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 101
    .local v0, "expctxGlobal":Lbtools/expressions/BExpressionContext;
    iget-object v2, v0, Lbtools/expressions/BExpressionContext;->_modelClass:Ljava/lang/String;

    invoke-direct {p0, v2}, Lbtools/router/RoutingContext;->setModel(Ljava/lang/String;)V

    .line 103
    const-string v2, "downhillcost"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    .line 104
    const-string v2, "downhillcutoff"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->downhillcutoff:I

    .line 105
    const-string v2, "uphillcost"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    .line 106
    const-string v2, "uphillcutoff"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->uphillcutoff:I

    .line 107
    iget v2, p0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    if-eqz v2, :cond_0

    const v2, 0xf4240

    iget v6, p0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    div-int/2addr v2, v6

    iput v2, p0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    .line 108
    :cond_0
    iget v2, p0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    if-eqz v2, :cond_1

    const v2, 0xf4240

    iget v6, p0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    div-int/2addr v2, v6

    iput v2, p0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    .line 109
    :cond_1
    const-string v2, "validForCars"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->carMode:Z

    .line 110
    const-string v2, "validForBikes"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->bikeMode:Z

    .line 113
    const-string v6, "considerTurnRestrictions"

    iget-boolean v2, p0, Lbtools/router/RoutingContext;->carMode:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v6, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->considerTurnRestrictions:Z

    .line 116
    const-string v2, "processUnusedTags"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->processUnusedTags:Z

    .line 118
    const-string v2, "forceSecondaryData"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->forceSecondaryData:Z

    .line 119
    const-string v2, "pass1coefficient"

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->pass1coefficient:D

    .line 120
    const-string v2, "pass2coefficient"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->pass2coefficient:D

    .line 121
    const-string v2, "elevationpenaltybuffer"

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    .line 122
    const-string v2, "elevationmaxbuffer"

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->elevationmaxbuffer:I

    .line 123
    const-string v2, "elevationbufferreduce"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Lbtools/router/RoutingContext;->elevationbufferreduce:I

    .line 125
    const-string v2, "cost1speed"

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->cost1speed:D

    .line 126
    const-string v2, "additionalcostfactor"

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->additionalcostfactor:D

    .line 127
    const-string v2, "changetime"

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->changetime:D

    .line 128
    const-string v2, "buffertime"

    const/high16 v6, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->buffertime:D

    .line 129
    const-string v2, "waittimeadjustment"

    invoke-virtual {v0, v2, v9}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->waittimeadjustment:D

    .line 130
    const-string v2, "inittimeadjustment"

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->inittimeadjustment:D

    .line 131
    const-string v2, "starttimeoffset"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->starttimeoffset:D

    .line 132
    const-string v2, "transitonly"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->transitonly:Z

    .line 134
    const-string v2, "farTrafficWeight"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->farTrafficWeight:D

    .line 135
    const-string v2, "nearTrafficWeight"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->nearTrafficWeight:D

    .line 136
    const-string v2, "farTrafficDecayLength"

    const v6, 0x46ea6000    # 30000.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->farTrafficDecayLength:D

    .line 137
    const-string v2, "nearTrafficDecayLength"

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->nearTrafficDecayLength:D

    .line 138
    const-string v2, "trafficDirectionFactor"

    invoke-virtual {v0, v2, v9}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->trafficDirectionFactor:D

    .line 139
    const-string v2, "trafficSourceExponent"

    const v6, -0x40cccccd    # -0.7f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->trafficSourceExponent:D

    .line 140
    const-string v2, "trafficSourceMinDist"

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->trafficSourceMinDist:D

    .line 142
    const-string v2, "showspeed"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->showspeed:Z

    .line 143
    const-string v2, "inverseRouting"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lbtools/router/RoutingContext;->inverseRouting:Z

    .line 145
    const-string v2, "turnInstructionMode"

    invoke-virtual {v0, v2, v5}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-int v1, v2

    .line 146
    .local v1, "tiMode":I
    if-eq v1, v3, :cond_2

    .line 148
    iput v1, p0, Lbtools/router/RoutingContext;->turnInstructionMode:I

    .line 150
    :cond_2
    const-string v2, "turnInstructionCatchingRange"

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v6, v2

    iput-wide v6, p0, Lbtools/router/RoutingContext;->turnInstructionCatchingRange:D

    .line 151
    const-string v2, "turnInstructionRoundabouts"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v6}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_c

    :goto_9
    iput-boolean v3, p0, Lbtools/router/RoutingContext;->turnInstructionRoundabouts:Z

    .line 152
    return-void

    .end local v1    # "tiMode":I
    :cond_3
    move v2, v4

    .line 109
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 110
    goto/16 :goto_1

    :cond_5
    move v2, v5

    .line 113
    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 116
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 118
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 132
    goto/16 :goto_6

    :cond_a
    move v2, v4

    .line 142
    goto :goto_7

    :cond_b
    move v2, v4

    .line 143
    goto :goto_8

    .restart local v1    # "tiMode":I
    :cond_c
    move v3, v4

    .line 151
    goto :goto_9
.end method

.method public setAlternativeIdx(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 23
    iput p1, p0, Lbtools/router/RoutingContext;->alternativeIdx:I

    .line 24
    return-void
.end method

.method public setWaypoint(Lbtools/router/OsmNodeNamed;Z)V
    .locals 2
    .param p1, "wp"    # Lbtools/router/OsmNodeNamed;
    .param p2, "endpoint"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    iput-object v0, p0, Lbtools/router/RoutingContext;->keepnogopoints:Ljava/util/List;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    .line 247
    iget-object v0, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lbtools/router/RoutingContext;->keepnogopoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    iget-object v1, p0, Lbtools/router/RoutingContext;->keepnogopoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_0
    iput-boolean p2, p0, Lbtools/router/RoutingContext;->isEndpoint:Z

    .line 250
    return-void
.end method

.method public unsetWaypoint()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lbtools/router/RoutingContext;->keepnogopoints:Ljava/util/List;

    iput-object v0, p0, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/router/RoutingContext;->isEndpoint:Z

    .line 256
    return-void
.end method
