.class final Lbtools/router/StdPath;
.super Lbtools/router/OsmPath;
.source "StdPath.java"


# instance fields
.field private ehbd:I

.field private ehbu:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lbtools/router/OsmPath;-><init>()V

    return-void
.end method


# virtual methods
.method public definitlyWorseThan(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)Z
    .locals 5
    .param p1, "path"    # Lbtools/router/OsmPath;
    .param p2, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 579
    move-object v2, p1

    check-cast v2, Lbtools/router/StdPath;

    .line 581
    .local v2, "p":Lbtools/router/StdPath;
    iget v0, v2, Lbtools/router/StdPath;->cost:I

    .line 582
    .local v0, "c":I
    iget v3, p2, Lbtools/router/RoutingContext;->downhillcostdiv:I

    if-lez v3, :cond_0

    .line 584
    iget v3, v2, Lbtools/router/StdPath;->ehbd:I

    iget v4, p0, Lbtools/router/StdPath;->ehbd:I

    sub-int v1, v3, v4

    .line 585
    .local v1, "delta":I
    if-lez v1, :cond_0

    iget v3, p2, Lbtools/router/RoutingContext;->downhillcostdiv:I

    div-int v3, v1, v3

    add-int/2addr v0, v3

    .line 587
    .end local v1    # "delta":I
    :cond_0
    iget v3, p2, Lbtools/router/RoutingContext;->uphillcostdiv:I

    if-lez v3, :cond_1

    .line 589
    iget v3, v2, Lbtools/router/StdPath;->ehbu:I

    iget v4, p0, Lbtools/router/StdPath;->ehbu:I

    sub-int v1, v3, v4

    .line 590
    .restart local v1    # "delta":I
    if-lez v1, :cond_1

    iget v3, p2, Lbtools/router/RoutingContext;->uphillcostdiv:I

    div-int v3, v1, v3

    add-int/2addr v0, v3

    .line 593
    .end local v1    # "delta":I
    :cond_1
    iget v3, p0, Lbtools/router/StdPath;->cost:I

    if-le v3, v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public elevationCorrection(Lbtools/router/RoutingContext;)I
    .locals 3
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    const/4 v1, 0x0

    .line 572
    iget v0, p1, Lbtools/router/RoutingContext;->downhillcostdiv:I

    if-lez v0, :cond_1

    iget v0, p0, Lbtools/router/StdPath;->ehbd:I

    iget v2, p1, Lbtools/router/RoutingContext;->downhillcostdiv:I

    div-int/2addr v0, v2

    :goto_0
    iget v2, p1, Lbtools/router/RoutingContext;->uphillcostdiv:I

    if-lez v2, :cond_0

    iget v1, p0, Lbtools/router/StdPath;->ehbu:I

    iget v2, p1, Lbtools/router/RoutingContext;->uphillcostdiv:I

    div-int/2addr v1, v2

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public init(Lbtools/router/OsmPath;)V
    .locals 2
    .param p1, "orig"    # Lbtools/router/OsmPath;

    .prologue
    .line 24
    move-object v0, p1

    check-cast v0, Lbtools/router/StdPath;

    .line 25
    .local v0, "origin":Lbtools/router/StdPath;
    iget v1, v0, Lbtools/router/StdPath;->ehbd:I

    iput v1, p0, Lbtools/router/StdPath;->ehbd:I

    .line 26
    iget v1, v0, Lbtools/router/StdPath;->ehbu:I

    iput v1, p0, Lbtools/router/StdPath;->ehbu:I

    .line 27
    return-void
.end method

