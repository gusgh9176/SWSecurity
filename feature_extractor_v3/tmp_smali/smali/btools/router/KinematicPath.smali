.class final Lbtools/router/KinematicPath;
.super Lbtools/router/OsmPath;
.source "KinematicPath.java"


# instance fields
.field private ekin:D

.field private floatingAngleLeft:F

.field private floatingAngleRight:F

.field private totalEnergy:D

.field private totalTime:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lbtools/router/OsmPath;-><init>()V

    return-void
.end method

.method private cutEkin(DD)V
    .locals 5
    .param p1, "weight"    # D
    .param p3, "speed"    # D

    .prologue
    .line 228
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, p1

    mul-double/2addr v2, p3

    mul-double v0, v2, p3

    .line 229
    .local v0, "e":D
    iget-wide v2, p0, Lbtools/router/KinematicPath;->ekin:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iput-wide v0, p0, Lbtools/router/KinematicPath;->ekin:D

    .line 230
    :cond_0
    return-void
.end method

.method private static exp(D)D
    .locals 12
    .param p0, "e"    # D

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 234
    move-wide v2, p0

    .line 235
    .local v2, "x":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 236
    .local v0, "f":D
    :goto_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_0

    .line 238
    add-double/2addr p0, v10

    .line 239
    const-wide v4, 0x3fd78b545c78a6dbL    # 0.367879

    mul-double/2addr v0, v4

    goto :goto_0

    .line 241
    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fc5555821294574L    # 0.166667

    const-wide v8, 0x3fa5555673aa1bc8L    # 0.0416667

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double/2addr v4, v2

    add-double/2addr v4, v10

    mul-double/2addr v4, v2

    add-double/2addr v4, v10

    mul-double/2addr v4, v0

    return-wide v4
.end method


