.class abstract Lbtools/router/OsmPath;
.super Ljava/lang/Object;
.source "OsmPath.java"

# interfaces
.implements Lbtools/mapaccess/OsmLinkHolder;


# instance fields
.field public airdistance:I

.field public cost:I

.field protected lastClassifier:F

.field protected link:Lbtools/mapaccess/OsmLink;

.field public message:Lbtools/router/MessageData;

.field public myElement:Lbtools/router/OsmPathElement;

.field private nextForLink:Lbtools/mapaccess/OsmLinkHolder;

.field public originElement:Lbtools/router/OsmPathElement;

.field public originLat:I

.field public originLon:I

.field protected priorityclassifier:I

.field public selev:S

.field protected sourceNode:Lbtools/mapaccess/OsmNode;

.field protected targetNode:Lbtools/mapaccess/OsmNode;

.field protected traffic:F

.field public treedepth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lbtools/router/OsmPath;->cost:I

    .line 27
    iput v1, p0, Lbtools/router/OsmPath;->airdistance:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/router/OsmPath;->nextForLink:Lbtools/mapaccess/OsmLinkHolder;

    .line 40
    iput v1, p0, Lbtools/router/OsmPath;->treedepth:I

    return-void
.end method


# virtual methods
.method protected addAddionalPenalty(Lbtools/router/OsmTrack;ZLbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/RoutingContext;)V
    .locals 62
    .param p1, "refTrack"    # Lbtools/router/OsmTrack;
    .param p2, "detailMode"    # Z
    .param p3, "origin"    # Lbtools/router/OsmPath;
    .param p4, "link"    # Lbtools/mapaccess/OsmLink;
    .param p5, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 113
    move-object/from16 v0, p4

    iget-object v0, v0, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    move-object/from16 v28, v0

    .line 114
    .local v28, "description":[B
    if-nez v28, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "null description for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_0
    if-nez p2, :cond_1

    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    if-eqz v4, :cond_5

    :cond_1
    const/16 v46, 0x1

    .line 118
    .local v46, "recordTransferNodes":Z
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p5

    iput-boolean v4, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    .line 121
    move-object/from16 v0, p3

    iget v5, v0, Lbtools/router/OsmPath;->originLon:I

    .line 122
    .local v5, "lon0":I
    move-object/from16 v0, p3

    iget v6, v0, Lbtools/router/OsmPath;->originLat:I

    .line 124
    .local v6, "lat0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v4}, Lbtools/mapaccess/OsmNode;->getILon()I

    move-result v7

    .line 125
    .local v7, "lon1":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v4}, Lbtools/mapaccess/OsmNode;->getILat()I

    move-result v8

    .line 126
    .local v8, "lat1":I
    move-object/from16 v0, p3

    iget-short v0, v0, Lbtools/router/OsmPath;->selev:S

    move/from16 v32, v0

    .line 128
    .local v32, "ele1":S
    const/16 v43, 0x0

    .line 130
    .local v43, "linkdisttotal":I
    if-eqz p2, :cond_6

    new-instance v4, Lbtools/router/MessageData;

    invoke-direct {v4}, Lbtools/router/MessageData;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lbtools/mapaccess/OsmLink;->isReverse(Lbtools/mapaccess/OsmNode;)Z

    move-result v41

    .line 135
    .local v41, "isReverse":Z
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v0, p5

    iget-boolean v12, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    xor-int v12, v12, v41

    move-object/from16 v0, v28

    invoke-virtual {v4, v12, v0}, Lbtools/expressions/BExpressionContextWay;->evaluate(Z[B)V

    .line 139
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getCostfactor()F

    move-result v27

    .line 140
    .local v27, "costfactor":F
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    if-nez v4, :cond_7

    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getIsTrafficBackbone()F

    move-result v4

    const/4 v12, 0x0

    cmpl-float v4, v4, v12

    if-lez v4, :cond_7

    const/16 v42, 0x1

    .line 141
    .local v42, "isTrafficBackbone":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/OsmPath;->priorityclassifier:I

    move/from16 v24, v0

    .line 142
    .local v24, "lastpriorityclassifier":I
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getPriorityClassifier()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->priorityclassifier:I

    .line 143
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getClassifierMask()F

    move-result v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 146
    .local v25, "classifiermask":I
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getInitialClassifier()F

    move-result v45

    .line 147
    .local v45, "newClassifier":F
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->lastClassifier:F

    sub-float v11, v45, v4

    .line 148
    .local v11, "classifierDiff":F
    float-to-double v12, v11

    const-wide v14, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpl-double v4, v12, v14

    if-gtz v4, :cond_2

    float-to-double v12, v11

    const-wide v14, -0x40bf9db22d0e5604L    # -5.0E-4

    cmpg-double v4, v12, v14

    if-gez v4, :cond_4

    .line 150
    :cond_2
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/OsmPath;->lastClassifier:F

    .line 151
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getInitialcost()F

    move-result v40

    .line 152
    .local v40, "initialcost":F
    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v39, v0

    .line 153
    .local v39, "iicost":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iget v12, v4, Lbtools/router/MessageData;->linkinitcost:I

    add-int v12, v12, v39

    iput v12, v4, Lbtools/router/MessageData;->linkinitcost:I

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    add-int v4, v4, v39

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    .line 160
    .end local v39    # "iicost":I
    .end local v40    # "initialcost":F
    :cond_4
    move-object/from16 v0, p4

    iget-object v4, v0, Lbtools/mapaccess/OsmLink;->geometry:[B

    if-nez v4, :cond_8

    const/16 v56, 0x0

    .line 163
    .local v56, "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :goto_3
    const/16 v23, 0x0

    .line 166
    .local v23, "nsection":I
    :goto_4
    move-object/from16 v0, p0

    iput v7, v0, Lbtools/router/OsmPath;->originLon:I

    .line 167
    move-object/from16 v0, p0

    iput v8, v0, Lbtools/router/OsmPath;->originLat:I

    .line 173
    if-nez v56, :cond_9

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v9, v4, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 176
    .local v9, "lon2":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v10, v4, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 177
    .local v10, "lat2":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-short v0, v4, Lbtools/mapaccess/OsmNode;->selev:S

    move/from16 v33, v0

    .line 187
    .local v33, "ele2":S
    :goto_5
    if-nez v23, :cond_15

    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->considerTurnRestrictions:Z

    if-eqz v4, :cond_15

    if-nez p2, :cond_15

    .line 189
    const/16 v36, 0x0

    .line 190
    .local v36, "hasAnyPositive":Z
    const/16 v38, 0x0

    .line 191
    .local v38, "hasPositive":Z
    const/16 v37, 0x0

    .line 192
    .local v37, "hasNegative":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    iget-object v0, v4, Lbtools/mapaccess/OsmNode;->firstRestriction:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v55, v0

    .line 193
    .local v55, "tr":Lbtools/mapaccess/TurnRestriction;
    :goto_6
    if-eqz v55, :cond_12

    .line 195
    invoke-virtual/range {v55 .. v55}, Lbtools/mapaccess/TurnRestriction;->exceptBikes()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->bikeMode:Z

    if-eqz v4, :cond_a

    .line 197
    move-object/from16 v0, v55

    iget-object v0, v0, Lbtools/mapaccess/TurnRestriction;->next:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v55, v0

    .line 198
    goto :goto_6

    .line 116
    .end local v5    # "lon0":I
    .end local v6    # "lat0":I
    .end local v7    # "lon1":I
    .end local v8    # "lat1":I
    .end local v9    # "lon2":I
    .end local v10    # "lat2":I
    .end local v11    # "classifierDiff":F
    .end local v23    # "nsection":I
    .end local v24    # "lastpriorityclassifier":I
    .end local v25    # "classifiermask":I
    .end local v27    # "costfactor":F
    .end local v32    # "ele1":S
    .end local v33    # "ele2":S
    .end local v36    # "hasAnyPositive":Z
    .end local v37    # "hasNegative":Z
    .end local v38    # "hasPositive":Z
    .end local v41    # "isReverse":Z
    .end local v42    # "isTrafficBackbone":Z
    .end local v43    # "linkdisttotal":I
    .end local v45    # "newClassifier":F
    .end local v46    # "recordTransferNodes":Z
    .end local v55    # "tr":Lbtools/mapaccess/TurnRestriction;
    .end local v56    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :cond_5
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v5    # "lon0":I
    .restart local v6    # "lat0":I
    .restart local v7    # "lon1":I
    .restart local v8    # "lat1":I
    .restart local v32    # "ele1":S
    .restart local v43    # "linkdisttotal":I
    .restart local v46    # "recordTransferNodes":Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 140
    .restart local v27    # "costfactor":F
    .restart local v41    # "isReverse":Z
    :cond_7
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 160
    .restart local v11    # "classifierDiff":F
    .restart local v24    # "lastpriorityclassifier":I
    .restart local v25    # "classifiermask":I
    .restart local v42    # "isTrafficBackbone":Z
    .restart local v45    # "newClassifier":F
    :cond_8
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->geometryDecoder:Lbtools/mapaccess/GeometryDecoder;

    move-object/from16 v0, p4

    iget-object v12, v0, Lbtools/mapaccess/OsmLink;->geometry:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    .line 161
    move/from16 v0, v41

    invoke-virtual {v4, v12, v13, v14, v0}, Lbtools/mapaccess/GeometryDecoder;->decodeGeometry([BLbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Z)Lbtools/mapaccess/OsmTransferNode;

    move-result-object v56

    goto :goto_3

    .line 181
    .restart local v23    # "nsection":I
    .restart local v56    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :cond_9
    move-object/from16 v0, v56

    iget v9, v0, Lbtools/mapaccess/OsmTransferNode;->ilon:I

    .line 182
    .restart local v9    # "lon2":I
    move-object/from16 v0, v56

    iget v10, v0, Lbtools/mapaccess/OsmTransferNode;->ilat:I

    .line 183
    .restart local v10    # "lat2":I
    move-object/from16 v0, v56

    iget-short v0, v0, Lbtools/mapaccess/OsmTransferNode;->selev:S

    move/from16 v33, v0

    .restart local v33    # "ele2":S
    goto :goto_5

    .line 200
    .restart local v36    # "hasAnyPositive":Z
    .restart local v37    # "hasNegative":Z
    .restart local v38    # "hasPositive":Z
    .restart local v55    # "tr":Lbtools/mapaccess/TurnRestriction;
    :cond_a
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-eqz v4, :cond_d

    move/from16 v35, v9

    .line 201
    .local v35, "fromLon":I
    :goto_7
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-eqz v4, :cond_e

    move/from16 v34, v10

    .line 202
    .local v34, "fromLat":I
    :goto_8
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-eqz v4, :cond_f

    move/from16 v54, v5

    .line 203
    .local v54, "toLon":I
    :goto_9
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-eqz v4, :cond_10

    move/from16 v51, v6

    .line 204
    .local v51, "toLat":I
    :goto_a
    move-object/from16 v0, v55

    iget v4, v0, Lbtools/mapaccess/TurnRestriction;->fromLon:I

    move/from16 v0, v35

    if-ne v4, v0, :cond_c

    move-object/from16 v0, v55

    iget v4, v0, Lbtools/mapaccess/TurnRestriction;->fromLat:I

    move/from16 v0, v34

    if-ne v4, v0, :cond_c

    .line 206
    move-object/from16 v0, v55

    iget-boolean v4, v0, Lbtools/mapaccess/TurnRestriction;->isPositive:Z

    if-eqz v4, :cond_b

    .line 208
    const/16 v36, 0x1

    .line 210
    :cond_b
    move-object/from16 v0, v55

    iget v4, v0, Lbtools/mapaccess/TurnRestriction;->toLon:I

    move/from16 v0, v54

    if-ne v4, v0, :cond_c

    move-object/from16 v0, v55

    iget v4, v0, Lbtools/mapaccess/TurnRestriction;->toLat:I

    move/from16 v0, v51

    if-ne v4, v0, :cond_c

    .line 212
    move-object/from16 v0, v55

    iget-boolean v4, v0, Lbtools/mapaccess/TurnRestriction;->isPositive:Z

    if-eqz v4, :cond_11

    .line 214
    const/16 v38, 0x1

    .line 222
    :cond_c
    :goto_b
    move-object/from16 v0, v55

    iget-object v0, v0, Lbtools/mapaccess/TurnRestriction;->next:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v55, v0

    .line 223
    goto/16 :goto_6

    .end local v34    # "fromLat":I
    .end local v35    # "fromLon":I
    .end local v51    # "toLat":I
    .end local v54    # "toLon":I
    :cond_d
    move/from16 v35, v5

    .line 200
    goto :goto_7

    .restart local v35    # "fromLon":I
    :cond_e
    move/from16 v34, v6

    .line 201
    goto :goto_8

    .restart local v34    # "fromLat":I
    :cond_f
    move/from16 v54, v9

    .line 202
    goto :goto_9

    .restart local v54    # "toLon":I
    :cond_10
    move/from16 v51, v10

    .line 203
    goto :goto_a

    .line 218
    .restart local v51    # "toLat":I
    :cond_11
    const/16 v37, 0x1

    goto :goto_b

    .line 224
    .end local v34    # "fromLat":I
    .end local v35    # "fromLon":I
    .end local v51    # "toLat":I
    .end local v54    # "toLon":I
    :cond_12
    if-nez v38, :cond_15

    if-nez v36, :cond_13

    if-eqz v37, :cond_15

    .line 226
    :cond_13
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    .line 404
    .end local v36    # "hasAnyPositive":Z
    .end local v37    # "hasNegative":Z
    .end local v38    # "hasPositive":Z
    .end local v55    # "tr":Lbtools/mapaccess/TurnRestriction;
    :cond_14
    :goto_c
    return-void

    .line 232
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iget-object v4, v4, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iput-object v12, v4, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 235
    new-instance v4, Lbtools/router/MessageData;

    invoke-direct {v4}, Lbtools/router/MessageData;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    .line 238
    :cond_16
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8, v9, v10}, Lbtools/router/RoutingContext;->calcDistance(IIII)I

    move-result v29

    .line 240
    .local v29, "dist":I
    const/16 v50, 0x0

    .line 241
    .local v50, "stopAtEndpoint":Z
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->shortestmatch:Z

    if-eqz v4, :cond_17

    .line 243
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->isEndpoint:Z

    if-eqz v4, :cond_1e

    .line 245
    const/16 v50, 0x1

    .line 246
    move-object/from16 v0, p5

    iget-wide v12, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v12, v13}, Lbtools/router/OsmPath;->interpolateEle(SSD)S

    move-result v33

    .line 271
    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_18

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iget v12, v4, Lbtools/router/MessageData;->linkdist:I

    add-int v12, v12, v29

    iput v12, v4, Lbtools/router/MessageData;->linkdist:I

    .line 275
    :cond_18
    add-int v43, v43, v29

    .line 278
    const/4 v4, -0x1

    if-ne v5, v4, :cond_20

    const/4 v4, -0x1

    if-ne v6, v4, :cond_20

    const/16 v22, 0x1

    .line 279
    .local v22, "isStartpoint":Z
    :goto_e
    if-eqz v22, :cond_19

    .line 281
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->startDirectionValid:Z

    if-eqz v4, :cond_21

    .line 283
    move-object/from16 v0, p5

    iget-object v4, v0, Lbtools/router/RoutingContext;->startDirection:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v12, v4

    const-wide v14, 0x404ca5dc1e7967cbL    # 57.29578

    div-double v30, v12, v14

    .line 284
    .local v30, "dir":D
    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-virtual/range {p5 .. p5}, Lbtools/router/RoutingContext;->getCosLat()D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v4, v12

    sub-int v5, v7, v4

    .line 285
    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v4, v12

    sub-int v6, v8, v4

    .end local v30    # "dir":D
    :cond_19
    :goto_f
    move-object/from16 v4, p5

    .line 293
    invoke-virtual/range {v4 .. v10}, Lbtools/router/RoutingContext;->calcAngle(IIIIII)D

    move-result-wide v18

    .line 294
    .local v18, "angle":D
    invoke-virtual/range {p5 .. p5}, Lbtools/router/RoutingContext;->getCosAngle()D

    move-result-wide v20

    .line 297
    .local v20, "cosangle":D
    const-wide/16 v16, 0x0

    .line 298
    .local v16, "delta_h":D
    const/16 v4, -0x8000

    move/from16 v0, v33

    if-ne v0, v4, :cond_1a

    move/from16 v33, v32

    .line 299
    :cond_1a
    const/16 v4, -0x8000

    move/from16 v0, v32

    if-eq v0, v4, :cond_1b

    .line 301
    sub-int v4, v33, v32

    int-to-double v12, v4

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v16, v12, v14

    .line 302
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-eqz v4, :cond_1b

    .line 304
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 309
    :cond_1b
    move/from16 v0, v29

    int-to-double v14, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p5

    invoke-virtual/range {v12 .. v24}, Lbtools/router/OsmPath;->processWaySection(Lbtools/router/RoutingContext;DDDDZII)D

    move-result-wide v48

    .line 310
    .local v48, "sectionCost":D
    const-wide/16 v12, 0x0

    cmpg-double v4, v48, v12

    if-ltz v4, :cond_1d

    move/from16 v0, v27

    float-to-double v12, v0

    const-wide v14, 0x40c3870000000000L    # 9998.0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_1c

    if-eqz p2, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    int-to-double v12, v4

    add-double v12, v12, v48

    const-wide v14, 0x41ddcd6500000000L    # 2.0E9

    cmpl-double v4, v12, v14

    if-ltz v4, :cond_22

    .line 312
    :cond_1d
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    goto/16 :goto_c

    .line 251
    .end local v16    # "delta_h":D
    .end local v18    # "angle":D
    .end local v20    # "cosangle":D
    .end local v22    # "isStartpoint":Z
    .end local v48    # "sectionCost":D
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    .line 252
    invoke-virtual/range {p0 .. p0}, Lbtools/router/OsmPath;->resetState()V

    .line 253
    const/4 v5, -0x1

    .line 254
    const/4 v6, -0x1

    .line 256
    if-eqz v46, :cond_17

    .line 258
    move-object/from16 v0, p5

    iget-wide v12, v0, Lbtools/router/RoutingContext;->wayfraction:D

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_1f

    .line 260
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p5

    iget-wide v14, v0, Lbtools/router/RoutingContext;->wayfraction:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v12, v13}, Lbtools/router/OsmPath;->interpolateEle(SSD)S

    move-result v32

    .line 261
    move-object/from16 v0, p5

    iget v4, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move-object/from16 v0, p5

    iget v12, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    const/4 v13, 0x0

    move-object/from16 v0, p5

    iget-boolean v14, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v0, v32

    invoke-static {v4, v12, v0, v13, v14}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    goto/16 :goto_d

    .line 265
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    goto/16 :goto_d

    .line 278
    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_e

    .line 289
    .restart local v22    # "isStartpoint":Z
    :cond_21
    sub-int v4, v9, v7

    sub-int v5, v7, v4

    .line 290
    sub-int v4, v10, v8

    sub-int v6, v8, v4

    goto/16 :goto_f

    .line 316
    .restart local v16    # "delta_h":D
    .restart local v18    # "angle":D
    .restart local v20    # "cosangle":D
    .restart local v48    # "sectionCost":D
    :cond_22
    if-eqz v42, :cond_23

    .line 318
    const-wide/16 v48, 0x0

    .line 321
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    move-wide/from16 v0, v48

    double-to-int v12, v0

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    .line 324
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    if-eqz v4, :cond_24

    .line 326
    move-object/from16 v0, p5

    iget-wide v12, v0, Lbtools/router/RoutingContext;->trafficSourceMinDist:D

    double-to-int v0, v12

    move/from16 v44, v0

    .line 327
    .local v44, "minDist":I
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    move/from16 v0, v44

    if-ge v4, v0, :cond_27

    move/from16 v26, v44

    .line 328
    .local v26, "cost2":I
    :goto_10
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->traffic:F

    float-to-double v12, v4

    move/from16 v0, v29

    int-to-float v4, v0

    move-object/from16 v0, p5

    iget-object v14, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v14}, Lbtools/expressions/BExpressionContextWay;->getTrafficSourceDensity()F

    move-result v14

    mul-float/2addr v4, v14

    float-to-double v14, v4

    move/from16 v0, v26

    int-to-float v4, v0

    const v57, 0x461c4000    # 10000.0f

    div-float v4, v4, v57

    float-to-double v0, v4

    move-wide/from16 v58, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->trafficSourceExponent:D

    move-wide/from16 v60, v0

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v58

    mul-double v14, v14, v58

    add-double/2addr v12, v14

    double-to-float v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->traffic:F

    .line 331
    .end local v26    # "cost2":I
    .end local v44    # "minDist":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_25

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    move-wide/from16 v0, v18

    double-to-float v12, v0

    iput v12, v4, Lbtools/router/MessageData;->turnangle:F

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    invoke-virtual/range {p0 .. p0}, Lbtools/router/OsmPath;->getTotalTime()D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v4, Lbtools/router/MessageData;->time:F

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    invoke-virtual/range {p0 .. p0}, Lbtools/router/OsmPath;->getTotalEnergy()D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v4, Lbtools/router/MessageData;->energy:F

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    move-object/from16 v0, p0

    iget v12, v0, Lbtools/router/OsmPath;->priorityclassifier:I

    iput v12, v4, Lbtools/router/MessageData;->priorityclassifier:I

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    move/from16 v0, v25

    iput v0, v4, Lbtools/router/MessageData;->classifiermask:I

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iput v9, v4, Lbtools/router/MessageData;->lon:I

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iput v10, v4, Lbtools/router/MessageData;->lat:I

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    move/from16 v0, v33

    iput-short v0, v4, Lbtools/router/MessageData;->ele:S

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    move-object/from16 v0, p5

    iget-object v12, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lbtools/expressions/BExpressionContextWay;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    .line 344
    :cond_25
    if-eqz v50, :cond_28

    .line 346
    if-eqz v46, :cond_26

    .line 348
    move-object/from16 v0, p5

    iget v4, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move-object/from16 v0, p5

    iget v12, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p5

    iget-boolean v14, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v0, v33

    invoke-static {v4, v12, v0, v13, v14}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v12, v0, Lbtools/router/OsmPath;->cost:I

    iput v12, v4, Lbtools/router/OsmPathElement;->cost:I

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_26

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/router/OsmPath;->message:Lbtools/router/MessageData;

    iput-object v12, v4, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 355
    :cond_26
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    if-eqz v4, :cond_14

    .line 357
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    goto/16 :goto_c

    .line 327
    .restart local v44    # "minDist":I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/OsmPath;->cost:I

    move/from16 v26, v0

    goto/16 :goto_10

    .line 362
    .end local v44    # "minDist":I
    :cond_28
    if-nez v56, :cond_2a

    .line 365
    if-eqz p1, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lbtools/router/OsmTrack;->containsNode(Lbtools/mapaccess/OsmPos;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lbtools/router/OsmTrack;->containsNode(Lbtools/mapaccess/OsmPos;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 367
    move/from16 v47, v43

    .line 368
    .local v47, "reftrackcost":I
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    add-int v4, v4, v47

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    .line 370
    .end local v47    # "reftrackcost":I
    :cond_29
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-short v0, v1, Lbtools/router/OsmPath;->selev:S

    .line 390
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    if-eqz v4, :cond_2c

    .line 392
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    goto/16 :goto_c

    .line 373
    :cond_2a
    move-object/from16 v0, v56

    iget-object v0, v0, Lbtools/mapaccess/OsmTransferNode;->next:Lbtools/mapaccess/OsmTransferNode;

    move-object/from16 v56, v0

    .line 375
    if-eqz v46, :cond_2b

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p5

    iget-boolean v12, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v0, v33

    invoke-static {v9, v10, v0, v4, v12}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v12, v0, Lbtools/router/OsmPath;->cost:I

    iput v12, v4, Lbtools/router/OsmPathElement;->cost:I

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v12, v0, Lbtools/router/OsmPath;->traffic:F

    invoke-virtual {v4, v12}, Lbtools/router/OsmPathElement;->addTraffic(F)V

    .line 380
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->traffic:F

    .line 382
    :cond_2b
    move v5, v7

    .line 383
    move v6, v8

    .line 384
    move v7, v9

    .line 385
    move v8, v10

    .line 386
    move/from16 v32, v33

    .line 163
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 397
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lbtools/router/OsmPath;->processTargetNode(Lbtools/router/RoutingContext;)D

    move-result-wide v52

    .line 398
    .local v52, "targetCost":D
    const-wide/16 v12, 0x0

    cmpg-double v4, v52, v12

    if-ltz v4, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    int-to-double v12, v4

    add-double v12, v12, v52

    const-wide v14, 0x41ddcd6500000000L    # 2.0E9

    cmpl-double v4, v12, v14

    if-ltz v4, :cond_2e

    .line 400
    :cond_2d
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    goto/16 :goto_c

    .line 403
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/OsmPath;->cost:I

    move-wide/from16 v0, v52

    double-to-int v12, v0

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/OsmPath;->cost:I

    goto/16 :goto_c
.end method

.method public abstract definitlyWorseThan(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)Z
.end method

.method public abstract elevationCorrection(Lbtools/router/RoutingContext;)I
.end method

.method public getLink()Lbtools/mapaccess/OsmLink;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lbtools/router/OsmPath;->link:Lbtools/mapaccess/OsmLink;

    return-object v0
.end method

.method public getNextForLink()Lbtools/mapaccess/OsmLinkHolder;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lbtools/router/OsmPath;->nextForLink:Lbtools/mapaccess/OsmLinkHolder;

    return-object v0
.end method

.method public getSourceNode()Lbtools/mapaccess/OsmNode;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    return-object v0
.end method

.method public getTargetNode()Lbtools/mapaccess/OsmNode;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    return-object v0
.end method

.method public getTotalEnergy()D
    .locals 2

    .prologue
    .line 457
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalTime()D
    .locals 2

    .prologue
    .line 452
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Lbtools/mapaccess/OsmLink;)V
    .locals 2
    .param p1, "link"    # Lbtools/mapaccess/OsmLink;

    .prologue
    const/4 v1, -0x1

    .line 82
    iput-object p1, p0, Lbtools/router/OsmPath;->link:Lbtools/mapaccess/OsmLink;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v0

    iput-object v0, p0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    .line 84
    iget-object v0, p0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v0}, Lbtools/mapaccess/OsmNode;->getSElev()S

    move-result v0

    iput-short v0, p0, Lbtools/router/OsmPath;->selev:S

    .line 86
    iput v1, p0, Lbtools/router/OsmPath;->originLon:I

    .line 87
    iput v1, p0, Lbtools/router/OsmPath;->originLat:I

    .line 88
    return-void
