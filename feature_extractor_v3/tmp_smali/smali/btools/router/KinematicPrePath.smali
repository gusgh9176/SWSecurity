.class final Lbtools/router/KinematicPrePath;
.super Lbtools/router/OsmPrePath;
.source "KinematicPrePath.java"


# instance fields
.field public angle:D

.field public classifiermask:I

.field public priorityclassifier:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbtools/router/OsmPrePath;-><init>()V

    return-void
.end method


# virtual methods
.method protected initPrePath(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)V
    .locals 16
    .param p1, "origin"    # Lbtools/router/OsmPath;
    .param p2, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 19
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/KinematicPrePath;->link:Lbtools/mapaccess/OsmLink;

    iget-object v9, v2, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    .line 20
    .local v9, "description":[B
    if-nez v9, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "null description for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lbtools/router/KinematicPrePath;->link:Lbtools/mapaccess/OsmLink;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Lbtools/router/OsmPath;->originLon:I

    .line 24
    .local v3, "lon0":I
    move-object/from16 v0, p1

    iget v4, v0, Lbtools/router/OsmPath;->originLat:I

    .line 26
    .local v4, "lat0":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/router/KinematicPrePath;->sourceNode:Lbtools/mapaccess/OsmNode;

    .line 27
    .local v12, "p1":Lbtools/mapaccess/OsmNode;
    invoke-virtual {v12}, Lbtools/mapaccess/OsmNode;->getILon()I

    move-result v5

    .line 28
    .local v5, "lon1":I
    invoke-virtual {v12}, Lbtools/mapaccess/OsmNode;->getILat()I

    move-result v6

    .line 30
    .local v6, "lat1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/KinematicPrePath;->link:Lbtools/mapaccess/OsmLink;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/router/KinematicPrePath;->sourceNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v2, v14}, Lbtools/mapaccess/OsmLink;->isReverse(Lbtools/mapaccess/OsmNode;)Z

    move-result v11

    .line 33
    .local v11, "isReverse":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    xor-int/2addr v14, v11

    invoke-virtual {v2, v14, v9}, Lbtools/expressions/BExpressionContextWay;->evaluate(Z[B)V

    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/KinematicPrePath;->link:Lbtools/mapaccess/OsmLink;

    iget-object v2, v2, Lbtools/mapaccess/OsmLink;->geometry:[B

    if-nez v2, :cond_1

    const/4 v13, 0x0

    .line 41
    .local v13, "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :goto_0
    if-nez v13, :cond_2

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/KinematicPrePath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v7, v2, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 44
    .local v7, "lon2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/KinematicPrePath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v8, v2, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 52
    .local v8, "lat2":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7, v8}, Lbtools/router/RoutingContext;->calcDistance(IIII)I

    move-result v10

    .local v10, "dist":I
    move-object/from16 v2, p2

    .line 54
    invoke-virtual/range {v2 .. v8}, Lbtools/router/RoutingContext;->calcAngle(IIIIII)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lbtools/router/KinematicPrePath;->angle:D

    .line 55
    move-object/from16 v0, p2

    iget-object v2, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v2}, Lbtools/expressions/BExpressionContextWay;->getPriorityClassifier()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lbtools/router/KinematicPrePath;->priorityclassifier:I

    .line 56
    move-object/from16 v0, p2

    iget-object v2, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v2}, Lbtools/expressions/BExpressionContextWay;->getClassifierMask()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lbtools/router/KinematicPrePath;->classifiermask:I

    .line 57
    return-void

    .line 35
    .end local v7    # "lon2":I
    .end local v8    # "lat2":I
    .end local v10    # "dist":I
    .end local v13    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lbtools/router/RoutingContext;->geometryDecoder:Lbtools/mapaccess/GeometryDecoder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/router/KinematicPrePath;->link:Lbtools/mapaccess/OsmLink;

    iget-object v14, v14, Lbtools/mapaccess/OsmLink;->geometry:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lbtools/router/KinematicPrePath;->targetNode:Lbtools/mapaccess/OsmNode;

    .line 36
    invoke-virtual {v2, v14, v12, v15, v11}, Lbtools/mapaccess/GeometryDecoder;->decodeGeometry([BLbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Z)Lbtools/mapaccess/OsmTransferNode;

    move-result-object v13

    goto :goto_0

    .line 48
    .restart local v13    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :cond_2
    iget v7, v13, Lbtools/mapaccess/OsmTransferNode;->ilon:I

    .line 49
    .restart local v7    # "lon2":I
    iget v8, v13, Lbtools/mapaccess/OsmTransferNode;->ilat:I

    .restart local v8    # "lat2":I
    goto :goto_1
.end method