# virtual methods
.method public definitlyWorseThan(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)Z
    .locals 4
    .param p1, "path"    # Lbtools/router/OsmPath;
    .param p2, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 254
    move-object v1, p1

    check-cast v1, Lbtools/router/KinematicPath;

    .line 256
    .local v1, "p":Lbtools/router/KinematicPath;
    iget v0, v1, Lbtools/router/KinematicPath;->cost:I

    .line 257
    .local v0, "c":I
    iget v2, p0, Lbtools/router/KinematicPath;->cost:I

    add-int/lit8 v3, v0, 0x64

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public elevationCorrection(Lbtools/router/RoutingContext;)I
    .locals 1
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method protected evolveDistance(Lbtools/router/KinematicModel;DD)D
    .locals 54
    .param p1, "km"    # Lbtools/router/KinematicModel;
    .param p2, "dist"    # D
    .param p4, "delta_h"    # D

    .prologue
    .line 130
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->totalweight:D

    move-wide/from16 v44, v0

    mul-double v44, v44, p4

    const-wide v46, 0x40239eb851eb851fL    # 9.81

    mul-double v44, v44, v46

    div-double v28, v44, p2

    .line 132
    .local v28, "fh":D
    invoke-virtual/range {p1 .. p1}, Lbtools/router/KinematicModel;->getMaxKineticEnergy()D

    move-result-wide v18

    .line 133
    .local v18, "emax":D
    const-wide/16 v44, 0x0

    cmpg-double v44, v18, v44

    if-gtz v44, :cond_0

    .line 135
    const-wide/high16 v44, -0x4010000000000000L    # -1.0

    .line 197
    :goto_0
    return-wide v44

    .line 137
    :cond_0
    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    mul-double v16, v44, v18

    .line 139
    .local v16, "elow":D
    const-wide/16 v14, 0x0

    .line 140
    .local v14, "elapsedTime":D
    const-wide/16 v12, 0x0

    .line 142
    .local v12, "dissipatedEnergy":D
    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->totalweight:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    .line 143
    .local v32, "v":D
    move-wide/from16 v8, p2

    .line 144
    .local v8, "d":D
    :goto_1
    const-wide/16 v44, 0x0

    cmpl-double v44, v8, v44

    if-lez v44, :cond_8

    .line 146
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v44, v0

    cmpg-double v44, v44, v16

    if-gez v44, :cond_1

    const/16 v27, 0x1

    .line 147
    .local v27, "slow":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v44, v0

    cmpl-double v44, v44, v18

    if-ltz v44, :cond_2

    const/16 v26, 0x1

    .line 148
    .local v26, "fast":Z
    :goto_3
    if-eqz v27, :cond_3

    move-wide/from16 v20, v16

    .line 149
    .local v20, "etarget":D
    :goto_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->f_roll:D

    move-wide/from16 v44, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->f_air:D

    move-wide/from16 v46, v0

    mul-double v46, v46, v32

    mul-double v46, v46, v32

    add-double v44, v44, v46

    add-double v22, v44, v28

    .line 150
    .local v22, "f":D
    const-wide/16 v46, 0x0

    if-eqz v26, :cond_4

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v44, v0

    :goto_5
    move-wide/from16 v0, v46

    move-wide/from16 v2, v44

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    .line 151
    .local v24, "f_recup":D
    add-double v22, v22, v24

    .line 155
    if-eqz v26, :cond_6

    .line 157
    move-wide/from16 v36, v8

    .line 158
    .local v36, "x":D
    mul-double v10, v36, v22

    .line 159
    .local v10, "delta_ekin":D
    div-double v44, v36, v32

    add-double v14, v14, v44

    .line 160
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/KinematicPath;->ekin:D

    .line 186
    :goto_6
    sub-double v8, v8, v36

    .line 189
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->recup_efficiency:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v24

    add-double v44, v44, v28

    mul-double v44, v44, v36

    sub-double v44, v10, v44

    add-double v12, v12, v44

    .line 190
    goto :goto_1

    .line 146
    .end local v10    # "delta_ekin":D
    .end local v20    # "etarget":D
    .end local v22    # "f":D
    .end local v24    # "f_recup":D
    .end local v26    # "fast":Z
    .end local v27    # "slow":Z
    .end local v36    # "x":D
    :cond_1
    const/16 v27, 0x0

    goto :goto_2

    .line 147
    .restart local v27    # "slow":Z
    :cond_2
    const/16 v26, 0x0

    goto :goto_3

    .restart local v26    # "fast":Z
    :cond_3
    move-wide/from16 v20, v18

    .line 148
    goto :goto_4

    .line 150
    .restart local v20    # "etarget":D
    .restart local v22    # "f":D
    :cond_4
    if-eqz v27, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->f_recup:D

    move-wide/from16 v44, v0

    :goto_7
    sub-double v44, v44, v28

    goto :goto_5

    :cond_5
    const-wide/16 v44, 0x0

    goto :goto_7

    .line 164
    .restart local v24    # "f_recup":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v44, v0

    sub-double v10, v20, v44

    .line 165
    .restart local v10    # "delta_ekin":D
    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->f_air:D

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->totalweight:D

    move-wide/from16 v46, v0

    div-double v6, v44, v46

    .line 166
    .local v6, "b":D
    div-double v38, v10, v22

    .line 167
    .local v38, "x0":D
    mul-double v40, v38, v6

    .line 168
    .local v40, "x0b":D
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    const-wide v48, 0x3fd5555554f9b516L    # 0.333333333

    const-wide/high16 v50, 0x3fd0000000000000L    # 0.25

    mul-double v50, v50, v40

    sub-double v48, v48, v50

    mul-double v48, v48, v40

    add-double v46, v46, v48

    mul-double v46, v46, v40

    sub-double v44, v44, v46

    mul-double v36, v38, v44

    .line 169
    .restart local v36    # "x":D
    const-wide/high16 v44, 0x4049000000000000L    # 50.0

    move-wide/from16 v0, v44

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    .line 170
    .local v30, "maxstep":D
    cmpl-double v44, v36, v30

    if-ltz v44, :cond_7

    .line 172
    move-wide/from16 v36, v30

    .line 173
    mul-double v42, v36, v6

    .line 174
    .local v42, "xb":D
    mul-double v44, v36, v22

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v48, 0x3fe0000000000000L    # 0.5

    const-wide v50, 0x3fc55555560c95d4L    # 0.166666667

    const-wide v52, 0x3fa55555559ea255L    # 0.0416666667

    mul-double v52, v52, v42

    add-double v50, v50, v52

    mul-double v50, v50, v42

    add-double v48, v48, v50

    mul-double v48, v48, v42

    add-double v46, v46, v48

    mul-double v10, v44, v46

    .line 175
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v44, v0

    add-double v44, v44, v10

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/KinematicPath;->ekin:D

    .line 181
    .end local v42    # "xb":D
    :goto_8
    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->ekin:D

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->totalweight:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    .line 182
    .local v34, "v2":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->totalweight:D

    move-wide/from16 v44, v0

    div-double v4, v22, v44

    .line 183
    .local v4, "a":D
    sub-double v44, v34, v32

    div-double v44, v44, v4

    add-double v14, v14, v44

    .line 184
    move-wide/from16 v32, v34

    goto/16 :goto_6

    .line 179
    .end local v4    # "a":D
    .end local v34    # "v2":D
    :cond_7
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/KinematicPath;->ekin:D

    goto :goto_8

    .line 192
    .end local v6    # "b":D
    .end local v10    # "delta_ekin":D
    .end local v20    # "etarget":D
    .end local v22    # "f":D
    .end local v24    # "f_recup":D
    .end local v26    # "fast":Z
    .end local v27    # "slow":Z
    .end local v30    # "maxstep":D
    .end local v36    # "x":D
    .end local v38    # "x0":D
    .end local v40    # "x0b":D
    :cond_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->p_standby:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v14

    add-double v12, v12, v44

    .line 194
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->totalTime:D

    move-wide/from16 v44, v0

    add-double v44, v44, v14

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/KinematicPath;->totalTime:D

    .line 195
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/KinematicPath;->totalEnergy:D

    move-wide/from16 v44, v0

    mul-double v46, p2, v28

    add-double v46, v46, v12

    add-double v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/KinematicPath;->totalEnergy:D

    .line 197
    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->xweight:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v12

    add-double v44, v44, v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lbtools/router/KinematicModel;->timecost0:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    goto/16 :goto_0