.end method

.method protected abstract init(Lbtools/router/OsmPath;)V
.end method

.method public init(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;ZLbtools/router/RoutingContext;)V
    .locals 6
    .param p1, "origin"    # Lbtools/router/OsmPath;
    .param p2, "link"    # Lbtools/mapaccess/OsmLink;
    .param p3, "refTrack"    # Lbtools/router/OsmTrack;
    .param p4, "detailMode"    # Z
    .param p5, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 92
    iget-object v0, p1, Lbtools/router/OsmPath;->myElement:Lbtools/router/OsmPathElement;

    if-nez v0, :cond_0

    .line 94
    iget-boolean v0, p5, Lbtools/router/RoutingContext;->countTraffic:Z

    invoke-static {p1, v0}, Lbtools/router/OsmPathElement;->create(Lbtools/router/OsmPath;Z)Lbtools/router/OsmPathElement;

    move-result-object v0

    iput-object v0, p1, Lbtools/router/OsmPath;->myElement:Lbtools/router/OsmPathElement;

    .line 96
    :cond_0
    iget-object v0, p1, Lbtools/router/OsmPath;->myElement:Lbtools/router/OsmPathElement;

    iput-object v0, p0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 97
    iput-object p2, p0, Lbtools/router/OsmPath;->link:Lbtools/mapaccess/OsmLink;

    .line 98
    iget-object v0, p1, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iput-object v0, p0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    .line 99
    iget-object v0, p0, Lbtools/router/OsmPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {p2, v0}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v0

    iput-object v0, p0, Lbtools/router/OsmPath;->targetNode:Lbtools/mapaccess/OsmNode;

    .line 100
    iget v0, p1, Lbtools/router/OsmPath;->cost:I

    iput v0, p0, Lbtools/router/OsmPath;->cost:I

    .line 101
    iget v0, p1, Lbtools/router/OsmPath;->lastClassifier:F

    iput v0, p0, Lbtools/router/OsmPath;->lastClassifier:F

    .line 102
    invoke-virtual {p0, p1}, Lbtools/router/OsmPath;->init(Lbtools/router/OsmPath;)V

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    .line 103
    invoke-virtual/range {v0 .. v5}, Lbtools/router/OsmPath;->addAddionalPenalty(Lbtools/router/OsmTrack;ZLbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/RoutingContext;)V

    .line 104
    return-void