.method protected processTargetNode(Lbtools/router/RoutingContext;)D
    .locals 6
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    const-wide/16 v2, 0x0

    .line 150
    iget-object v4, p0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v4, v4, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p1, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getNodeAccessGranted()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 153
    .local v1, "nodeAccessGranted":Z
    :goto_0
    iget-object v2, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iget-object v3, p0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v3, v3, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    invoke-virtual {v2, v1, v3}, Lbtools/expressions/BExpressionContextNode;->evaluate(Z[B)V

    .line 154
    iget-object v2, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    invoke-virtual {v2}, Lbtools/expressions/BExpressionContextNode;->getInitialcost()F

    move-result v0

    .line 155
    .local v0, "initialcost":F
    float-to-double v2, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 157
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 166
    .end local v0    # "initialcost":F
    .end local v1    # "nodeAccessGranted":Z
    :cond_0
    :goto_1
    return-wide v2

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    .restart local v0    # "initialcost":F
    .restart local v1    # "nodeAccessGranted":Z
    :cond_2
    iget-object v2, p0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    iget v3, v2, Lbtools/router/MessageData;->linknodecost:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Lbtools/router/MessageData;->linknodecost:I

    .line 162
    iget-object v2, p0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    iget-object v3, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iget-object v4, p0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v4, v4, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    invoke-virtual {v3, v1, v4}, Lbtools/expressions/BExpressionContextNode;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    .line 164
    :cond_3
    float-to-double v2, v0

    goto :goto_1
.end method

.method protected processWaySection(Lbtools/router/RoutingContext;DDDDZII)D
    .locals 22
    .param p1, "rc"    # Lbtools/router/RoutingContext;
    .param p2, "distance"    # D
    .param p4, "delta_h"    # D
    .param p6, "angle"    # D
    .param p8, "cosangle"    # D
    .param p10, "isStartpoint"    # Z
    .param p11, "nsection"    # I
    .param p12, "lastpriorityclassifier"    # I

    .prologue
    .line 40
    move-object/from16 v0, p1

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lbtools/expressions/BExpressionContextWay;->getTurncost()F

    move-result v15

    .line 41
    .local v15, "turncostbase":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lbtools/expressions/BExpressionContextWay;->getUphillCostfactor()F

    move-result v4

    .line 42
    .local v4, "cfup":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lbtools/expressions/BExpressionContextWay;->getDownhillCostfactor()F

    move-result v3

    .line 43
    .local v3, "cfdown":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lbtools/expressions/BExpressionContextWay;->getCostfactor()F

    move-result v2

    .line 44
    .local v2, "cf":F
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-nez v17, :cond_0

    move v4, v2

    .line 45
    :cond_0
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-nez v17, :cond_1

    move v3, v2

    .line 47
    :cond_1
    move-wide/from16 v0, p2

    double-to-int v7, v0

    .line 50
    .local v7, "dist":I
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, p8

    float-to-double v0, v15

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide v20, 0x3fc999999999999aL    # 0.2

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v14, v0

    .line 51
    .local v14, "turncost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lbtools/router/MessageData;->linkturncost:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lbtools/router/MessageData;->linkturncost:I

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    move-wide/from16 v0, p6

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lbtools/router/MessageData;->turnangle:F

    .line 57
    :cond_2
    int-to-double v12, v14

    .line 63
    .local v12, "sectionCost":D
    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, p4

    move-wide/from16 v0, v18

    double-to-int v6, v0

    .line 64
    .local v6, "delta_h_micros":I
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    neg-int v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->downhillcutoff:I

    move/from16 v19, v0

    mul-int v19, v19, v7

    sub-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbd:I

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->uphillcutoff:I

    move/from16 v18, v0

    mul-int v18, v18, v7

    sub-int v18, v6, v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbu:I

    .line 67
    const/4 v8, 0x0

    .line 68
    .local v8, "downweight":F
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 70
    const/high16 v8, 0x3f800000    # 1.0f

    .line 72
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 73
    .local v10, "excess":I
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationbufferreduce:I

    move/from16 v17, v0

    mul-int v11, v7, v17

    .line 74
    .local v11, "reduce":I
    if-le v11, v10, :cond_3

    .line 76
    int-to-float v0, v10

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v8, v17, v18

    .line 77
    move v11, v10

    .line 79
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationmaxbuffer:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 80
    if-ge v11, v10, :cond_4

    .line 82
    move v11, v10

    .line 84
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbd:I

    .line 85
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 87
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    move/from16 v17, v0

    div-int v9, v11, v17

    .line 88
    .local v9, "elevationCost":I
    int-to-double v0, v9

    move-wide/from16 v18, v0

    add-double v12, v12, v18

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lbtools/router/MessageData;->linkelevationcost:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lbtools/router/MessageData;->linkelevationcost:I

    .line 100
    .end local v9    # "elevationCost":I
    .end local v10    # "excess":I
    .end local v11    # "reduce":I
    :cond_5
    :goto_0
    const/16 v16, 0x0

    .line 101
    .local v16, "upweight":F
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 103
    const/high16 v16, 0x3f800000    # 1.0f

    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 106
    .restart local v10    # "excess":I
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationbufferreduce:I

    move/from16 v17, v0

    mul-int v11, v7, v17

    .line 107
    .restart local v11    # "reduce":I
    if-le v11, v10, :cond_6

    .line 109
    int-to-float v0, v10

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 110
    move v11, v10

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->elevationmaxbuffer:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 113
    if-ge v11, v10, :cond_7

    .line 115
    move v11, v10

    .line 117
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbu:I

    .line 118
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 120
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    move/from16 v17, v0

    div-int v9, v11, v17

    .line 121
    .restart local v9    # "elevationCost":I
    int-to-double v0, v9

    move-wide/from16 v18, v0

    add-double v12, v12, v18

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lbtools/router/MessageData;->linkelevationcost:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lbtools/router/MessageData;->linkelevationcost:I

    .line 134
    .end local v9    # "elevationCost":I
    .end local v10    # "excess":I
    .end local v11    # "reduce":I
    :cond_8
    :goto_1
    mul-float v17, v4, v16

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v16

    sub-float v18, v18, v8

    mul-float v18, v18, v2

    add-float v17, v17, v18

    mul-float v18, v3, v8

    add-float v5, v17, v18

    .line 136
    .local v5, "costfactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v5, v0, Lbtools/router/MessageData;->costfactor:F

    .line 141
    :cond_9
    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v17, v17, v5

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v12, v12, v18

    .line 143
    return-wide v12

    .line 95
    .end local v5    # "costfactor":F
    .end local v16    # "upweight":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbd:I

    move/from16 v17, v0

    if-gez v17, :cond_5

    .line 97
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbd:I

    goto/16 :goto_0

    .line 128
    .restart local v16    # "upweight":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->ehbu:I

    move/from16 v17, v0

    if-gez v17, :cond_8

    .line 130
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->ehbu:I

    goto :goto_1
.end method

.method protected resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lbtools/router/StdPath;->ehbd:I

    .line 33
    iput v0, p0, Lbtools/router/StdPath;->ehbu:I

    .line 34
    return-void
.end method

.method protected xxxaddAddionalPenalty(Lbtools/router/OsmTrack;ZLbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/RoutingContext;)V
    .locals 72
    .param p1, "refTrack"    # Lbtools/router/OsmTrack;
    .param p2, "detailMode"    # Z
    .param p3, "origin"    # Lbtools/router/OsmPath;
    .param p4, "link"    # Lbtools/mapaccess/OsmLink;
    .param p5, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 173
    move-object/from16 v0, p4

    iget-object v0, v0, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    move-object/from16 v27, v0

    .line 174
    .local v27, "description":[B
    if-nez v27, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "null description for: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_0
    if-nez p2, :cond_1

    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    if-eqz v6, :cond_c

    :cond_1
    const/16 v53, 0x1

    .line 177
    .local v53, "recordTransferNodes":Z
    :goto_0
    move/from16 v52, p2

    .line 179
    .local v52, "recordMessageData":Z
    const/4 v6, 0x0

    move-object/from16 v0, p5

    iput-boolean v6, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    .line 182
    move-object/from16 v0, p3

    iget v7, v0, Lbtools/router/OsmPath;->originLon:I

    .line 183
    .local v7, "lon0":I
    move-object/from16 v0, p3

    iget v8, v0, Lbtools/router/OsmPath;->originLat:I

    .line 185
    .local v8, "lat0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v51, v0

    .line 186
    .local v51, "p1":Lbtools/mapaccess/OsmNode;
    invoke-virtual/range {v51 .. v51}, Lbtools/mapaccess/OsmNode;->getILon()I

    move-result v9

    .line 187
    .local v9, "lon1":I
    invoke-virtual/range {v51 .. v51}, Lbtools/mapaccess/OsmNode;->getILat()I

    move-result v10

    .line 188
    .local v10, "lat1":I
    move-object/from16 v0, p3

    iget-short v0, v0, Lbtools/router/OsmPath;->selev:S

    move/from16 v32, v0

    .line 190
    .local v32, "ele1":S
    const/16 v46, 0x0

    .line 192
    .local v46, "linkdisttotal":I
    if-eqz v52, :cond_d

    new-instance v48, Lbtools/router/MessageData;

    invoke-direct/range {v48 .. v48}, Lbtools/router/MessageData;-><init>()V

    .line 194
    .local v48, "msgData":Lbtools/router/MessageData;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lbtools/mapaccess/OsmLink;->isReverse(Lbtools/mapaccess/OsmNode;)Z

    move-result v44

    .line 197
    .local v44, "isReverse":Z
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    move/from16 v63, v0

    xor-int v63, v63, v44

    move/from16 v0, v63

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lbtools/expressions/BExpressionContextWay;->evaluate(Z[B)V

    .line 200
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    if-nez v6, :cond_e

    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getIsTrafficBackbone()F

    move-result v6

    const/16 v63, 0x0

    cmpl-float v6, v6, v63

    if-lez v6, :cond_e

    const/16 v45, 0x1

    .line 201
    .local v45, "isTrafficBackbone":Z
    :goto_2
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getTurncost()F

    move-result v60

    .line 202
    .local v60, "turncostbase":F
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getUphillCostfactor()F

    move-result v18

    .line 203
    .local v18, "cfup":F
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getDownhillCostfactor()F

    move-result v17

    .line 204
    .local v17, "cfdown":F
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getCostfactor()F

    move-result v16

    .line 205
    .local v16, "cf":F
    const/4 v6, 0x0

    cmpl-float v6, v18, v6

    if-nez v6, :cond_2

    move/from16 v18, v16

    .line 206
    :cond_2
    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-nez v6, :cond_3

    move/from16 v17, v16

    .line 209
    :cond_3
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getInitialClassifier()F

    move-result v49

    .line 210
    .local v49, "newClassifier":F
    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmpl-double v6, v64, v66

    if-nez v6, :cond_4

    .line 212
    add-float v6, v18, v17

    add-float v6, v6, v16

    const/high16 v63, 0x40400000    # 3.0f

    div-float v49, v6, v63

    .line 214
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->lastClassifier:F

    sub-float v20, v49, v6

    .line 215
    .local v20, "classifierDiff":F
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpl-double v6, v64, v66

    if-gtz v6, :cond_5

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, -0x40bf9db22d0e5604L    # -5.0E-4

    cmpg-double v6, v64, v66

    if-gez v6, :cond_7

    .line 217
    :cond_5
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/router/StdPath;->lastClassifier:F

    .line 218
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getInitialcost()F

    move-result v42

    .line 219
    .local v42, "initialcost":F
    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v41, v0

    .line 220
    .local v41, "iicost":I
    if-eqz v52, :cond_6

    .line 222
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linkinitcost:I

    add-int v6, v6, v41

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linkinitcost:I

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v41

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 227
    .end local v41    # "iicost":I
    .end local v42    # "initialcost":F
    :cond_7
    move-object/from16 v0, p4

    iget-object v6, v0, Lbtools/mapaccess/OsmLink;->geometry:[B

    if-nez v6, :cond_f

    const/16 v59, 0x0

    .line 230
    .local v59, "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :goto_3
    const/16 v43, 0x1

    .line 234
    .local v43, "isFirstSection":Z
    :goto_4
    move-object/from16 v0, p0

    iput v9, v0, Lbtools/router/StdPath;->originLon:I

    .line 235
    move-object/from16 v0, p0

    iput v10, v0, Lbtools/router/StdPath;->originLat:I

    .line 241
    if-nez v59, :cond_10

    .line 243
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v11, v6, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 244
    .local v11, "lon2":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget v12, v6, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 245
    .local v12, "lat2":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-short v0, v6, Lbtools/mapaccess/OsmNode;->selev:S

    move/from16 v33, v0

    .line 255
    .local v33, "ele2":S
    :goto_5
    const/16 v19, 0x0

    .line 256
    .local v19, "checkTRs":Z
    if-eqz v43, :cond_8

    .line 258
    const/16 v43, 0x0

    .line 263
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->considerTurnRestrictions:Z

    if-eqz v6, :cond_11

    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-nez v6, :cond_11

    if-nez p2, :cond_11

    const/16 v19, 0x1

    .line 266
    :cond_8
    :goto_6
    if-eqz v19, :cond_17

    .line 268
    const/16 v38, 0x0

    .line 269
    .local v38, "hasAnyPositive":Z
    const/16 v40, 0x0

    .line 270
    .local v40, "hasPositive":Z
    const/16 v39, 0x0

    .line 271
    .local v39, "hasNegative":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    iget-object v0, v6, Lbtools/mapaccess/OsmNode;->firstRestriction:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v57, v0

    .line 272
    .local v57, "tr":Lbtools/mapaccess/TurnRestriction;
    :goto_7
    if-eqz v57, :cond_14

    .line 274
    invoke-virtual/range {v57 .. v57}, Lbtools/mapaccess/TurnRestriction;->exceptBikes()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->bikeMode:Z

    if-nez v6, :cond_12

    :cond_9
    const/16 v58, 0x1

    .line 275
    .local v58, "trValid":Z
    :goto_8
    if-eqz v58, :cond_b

    move-object/from16 v0, v57

    iget v6, v0, Lbtools/mapaccess/TurnRestriction;->fromLon:I

    if-ne v6, v7, :cond_b

    move-object/from16 v0, v57

    iget v6, v0, Lbtools/mapaccess/TurnRestriction;->fromLat:I

    if-ne v6, v8, :cond_b

    .line 277
    move-object/from16 v0, v57

    iget-boolean v6, v0, Lbtools/mapaccess/TurnRestriction;->isPositive:Z

    if-eqz v6, :cond_a

    .line 279
    const/16 v38, 0x1

    .line 281
    :cond_a
    move-object/from16 v0, v57

    iget v6, v0, Lbtools/mapaccess/TurnRestriction;->toLon:I

    if-ne v6, v11, :cond_b

    move-object/from16 v0, v57

    iget v6, v0, Lbtools/mapaccess/TurnRestriction;->toLat:I

    if-ne v6, v12, :cond_b

    .line 283
    move-object/from16 v0, v57

    iget-boolean v6, v0, Lbtools/mapaccess/TurnRestriction;->isPositive:Z

    if-eqz v6, :cond_13

    .line 285
    const/16 v40, 0x1

    .line 293
    :cond_b
    :goto_9
    move-object/from16 v0, v57

    iget-object v0, v0, Lbtools/mapaccess/TurnRestriction;->next:Lbtools/mapaccess/TurnRestriction;

    move-object/from16 v57, v0

    .line 294
    goto :goto_7

    .line 176
    .end local v7    # "lon0":I
    .end local v8    # "lat0":I
    .end local v9    # "lon1":I
    .end local v10    # "lat1":I
    .end local v11    # "lon2":I
    .end local v12    # "lat2":I
    .end local v16    # "cf":F
    .end local v17    # "cfdown":F
    .end local v18    # "cfup":F
    .end local v19    # "checkTRs":Z
    .end local v20    # "classifierDiff":F
    .end local v32    # "ele1":S
    .end local v33    # "ele2":S
    .end local v38    # "hasAnyPositive":Z
    .end local v39    # "hasNegative":Z
    .end local v40    # "hasPositive":Z
    .end local v43    # "isFirstSection":Z
    .end local v44    # "isReverse":Z
    .end local v45    # "isTrafficBackbone":Z
    .end local v46    # "linkdisttotal":I
    .end local v48    # "msgData":Lbtools/router/MessageData;
    .end local v49    # "newClassifier":F
    .end local v51    # "p1":Lbtools/mapaccess/OsmNode;
    .end local v52    # "recordMessageData":Z
    .end local v53    # "recordTransferNodes":Z
    .end local v57    # "tr":Lbtools/mapaccess/TurnRestriction;
    .end local v58    # "trValid":Z
    .end local v59    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    .end local v60    # "turncostbase":F
    :cond_c
    const/16 v53, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v7    # "lon0":I
    .restart local v8    # "lat0":I
    .restart local v9    # "lon1":I
    .restart local v10    # "lat1":I
    .restart local v32    # "ele1":S
    .restart local v46    # "linkdisttotal":I
    .restart local v51    # "p1":Lbtools/mapaccess/OsmNode;
    .restart local v52    # "recordMessageData":Z
    .restart local v53    # "recordTransferNodes":Z
    :cond_d
    const/16 v48, 0x0

    goto/16 :goto_1

    .line 200
    .restart local v44    # "isReverse":Z
    .restart local v48    # "msgData":Lbtools/router/MessageData;
    :cond_e
    const/16 v45, 0x0

    goto/16 :goto_2

    .line 227
    .restart local v16    # "cf":F
    .restart local v17    # "cfdown":F
    .restart local v18    # "cfup":F
    .restart local v20    # "classifierDiff":F
    .restart local v45    # "isTrafficBackbone":Z
    .restart local v49    # "newClassifier":F
    .restart local v60    # "turncostbase":F
    :cond_f
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->geometryDecoder:Lbtools/mapaccess/GeometryDecoder;

    move-object/from16 v0, p4

    iget-object v0, v0, Lbtools/mapaccess/OsmLink;->geometry:[B

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v64, v0

    .line 228
    move-object/from16 v0, v63

    move-object/from16 v1, v51

    move-object/from16 v2, v64

    move/from16 v3, v44

    invoke-virtual {v6, v0, v1, v2, v3}, Lbtools/mapaccess/GeometryDecoder;->decodeGeometry([BLbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Z)Lbtools/mapaccess/OsmTransferNode;

    move-result-object v59

    goto/16 :goto_3

    .line 249
    .restart local v43    # "isFirstSection":Z
    .restart local v59    # "transferNode":Lbtools/mapaccess/OsmTransferNode;
    :cond_10
    move-object/from16 v0, v59

    iget v11, v0, Lbtools/mapaccess/OsmTransferNode;->ilon:I

    .line 250
    .restart local v11    # "lon2":I
    move-object/from16 v0, v59

    iget v12, v0, Lbtools/mapaccess/OsmTransferNode;->ilat:I

    .line 251
    .restart local v12    # "lat2":I
    move-object/from16 v0, v59

    iget-short v0, v0, Lbtools/mapaccess/OsmTransferNode;->selev:S

    move/from16 v33, v0

    .restart local v33    # "ele2":S
    goto/16 :goto_5

    .line 263
    .restart local v19    # "checkTRs":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 274
    .restart local v38    # "hasAnyPositive":Z
    .restart local v39    # "hasNegative":Z
    .restart local v40    # "hasPositive":Z
    .restart local v57    # "tr":Lbtools/mapaccess/TurnRestriction;
    :cond_12
    const/16 v58, 0x0

    goto :goto_8

    .line 289
    .restart local v58    # "trValid":Z
    :cond_13
    const/16 v39, 0x1

    goto :goto_9

    .line 295
    .end local v58    # "trValid":Z
    :cond_14
    if-nez v40, :cond_17

    if-nez v38, :cond_15

    if-eqz v39, :cond_17

    .line 297
    :cond_15
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 567
    .end local v38    # "hasAnyPositive":Z
    .end local v39    # "hasNegative":Z
    .end local v40    # "hasPositive":Z
    .end local v57    # "tr":Lbtools/mapaccess/TurnRestriction;
    :cond_16
    :goto_a
    return-void

    .line 303
    :cond_17
    if-eqz v52, :cond_18

    move-object/from16 v0, v48

    iget-object v6, v0, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    if-eqz v6, :cond_18

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, v48

    iput-object v0, v6, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 306
    new-instance v48, Lbtools/router/MessageData;

    .end local v48    # "msgData":Lbtools/router/MessageData;
    invoke-direct/range {v48 .. v48}, Lbtools/router/MessageData;-><init>()V

    .line 309
    .restart local v48    # "msgData":Lbtools/router/MessageData;
    :cond_18
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11, v12}, Lbtools/router/RoutingContext;->calcDistance(IIII)I

    move-result v30

    .line 310
    .local v30, "dist":I
    const/16 v56, 0x0

    .line 311
    .local v56, "stopAtEndpoint":Z
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->shortestmatch:Z

    if-eqz v6, :cond_19

    .line 313
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->isEndpoint:Z

    if-eqz v6, :cond_28

    .line 315
    const/16 v56, 0x1

    .line 316
    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move-wide/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtools/router/StdPath;->interpolateEle(SSD)S

    move-result v33

    .line 342
    :cond_19
    :goto_b
    if-eqz v52, :cond_1a

    .line 344
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linkdist:I

    add-int v6, v6, v30

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linkdist:I

    .line 346
    :cond_1a
    add-int v46, v46, v30

    .line 349
    const/4 v6, -0x1

    if-ne v7, v6, :cond_1b

    const/4 v6, -0x1

    if-ne v8, v6, :cond_1b

    .line 351
    const v6, 0x55d4a80

    sub-int v6, v10, v6

    int-to-double v0, v6

    move-wide/from16 v64, v0

    const-wide v66, 0x3e4a80b931cd513cL    # 1.234134E-8

    mul-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 352
    .local v24, "coslat":D
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->startDirectionValid:Z

    if-eqz v6, :cond_1b

    const-wide/16 v64, 0x0

    cmpl-double v6, v24, v64

    if-lez v6, :cond_1b

    .line 354
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->startDirection:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v64, v0

    const-wide v66, 0x404ca5dc1e7967cbL    # 57.29578

    div-double v28, v64, v66

    .line 355
    .local v28, "dir":D
    const-wide v64, 0x408f400000000000L    # 1000.0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    mul-double v64, v64, v66

    div-double v64, v64, v24

    move-wide/from16 v0, v64

    double-to-int v6, v0

    sub-int v7, v9, v6

    .line 356
    const-wide v64, 0x408f400000000000L    # 1000.0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v66

    mul-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-int v6, v0

    sub-int v8, v10, v6

    .line 361
    .end local v24    # "coslat":D
    .end local v28    # "dir":D
    :cond_1b
    if-nez v45, :cond_1c

    const/4 v6, -0x1

    if-eq v7, v6, :cond_1c

    const/4 v6, -0x1

    if-eq v8, v6, :cond_1c

    move-object/from16 v6, p5

    .line 364
    invoke-virtual/range {v6 .. v12}, Lbtools/router/RoutingContext;->calcAngle(IIIIII)D

    move-result-wide v14

    .line 365
    .local v14, "angle":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p5 .. p5}, Lbtools/router/RoutingContext;->getCosAngle()D

    move-result-wide v66

    sub-double v22, v64, v66

    .line 366
    .local v22, "cos":D
    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v64, v0

    mul-double v64, v64, v22

    const-wide v66, 0x3fc999999999999aL    # 0.2

    add-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-int v13, v0

    .line 367
    .local v13, "actualturncost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int/2addr v6, v13

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 368
    if-eqz v52, :cond_1c

    .line 370
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linkturncost:I

    add-int/2addr v6, v13

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linkturncost:I

    move-object/from16 v6, p5

    .line 371
    invoke-virtual/range {v6 .. v12}, Lbtools/router/RoutingContext;->calcAngle(IIIIII)D

    move-result-wide v64

    move-wide/from16 v0, v64

    double-to-float v6, v0

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->turnangle:F

    .line 379
    .end local v13    # "actualturncost":I
    .end local v14    # "angle":D
    .end local v22    # "cos":D
    :cond_1c
    const v34, 0x3d090

    .line 380
    .local v34, "elefactor":I
    const/16 v6, -0x8000

    move/from16 v0, v33

    if-ne v0, v6, :cond_1d

    move/from16 v33, v32

    .line 381
    :cond_1d
    const/16 v6, -0x8000

    move/from16 v0, v32

    if-eq v0, v6, :cond_1e

    .line 383
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    sub-int v63, v32, v33

    mul-int v63, v63, v34

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->downhillcutoff:I

    move/from16 v64, v0

    mul-int v64, v64, v30

    sub-int v63, v63, v64

    add-int v6, v6, v63

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbd:I

    .line 384
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    sub-int v63, v33, v32

    mul-int v63, v63, v34

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->uphillcutoff:I

    move/from16 v64, v0

    mul-int v64, v64, v30

    sub-int v63, v63, v64

    add-int v6, v6, v63

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbu:I

    .line 387
    :cond_1e
    const/16 v31, 0x0

    .line 388
    .local v31, "downweight":F
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v63, v0

    move/from16 v0, v63

    if-le v6, v0, :cond_2a

    .line 390
    const/high16 v31, 0x3f800000    # 1.0f

    .line 392
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v63, v0

    sub-int v36, v6, v63

    .line 393
    .local v36, "excess":I
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->elevationbufferreduce:I

    mul-int v54, v30, v6

    .line 394
    .local v54, "reduce":I
    move/from16 v0, v54

    move/from16 v1, v36

    if-le v0, v1, :cond_1f

    .line 396
    move/from16 v0, v36

    int-to-float v6, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v31, v6, v63

    .line 397
    move/from16 v54, v36

    .line 399
    :cond_1f
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationmaxbuffer:I

    move/from16 v63, v0

    sub-int v36, v6, v63

    .line 400
    move/from16 v0, v54

    move/from16 v1, v36

    if-ge v0, v1, :cond_20

    .line 402
    move/from16 v54, v36

    .line 404
    :cond_20
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    sub-int v6, v6, v54

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbd:I

    .line 405
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    if-lez v6, :cond_21

    .line 407
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->downhillcostdiv:I

    div-int v35, v54, v6

    .line 408
    .local v35, "elevationCost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v35

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 409
    if-eqz v52, :cond_21

    .line 411
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linkelevationcost:I

    add-int v6, v6, v35

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linkelevationcost:I

    .line 420
    .end local v35    # "elevationCost":I
    .end local v36    # "excess":I
    .end local v54    # "reduce":I
    :cond_21
    :goto_c
    const/16 v61, 0x0

    .line 421
    .local v61, "upweight":F
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v63, v0

    move/from16 v0, v63

    if-le v6, v0, :cond_2b

    .line 423
    const/high16 v61, 0x3f800000    # 1.0f

    .line 425
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationpenaltybuffer:I

    move/from16 v63, v0

    sub-int v36, v6, v63

    .line 426
    .restart local v36    # "excess":I
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->elevationbufferreduce:I

    mul-int v54, v30, v6

    .line 427
    .restart local v54    # "reduce":I
    move/from16 v0, v54

    move/from16 v1, v36

    if-le v0, v1, :cond_22

    .line 429
    move/from16 v0, v36

    int-to-float v6, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v63, v0

    div-float v61, v6, v63

    .line 430
    move/from16 v54, v36

    .line 432
    :cond_22
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->elevationmaxbuffer:I

    move/from16 v63, v0

    sub-int v36, v6, v63

    .line 433
    move/from16 v0, v54

    move/from16 v1, v36

    if-ge v0, v1, :cond_23

    .line 435
    move/from16 v54, v36

    .line 437
    :cond_23
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    sub-int v6, v6, v54

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbu:I

    .line 438
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    if-lez v6, :cond_24

    .line 440
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->uphillcostdiv:I

    div-int v35, v54, v6

    .line 441
    .restart local v35    # "elevationCost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v35

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 442
    if-eqz v52, :cond_24

    .line 444
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linkelevationcost:I

    add-int v6, v6, v35

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linkelevationcost:I

    .line 454
    .end local v35    # "elevationCost":I
    .end local v36    # "excess":I
    .end local v54    # "reduce":I
    :cond_24
    :goto_d
    mul-float v6, v18, v61

    const/high16 v63, 0x3f800000    # 1.0f

    sub-float v63, v63, v61

    sub-float v63, v63, v31

    mul-float v63, v63, v16

    add-float v6, v6, v63

    mul-float v63, v17, v31

    add-float v26, v6, v63

    .line 455
    .local v26, "costfactor":F
    if-eqz v45, :cond_25

    .line 457
    const/16 v26, 0x0

    .line 460
    :cond_25
    move/from16 v0, v30

    int-to-float v6, v0

    mul-float v6, v6, v26

    const/high16 v63, 0x3f000000    # 0.5f

    add-float v37, v6, v63

    .line 461
    .local v37, "fcost":F
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x40c3870000000000L    # 9998.0

    cmpl-double v6, v64, v66

    if-lez v6, :cond_26

    if-eqz p2, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    int-to-float v6, v6

    add-float v6, v6, v37

    float-to-double v0, v6

    move-wide/from16 v64, v0

    const-wide v66, 0x41ddcd6500000000L    # 2.0E9

    cmpl-double v6, v64, v66

    if-ltz v6, :cond_2c

    .line 463
    :cond_27
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    goto/16 :goto_a

    .line 321
    .end local v26    # "costfactor":F
    .end local v31    # "downweight":F
    .end local v34    # "elefactor":I
    .end local v37    # "fcost":F
    .end local v61    # "upweight":F
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 322
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbd:I

    .line 323
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbu:I

    .line 324
    const/4 v7, -0x1

    .line 325
    const/4 v8, -0x1

    .line 327
    if-eqz v53, :cond_19

    .line 329
    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmpl-double v6, v64, v66

    if-lez v6, :cond_29

    .line 331
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->wayfraction:D

    move-wide/from16 v66, v0

    sub-double v64, v64, v66

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move-wide/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtools/router/StdPath;->interpolateEle(SSD)S

    move-result v32

    .line 332
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    move/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v65, v0

    move/from16 v0, v63

    move/from16 v1, v32

    move-object/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v6, v0, v1, v2, v3}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    goto/16 :goto_b

    .line 336
    :cond_29
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    goto/16 :goto_b

    .line 415
    .restart local v31    # "downweight":F
    .restart local v34    # "elefactor":I
    :cond_2a
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbd:I

    if-gez v6, :cond_21

    .line 417
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbd:I

    goto/16 :goto_c

    .line 448
    .restart local v61    # "upweight":F
    :cond_2b
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->ehbu:I

    if-gez v6, :cond_24

    .line 450
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->ehbu:I

    goto/16 :goto_d

    .line 466
    .restart local v26    # "costfactor":F
    .restart local v37    # "fcost":F
    :cond_2c
    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v62, v0

    .line 467
    .local v62, "waycost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v62

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 470
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    if-eqz v6, :cond_2d

    .line 472
    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->trafficSourceMinDist:D

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v47, v0

    .line 473
    .local v47, "minDist":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    move/from16 v0, v47

    if-ge v6, v0, :cond_30

    move/from16 v21, v47

    .line 474
    .local v21, "cost2":I
    :goto_e
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->traffic:F

    float-to-double v0, v6

    move-wide/from16 v64, v0

    move/from16 v0, v30

    int-to-float v6, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lbtools/expressions/BExpressionContextWay;->getTrafficSourceDensity()F

    move-result v63

    mul-float v6, v6, v63

    float-to-double v0, v6

    move-wide/from16 v66, v0

    move/from16 v0, v21

    int-to-float v6, v0

    const v63, 0x461c4000    # 10000.0f

    div-float v6, v6, v63

    float-to-double v0, v6

    move-wide/from16 v68, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Lbtools/router/RoutingContext;->trafficSourceExponent:D

    move-wide/from16 v70, v0

    invoke-static/range {v68 .. v71}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v68

    mul-double v66, v66, v68

    add-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-float v6, v0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->traffic:F

    .line 477
    .end local v21    # "cost2":I
    .end local v47    # "minDist":I
    :cond_2d
    if-eqz v52, :cond_2e

    .line 479
    move/from16 v0, v26

    move-object/from16 v1, v48

    iput v0, v1, Lbtools/router/MessageData;->costfactor:F

    .line 480
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getPriorityClassifier()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->priorityclassifier:I

    .line 481
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getClassifierMask()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->classifiermask:I

    .line 482
    move-object/from16 v0, v48

    iput v11, v0, Lbtools/router/MessageData;->lon:I

    .line 483
    move-object/from16 v0, v48

    iput v12, v0, Lbtools/router/MessageData;->lat:I

    .line 484
    move/from16 v0, v33

    move-object/from16 v1, v48

    iput-short v0, v1, Lbtools/router/MessageData;->ele:S

    .line 485
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Lbtools/expressions/BExpressionContextWay;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    iput-object v6, v0, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    .line 488
    :cond_2e
    if-eqz v56, :cond_31

    .line 490
    if-eqz v53, :cond_2f

    .line 492
    move-object/from16 v0, p5

    iget v6, v0, Lbtools/router/RoutingContext;->ilonshortest:I

    move-object/from16 v0, p5

    iget v0, v0, Lbtools/router/RoutingContext;->ilatshortest:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v64, v0

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v65, v0

    move/from16 v0, v63

    move/from16 v1, v33

    move-object/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v6, v0, v1, v2, v3}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    .line 493
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->cost:I

    move/from16 v63, v0

    move/from16 v0, v63

    iput v0, v6, Lbtools/router/OsmPathElement;->cost:I

    .line 494
    if-eqz v52, :cond_2f

    .line 496
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, v48

    iput-object v0, v6, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 499
    :cond_2f
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    if-eqz v6, :cond_16

    .line 501
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    goto/16 :goto_a

    .line 473
    .restart local v47    # "minDist":I
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->cost:I

    move/from16 v21, v0

    goto/16 :goto_e

    .line 506
    .end local v47    # "minDist":I
    :cond_31
    if-nez v59, :cond_33

    .line 509
    if-eqz p1, :cond_32

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lbtools/router/OsmTrack;->containsNode(Lbtools/mapaccess/OsmPos;)Z

    move-result v6

    if-eqz v6, :cond_32

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->sourceNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lbtools/router/OsmTrack;->containsNode(Lbtools/mapaccess/OsmPos;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 511
    move/from16 v55, v46

    .line 512
    .local v55, "reftrackcost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v55

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 514
    .end local v55    # "reftrackcost":I
    :cond_32
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-short v0, v1, Lbtools/router/StdPath;->selev:S

    .line 535
    move-object/from16 v0, p5

    iget-boolean v6, v0, Lbtools/router/RoutingContext;->nogomatch:Z

    if-eqz v6, :cond_35

    .line 537
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    goto/16 :goto_a

    .line 517
    :cond_33
    move-object/from16 v0, v59

    iget-object v0, v0, Lbtools/mapaccess/OsmTransferNode;->next:Lbtools/mapaccess/OsmTransferNode;

    move-object/from16 v59, v0

    .line 519
    if-eqz v53, :cond_34

    .line 521
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    move/from16 v63, v0

    move/from16 v0, v33

    move/from16 v1, v63

    invoke-static {v11, v12, v0, v6, v1}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    .line 522
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->cost:I

    move/from16 v63, v0

    move/from16 v0, v63

    iput v0, v6, Lbtools/router/OsmPathElement;->cost:I

    .line 523
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->originElement:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/router/StdPath;->traffic:F

    move/from16 v63, v0

    move/from16 v0, v63

    invoke-virtual {v6, v0}, Lbtools/router/OsmPathElement;->addTraffic(F)V

    .line 524
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->traffic:F

    .line 526
    :cond_34
    move v7, v9

    .line 527
    move v8, v10

    .line 528
    move v9, v11

    .line 529
    move v10, v12

    .line 530
    move/from16 v32, v33

    .line 532
    goto/16 :goto_4

    .line 542
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v6, v6, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    if-eqz v6, :cond_38

    .line 544
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextWay;->getNodeAccessGranted()F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmpl-double v6, v64, v66

    if-eqz v6, :cond_36

    const/16 v50, 0x1

    .line 545
    .local v50, "nodeAccessGranted":Z
    :goto_f
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    move-object/from16 v63, v0

    move/from16 v0, v50

    move-object/from16 v1, v63

    invoke-virtual {v6, v0, v1}, Lbtools/expressions/BExpressionContextNode;->evaluate(Z[B)V

    .line 546
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    invoke-virtual {v6}, Lbtools/expressions/BExpressionContextNode;->getInitialcost()F

    move-result v42

    .line 547
    .restart local v42    # "initialcost":F
    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x412e848000000000L    # 1000000.0

    cmpl-double v6, v64, v66

    if-ltz v6, :cond_37

    .line 549
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    goto/16 :goto_a

    .line 544
    .end local v42    # "initialcost":F
    .end local v50    # "nodeAccessGranted":Z
    :cond_36
    const/16 v50, 0x0

    goto :goto_f

    .line 552
    .restart local v42    # "initialcost":F
    .restart local v50    # "nodeAccessGranted":Z
    :cond_37
    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v41, v0

    .line 554
    .restart local v41    # "iicost":I
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/StdPath;->cost:I

    add-int v6, v6, v41

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/StdPath;->cost:I

    .line 556
    if-eqz v52, :cond_38

    .line 558
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/MessageData;->linknodecost:I

    add-int v6, v6, v41

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/MessageData;->linknodecost:I

    .line 559
    move-object/from16 v0, p5

    iget-object v6, v0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/StdPath;->targetNode:Lbtools/mapaccess/OsmNode;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    move-object/from16 v63, v0

    move/from16 v0, v50

    move-object/from16 v1, v63

    invoke-virtual {v6, v0, v1}, Lbtools/expressions/BExpressionContextNode;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v48

    iput-object v6, v0, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    .line 562
    .end local v41    # "iicost":I
    .end local v42    # "initialcost":F
    .end local v50    # "nodeAccessGranted":Z
    :cond_38
    if-eqz v52, :cond_16

    .line 564
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/StdPath;->message:Lbtools/router/MessageData;

    goto/16 :goto_a
.end method