.end method

.method public getTotalEnergy()D
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lbtools/router/KinematicPath;->totalEnergy:D

    return-wide v0
.end method

.method public getTotalTime()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lbtools/router/KinematicPath;->totalTime:D

    return-wide v0
.end method

.method protected init(Lbtools/router/OsmPath;)V
    .locals 4
    .param p1, "orig"    # Lbtools/router/OsmPath;

    .prologue
    .line 20
    move-object v0, p1

    check-cast v0, Lbtools/router/KinematicPath;

    .line 21
    .local v0, "origin":Lbtools/router/KinematicPath;
    iget-wide v2, v0, Lbtools/router/KinematicPath;->ekin:D

    iput-wide v2, p0, Lbtools/router/KinematicPath;->ekin:D

    .line 22
    iget-wide v2, v0, Lbtools/router/KinematicPath;->totalTime:D

    iput-wide v2, p0, Lbtools/router/KinematicPath;->totalTime:D

    .line 23
    iget-wide v2, v0, Lbtools/router/KinematicPath;->totalEnergy:D

    iput-wide v2, p0, Lbtools/router/KinematicPath;->totalEnergy:D

    .line 24
    iget v1, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    iput v1, p0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    .line 25
    iget v1, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    iput v1, p0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    .line 26
    iget v1, v0, Lbtools/router/KinematicPath;->priorityclassifier:I

    iput v1, p0, Lbtools/router/KinematicPath;->priorityclassifier:I

    .line 27
    return-void
.end method