.end method

.method public interpolateEle(SSD)S
    .locals 5
    .param p1, "e1"    # S
    .param p2, "e2"    # S
    .param p3, "fraction"    # D

    .prologue
    const/16 v0, -0x8000

    .line 409
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    mul-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method protected abstract processTargetNode(Lbtools/router/RoutingContext;)D
.end method

.method protected abstract processWaySection(Lbtools/router/RoutingContext;DDDDZII)D
.end method

.method public registerUpTree()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    instance-of v1, v1, Lbtools/router/OsmPathElementWithTraffic;

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    check-cast v0, Lbtools/router/OsmPathElementWithTraffic;

    .line 75
    .local v0, "ot":Lbtools/router/OsmPathElementWithTraffic;
    invoke-virtual {v0}, Lbtools/router/OsmPathElementWithTraffic;->register()V

    .line 76
    iget v1, p0, Lbtools/router/OsmPath;->traffic:F

    invoke-virtual {v0, v1}, Lbtools/router/OsmPathElementWithTraffic;->addTraffic(F)V

    .line 78
    .end local v0    # "ot":Lbtools/router/OsmPathElementWithTraffic;
    :cond_0
    return-void
.end method

.method protected abstract resetState()V
.end method

.method public setNextForLink(Lbtools/mapaccess/OsmLinkHolder;)V
    .locals 0
    .param p1, "holder"    # Lbtools/mapaccess/OsmLinkHolder;

    .prologue
    .line 442
    iput-object p1, p0, Lbtools/router/OsmPath;->nextForLink:Lbtools/mapaccess/OsmLinkHolder;

    .line 443
    return-void
.end method

.method public unregisterUpTree(Lbtools/router/RoutingContext;)V
    .locals 4
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 58
    :try_start_0
    iget-object v2, p0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 59
    .local v2, "pe":Lbtools/router/OsmPathElement;
    :goto_0
    instance-of v3, v2, Lbtools/router/OsmPathElementWithTraffic;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lbtools/router/OsmPathElementWithTraffic;

    move-object v3, v0

    invoke-virtual {v3, p1}, Lbtools/router/OsmPathElementWithTraffic;->unregister(Lbtools/router/RoutingContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v2, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "pe":Lbtools/router/OsmPathElement;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "pe":Lbtools/router/OsmPathElement;
    :cond_0
    return-void
.end method