.method protected processTargetNode(Lbtools/router/RoutingContext;)D
    .locals 7
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v1, p1, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    check-cast v1, Lbtools/router/KinematicModel;

    .line 206
    .local v1, "km":Lbtools/router/KinematicModel;
    iget-object v2, p0, Lbtools/router/KinematicPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v2, v2, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iget-object v3, p0, Lbtools/router/KinematicPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v3, v3, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    invoke-virtual {v2, v6, v3}, Lbtools/expressions/BExpressionContextNode;->evaluate(Z[B)V

    .line 209
    iget-object v2, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    invoke-virtual {v2}, Lbtools/expressions/BExpressionContextNode;->getInitialcost()F

    move-result v0

    .line 210
    .local v0, "initialcost":F
    float-to-double v2, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 212
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 223
    .end local v0    # "initialcost":F
    :goto_0
    return-wide v2

    .line 214
    .restart local v0    # "initialcost":F
    :cond_0
    iget-wide v2, v1, Lbtools/router/KinematicModel;->totalweight:D

    invoke-virtual {v1}, Lbtools/router/KinematicModel;->getNodeMaxspeed()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lbtools/router/KinematicPath;->cutEkin(DD)V

    .line 216
    iget-object v2, p0, Lbtools/router/KinematicPath;->message:Lbtools/router/MessageData;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lbtools/router/KinematicPath;->message:Lbtools/router/MessageData;

    iget v3, v2, Lbtools/router/MessageData;->linknodecost:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Lbtools/router/MessageData;->linknodecost:I

    .line 219
    iget-object v2, p0, Lbtools/router/KinematicPath;->message:Lbtools/router/MessageData;

    iget-object v3, p1, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iget-object v4, p0, Lbtools/router/KinematicPath;->targetNode:Lbtools/mapaccess/OsmNode;

    iget-object v4, v4, Lbtools/mapaccess/OsmNode;->nodeDescription:[B

    invoke-virtual {v3, v6, v4}, Lbtools/expressions/BExpressionContextNode;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    .line 221
    :cond_1
    float-to-double v2, v0

    goto :goto_0

    .line 223
    .end local v0    # "initialcost":F
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected processWaySection(Lbtools/router/RoutingContext;DDDDZII)D
    .locals 30
    .param p1, "rc"    # Lbtools/router/RoutingContext;
    .param p2, "dist"    # D
    .param p4, "delta_h"    # D
    .param p6, "angle"    # D
    .param p8, "cosangle"    # D
    .param p10, "isStartpoint"    # Z
    .param p11, "nsection"    # I
    .param p12, "lastpriorityclassifier"    # I

    .prologue
    .line 42
    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/router/RoutingContext;->pm:Lbtools/router/OsmPathModel;

    check-cast v5, Lbtools/router/KinematicModel;

    .line 44
    .local v5, "km":Lbtools/router/KinematicModel;
    const-wide/16 v12, 0x0

    .line 46
    .local v12, "cost":D
    if-eqz p10, :cond_2

    .line 49
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-nez v4, :cond_0

    .line 51
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, p8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double/2addr v6, v8

    iget-wide v8, v5, Lbtools/router/KinematicModel;->timecost0:D

    div-double v12, v6, v8

    :cond_0
    :goto_0
    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 116
    invoke-virtual/range {v4 .. v9}, Lbtools/router/KinematicPath;->evolveDistance(Lbtools/router/KinematicModel;DD)D

    move-result-wide v18

    .line 118
    .local v18, "distanceCost":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/KinematicPath;->message:Lbtools/router/MessageData;

    if-eqz v4, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/KinematicPath;->message:Lbtools/router/MessageData;

    div-double v6, v18, p2

    double-to-float v6, v6

    iput v6, v4, Lbtools/router/MessageData;->costfactor:F

    .line 123
    :cond_1
    add-double v6, v12, v18

    return-wide v6

    .line 56
    .end local v18    # "distanceCost":D
    :cond_2
    const-wide v28, 0x408f380000000000L    # 999.0

    .line 58
    .local v28, "turnspeed":D
    iget-wide v6, v5, Lbtools/router/KinematicModel;->turnAngleDecayLength:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-eqz v4, :cond_3

    .line 60
    move-wide/from16 v0, p2

    neg-double v6, v0

    iget-wide v8, v5, Lbtools/router/KinematicModel;->turnAngleDecayLength:D

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lbtools/router/KinematicPath;->exp(D)D

    move-result-wide v14

    .line 61
    .local v14, "decayFactor":D
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    float-to-double v6, v4

    mul-double/2addr v6, v14

    double-to-float v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    .line 62
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    float-to-double v6, v4

    mul-double/2addr v6, v14

    double-to-float v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    .line 63
    const-wide/16 v6, 0x0

    cmpg-double v4, p6, v6

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    move-wide/from16 v0, p6

    double-to-float v6, v0

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    .line 65
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 67
    .local v10, "aa":F
    float-to-double v6, v10

    const-wide v8, 0x4060400000000000L    # 130.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_6

    const-wide/16 v28, 0x0

    .line 76
    .end local v10    # "aa":F
    .end local v14    # "decayFactor":D
    :cond_3
    :goto_2
    if-nez p11, :cond_14

    .line 78
    move-object/from16 v0, p1

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v4}, Lbtools/expressions/BExpressionContextWay;->getClassifierMask()F

    move-result v4

    float-to-int v11, v4

    .line 81
    .local v11, "classifiermask":I
    const/16 v20, 0x0

    .line 82
    .local v20, "hasLeftWay":Z
    const/16 v22, 0x0

    .line 83
    .local v22, "hasRightWay":Z
    const/16 v21, 0x0

    .line 84
    .local v21, "hasResidential":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lbtools/router/RoutingContext;->firstPrePath:Lbtools/router/OsmPrePath;

    move-object/from16 v24, v0

    .local v24, "prePath":Lbtools/router/OsmPrePath;
    :goto_3
    if-eqz v24, :cond_10

    move-object/from16 v23, v24

    .line 86
    check-cast v23, Lbtools/router/KinematicPrePath;

    .line 88
    .local v23, "pp":Lbtools/router/KinematicPrePath;
    move-object/from16 v0, v23

    iget v4, v0, Lbtools/router/KinematicPrePath;->classifiermask:I

    xor-int/2addr v4, v11

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    .line 84
    :cond_4
    :goto_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lbtools/router/OsmPrePath;->next:Lbtools/router/OsmPrePath;

    move-object/from16 v24, v0

    goto :goto_3

    .line 64
    .end local v11    # "classifiermask":I
    .end local v20    # "hasLeftWay":Z
    .end local v21    # "hasResidential":Z
    .end local v22    # "hasRightWay":Z
    .end local v23    # "pp":Lbtools/router/KinematicPrePath;
    .end local v24    # "prePath":Lbtools/router/OsmPrePath;
    .restart local v14    # "decayFactor":D
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    move-wide/from16 v0, p6

    double-to-float v6, v0

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    goto :goto_1

    .line 68
    .restart local v10    # "aa":F
    :cond_6
    float-to-double v6, v10

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_7

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 69
    :cond_7
    float-to-double v6, v10

    const-wide v8, 0x4051800000000000L    # 70.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_8

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    goto :goto_2

    .line 70
    :cond_8
    float-to-double v6, v10

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_9

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    goto :goto_2

    .line 71
    :cond_9
    float-to-double v6, v10

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_a

    const-wide/high16 v28, 0x4020000000000000L    # 8.0

    goto :goto_2

    .line 72
    :cond_a
    float-to-double v6, v10

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_b

    const-wide/high16 v28, 0x402c000000000000L    # 14.0

    goto :goto_2

    .line 73
    :cond_b
    float-to-double v6, v10

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_3

    const-wide/high16 v28, 0x4034000000000000L    # 20.0

    goto :goto_2

    .line 93
    .end local v10    # "aa":F
    .end local v14    # "decayFactor":D
    .restart local v11    # "classifiermask":I
    .restart local v20    # "hasLeftWay":Z
    .restart local v21    # "hasResidential":Z
    .restart local v22    # "hasRightWay":Z
    .restart local v23    # "pp":Lbtools/router/KinematicPrePath;
    .restart local v24    # "prePath":Lbtools/router/OsmPrePath;
    :cond_c
    move-object/from16 v0, v23

    iget v4, v0, Lbtools/router/KinematicPrePath;->classifiermask:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_d

    .line 95
    const/16 v21, 0x1

    .line 98
    :cond_d
    move-object/from16 v0, v23

    iget v4, v0, Lbtools/router/KinematicPrePath;->priorityclassifier:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/KinematicPath;->priorityclassifier:I

    if-gt v4, v6, :cond_e

    move-object/from16 v0, v23

    iget v4, v0, Lbtools/router/KinematicPrePath;->priorityclassifier:I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/KinematicPath;->priorityclassifier:I

    if-ne v4, v6, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lbtools/router/KinematicPath;->priorityclassifier:I

    const/16 v6, 0x14

    if-ge v4, v6, :cond_4

    .line 100
    :cond_e
    move-object/from16 v0, v23

    iget-wide v6, v0, Lbtools/router/KinematicPrePath;->angle:D

    sub-double v16, v6, p6

    .line 101
    .local v16, "diff":D
    const-wide/high16 v6, -0x3fbc000000000000L    # -40.0

    cmpg-double v4, v16, v6

    if-gez v4, :cond_f

    const-wide v6, -0x3f9e800000000000L    # -140.0

    cmpl-double v4, v16, v6

    if-lez v4, :cond_f

    const/16 v20, 0x1

    .line 102
    :cond_f
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v4, v16, v6

    if-lez v4, :cond_4

    const-wide v6, 0x4061800000000000L    # 140.0

    cmpg-double v4, v16, v6

    if-gez v4, :cond_4

    const/16 v22, 0x1

    goto/16 :goto_4

    .line 105
    .end local v16    # "diff":D
    .end local v23    # "pp":Lbtools/router/KinematicPrePath;
    :cond_10
    const-wide/high16 v26, 0x402a000000000000L    # 13.0

    .line 107
    .local v26, "residentialSpeed":D
    if-eqz v20, :cond_11

    iget-wide v6, v5, Lbtools/router/KinematicModel;->leftWaySpeed:D

    cmpl-double v4, v28, v6

    if-lez v4, :cond_11

    iget-wide v0, v5, Lbtools/router/KinematicModel;->leftWaySpeed:D

    move-wide/from16 v28, v0

    .line 108
    :cond_11
    if-eqz v22, :cond_12

    iget-wide v6, v5, Lbtools/router/KinematicModel;->rightWaySpeed:D

    cmpl-double v4, v28, v6

    if-lez v4, :cond_12

    iget-wide v0, v5, Lbtools/router/KinematicModel;->rightWaySpeed:D

    move-wide/from16 v28, v0

    .line 109
    :cond_12
    if-eqz v21, :cond_13

    cmpl-double v4, v28, v26

    if-lez v4, :cond_13

    move-wide/from16 v28, v26

    .line 110
    :cond_13
    const/16 v4, 0x14

    move/from16 v0, p12

    if-ge v0, v4, :cond_15

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/KinematicPath;->priorityclassifier:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_16

    const/4 v6, 0x1

    :goto_6
    xor-int/2addr v4, v6

    if-eqz v4, :cond_14

    const-wide/16 v28, 0x0

    .line 113
    .end local v11    # "classifiermask":I
    .end local v20    # "hasLeftWay":Z
    .end local v21    # "hasResidential":Z
    .end local v22    # "hasRightWay":Z
    .end local v24    # "prePath":Lbtools/router/OsmPrePath;
    .end local v26    # "residentialSpeed":D
    :cond_14
    iget-wide v6, v5, Lbtools/router/KinematicModel;->totalweight:D

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v6, v7, v1, v2}, Lbtools/router/KinematicPath;->cutEkin(DD)V

    goto/16 :goto_0

    .line 110
    .restart local v11    # "classifiermask":I
    .restart local v20    # "hasLeftWay":Z
    .restart local v21    # "hasResidential":Z
    .restart local v22    # "hasRightWay":Z
    .restart local v24    # "prePath":Lbtools/router/OsmPrePath;
    .restart local v26    # "residentialSpeed":D
    :cond_15
    const/4 v4, 0x0

    goto :goto_5

    :cond_16
    const/4 v6, 0x0

    goto :goto_6
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lbtools/router/KinematicPath;->ekin:D

    .line 33
    iput-wide v0, p0, Lbtools/router/KinematicPath;->totalTime:D

    .line 34
    iput-wide v0, p0, Lbtools/router/KinematicPath;->totalEnergy:D

    .line 35
    iput v2, p0, Lbtools/router/KinematicPath;->floatingAngleLeft:F

    .line 36
    iput v2, p0, Lbtools/router/KinematicPath;->floatingAngleRight:F

    .line 37
    return-void
.end method
