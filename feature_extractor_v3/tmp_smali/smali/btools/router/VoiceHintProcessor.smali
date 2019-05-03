.class public final Lbtools/router/VoiceHintProcessor;
.super Ljava/lang/Object;
.source "VoiceHintProcessor.java"


# instance fields
.field private catchingRange:D

.field private explicitRoundabouts:Z


# direct methods
.method public constructor <init>(DZ)V
    .locals 1
    .param p1, "catchingRange"    # D
    .param p3, "explicitRoundabouts"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lbtools/router/VoiceHintProcessor;->catchingRange:D

    .line 19
    iput-boolean p3, p0, Lbtools/router/VoiceHintProcessor;->explicitRoundabouts:Z

    .line 20
    return-void
.end method

.method private sumNonConsumedWithinCatchingRange(Ljava/util/List;I)F
    .locals 8
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/VoiceHint;",
            ">;I)F"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    const-wide/16 v2, 0x0

    .line 25
    .local v2, "distance":D
    const/4 v0, 0x0

    .local v0, "angle":F
    move v4, p2

    .line 26
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ltz v4, :cond_1

    iget-wide v6, p0, Lbtools/router/VoiceHintProcessor;->catchingRange:D

    cmpg-double v5, v2, v6

    if-gez v5, :cond_1

    .line 28
    add-int/lit8 p2, v4, -0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/VoiceHint;

    .line 29
    .local v1, "input":Lbtools/router/VoiceHint;
    iget-boolean v5, v1, Lbtools/router/VoiceHint;->turnAngleConsumed:Z

    if-eqz v5, :cond_0

    .line 37
    .end local v1    # "input":Lbtools/router/VoiceHint;
    :goto_1
    return v0

    .line 33
    .restart local v1    # "input":Lbtools/router/VoiceHint;
    :cond_0
    iget-object v5, v1, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    iget v5, v5, Lbtools/router/MessageData;->turnangle:F

    add-float/2addr v0, v5

    .line 34
    iget-object v5, v1, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    iget v5, v5, Lbtools/router/MessageData;->linkdist:I

    int-to-double v6, v5

    add-double/2addr v2, v6

    .line 35
    const/4 v5, 0x1

    iput-boolean v5, v1, Lbtools/router/VoiceHint;->turnAngleConsumed:Z

    move v4, p2

    .line 36
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .end local v1    # "input":Lbtools/router/VoiceHint;
    :cond_1
    move p2, v4

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method


# virtual methods
.method public process(Ljava/util/List;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/VoiceHint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbtools/router/VoiceHint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v28, "results":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    const-wide/16 v10, 0x0

    .line 62
    .local v10, "distance":D
    const/16 v30, 0x0

    .line 64
    .local v30, "roundAboutTurnAngle":F
    const/16 v31, 0x0

    .line 66
    .local v31, "roundaboutExit":I
    const/4 v14, 0x0

    .local v14, "hintIdx":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v14, v0, :cond_1c

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lbtools/router/VoiceHint;

    .line 70
    .local v16, "input":Lbtools/router/VoiceHint;
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lbtools/router/MessageData;->turnangle:F

    move/from16 v32, v0

    .line 71
    .local v32, "turnAngle":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lbtools/router/MessageData;->linkdist:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    add-double v10, v10, v34

    .line 72
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lbtools/router/MessageData;->getPrio()I

    move-result v6

    .line 73
    .local v6, "currentPrio":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lbtools/router/MessageData;->getPrio()I

    move-result v27

    .line 74
    .local v27, "oldPrio":I
    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 76
    .local v26, "minPrio":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lbtools/router/MessageData;->isLinktType()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lbtools/router/MessageData;->isLinktType()Z

    move-result v34

    if-nez v34, :cond_1

    const/16 v19, 0x1

    .line 78
    .local v19, "isLink2Highway":Z
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lbtools/router/MessageData;->isRoundabout()Z

    move-result v34

    if-eqz v34, :cond_5

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lbtools/router/VoiceHintProcessor;->sumNonConsumedWithinCatchingRange(Ljava/util/List;I)F

    move-result v34

    add-float v30, v30, v34

    .line 81
    if-nez v31, :cond_2

    const/16 v17, 0x1

    .line 82
    .local v17, "isExit":Z
    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    .line 84
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_0
    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/MessageData;

    .line 86
    .local v4, "badWay":Lbtools/router/MessageData;
    invoke-virtual {v4}, Lbtools/router/MessageData;->isBadOneway()Z

    move-result v35

    if-nez v35, :cond_0

    invoke-virtual {v4}, Lbtools/router/MessageData;->isGoodForCars()Z

    move-result v35

    if-eqz v35, :cond_0

    iget v0, v4, Lbtools/router/MessageData;->turnangle:F

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    cmpg-double v35, v36, v38

    if-gez v35, :cond_0

    .line 88
    const/16 v17, 0x1

    goto :goto_3

    .line 76
    .end local v4    # "badWay":Lbtools/router/MessageData;
    .end local v17    # "isExit":Z
    .end local v19    # "isLink2Highway":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 81
    .restart local v19    # "isLink2Highway":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 92
    .restart local v17    # "isExit":Z
    :cond_3
    if-eqz v17, :cond_4

    .line 94
    add-int/lit8 v31, v31, 0x1

    .line 66
    .end local v17    # "isExit":Z
    .end local v32    # "turnAngle":F
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 98
    .restart local v32    # "turnAngle":F
    :cond_5
    if-lez v31, :cond_7

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lbtools/router/VoiceHintProcessor;->sumNonConsumedWithinCatchingRange(Ljava/util/List;I)F

    move-result v34

    add-float v30, v30, v34

    .line 101
    move/from16 v0, v30

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->angle:F

    .line 102
    move-object/from16 v0, v16

    iput-wide v10, v0, Lbtools/router/VoiceHint;->distanceToNext:D

    .line 103
    const/16 v34, 0x0

    cmpg-float v34, v32, v34

    if-gez v34, :cond_6

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    .end local v31    # "roundaboutExit":I
    :cond_6
    move/from16 v0, v31

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->roundaboutExit:I

    .line 104
    const-wide/16 v10, 0x0

    .line 105
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const/16 v30, 0x0

    .line 107
    const/16 v31, 0x0

    .line 108
    .restart local v31    # "roundaboutExit":I
    goto :goto_4

    .line 110
    :cond_7
    const/16 v22, -0x1

    .line 111
    .local v22, "maxPrioAll":I
    const/16 v23, -0x1

    .line 113
    .local v23, "maxPrioCandidates":I
    const/high16 v21, -0x3ccc0000    # -180.0f

    .line 114
    .local v21, "maxAngle":F
    const/high16 v25, 0x43340000    # 180.0f

    .line 115
    .local v25, "minAngle":F
    const/high16 v24, 0x43340000    # 180.0f

    .line 117
    .local v24, "minAbsAngeRaw":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    move-object/from16 v34, v0

    if-eqz v34, :cond_e

    .line 119
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_8
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_e

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/MessageData;

    .line 121
    .restart local v4    # "badWay":Lbtools/router/MessageData;
    invoke-virtual {v4}, Lbtools/router/MessageData;->getPrio()I

    move-result v2

    .line 122
    .local v2, "badPrio":I
    iget v3, v4, Lbtools/router/MessageData;->turnangle:F

    .line 124
    .local v3, "badTurn":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lbtools/router/MessageData;->isLinktType()Z

    move-result v35

    if-nez v35, :cond_d

    invoke-virtual {v4}, Lbtools/router/MessageData;->isLinktType()Z

    move-result v35

    if-eqz v35, :cond_d

    const/16 v18, 0x1

    .line 126
    .local v18, "isHighway2Link":Z
    :goto_6
    move/from16 v0, v22

    if-le v2, v0, :cond_9

    if-nez v18, :cond_9

    .line 128
    move/from16 v22, v2

    .line 131
    :cond_9
    iget v0, v4, Lbtools/router/MessageData;->costfactor:F

    move/from16 v35, v0

    const/high16 v36, 0x41a00000    # 20.0f

    cmpg-float v35, v35, v36

    if-gez v35, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v35

    cmpg-float v35, v35, v24

    if-gez v35, :cond_a

    .line 133
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 136
    :cond_a
    move/from16 v0, v26

    if-lt v2, v0, :cond_8

    .line 141
    invoke-virtual {v4}, Lbtools/router/MessageData;->isBadOneway()Z

    move-result v35

    if-nez v35, :cond_8

    .line 146
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v35

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v36

    sub-float v35, v35, v36

    const/high16 v36, 0x42a00000    # 80.0f

    cmpl-float v35, v35, v36

    if-gtz v35, :cond_8

    .line 151
    move/from16 v0, v23

    if-le v2, v0, :cond_b

    .line 153
    move/from16 v23, v2

    .line 155
    :cond_b
    cmpl-float v35, v3, v21

    if-lez v35, :cond_c

    .line 157
    move/from16 v21, v3

    .line 159
    :cond_c
    cmpg-float v35, v3, v25

    if-gez v35, :cond_8

    .line 161
    move/from16 v25, v3

    goto :goto_5

    .line 124
    .end local v18    # "isHighway2Link":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_6

    .line 166
    .end local v2    # "badPrio":I
    .end local v3    # "badTurn":F
    .end local v4    # "badWay":Lbtools/router/MessageData;
    :cond_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v34

    sub-float v34, v34, v24

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4034000000000000L    # 20.0

    cmpl-double v34, v34, v36

    if-lez v34, :cond_15

    const/4 v12, 0x1

    .line 171
    .local v12, "hasSomethingMoreStraight":Z
    :goto_7
    if-nez v12, :cond_10

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_f

    if-eqz v19, :cond_10

    :cond_f
    move/from16 v0, v23

    if-le v0, v6, :cond_16

    :cond_10
    const/16 v33, 0x1

    .line 175
    .local v33, "unconditionalTrigger":Z
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_17

    const/4 v5, 0x1

    .line 177
    .local v5, "conditionalTrigger":Z
    :goto_9
    if-nez v33, :cond_11

    if-eqz v5, :cond_14

    .line 179
    :cond_11
    move/from16 v0, v32

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->angle:F

    .line 180
    invoke-virtual/range {v16 .. v16}, Lbtools/router/VoiceHint;->calcCommand()V

    .line 181
    move-object/from16 v0, v16

    iget v0, v0, Lbtools/router/VoiceHint;->cmd:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_18

    const/16 v20, 0x1

    .line 182
    .local v20, "isStraight":Z
    :goto_a
    if-nez v33, :cond_19

    if-eqz v20, :cond_19

    const/16 v34, 0x1

    :goto_b
    move/from16 v0, v34

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lbtools/router/VoiceHint;->needsRealTurn:Z

    .line 185
    cmpg-float v34, v21, v32

    if-gez v34, :cond_12

    const/high16 v34, 0x42340000    # 45.0f

    sub-float v35, v32, v34

    const/16 v34, 0x0

    cmpl-float v34, v32, v34

    if-lez v34, :cond_1a

    move/from16 v34, v32

    :goto_c
    sub-float v34, v35, v34

    cmpl-float v34, v21, v34

    if-lez v34, :cond_12

    .line 187
    const/16 v34, 0x9

    move/from16 v0, v34

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->cmd:I

    .line 189
    :cond_12
    cmpl-float v34, v25, v32

    if-lez v34, :cond_13

    const/high16 v34, 0x42340000    # 45.0f

    add-float v34, v34, v32

    const/16 v35, 0x0

    cmpg-float v35, v32, v35

    if-gez v35, :cond_1b

    .end local v32    # "turnAngle":F
    :goto_d
    sub-float v34, v34, v32

    cmpg-float v34, v25, v34

    if-gez v34, :cond_13

    .line 191
    const/16 v34, 0x8

    move/from16 v0, v34

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->cmd:I

    .line 194
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lbtools/router/VoiceHintProcessor;->sumNonConsumedWithinCatchingRange(Ljava/util/List;I)F

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/VoiceHint;->angle:F

    .line 195
    move-object/from16 v0, v16

    iput-wide v10, v0, Lbtools/router/VoiceHint;->distanceToNext:D

    .line 196
    const-wide/16 v10, 0x0

    .line 197
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v20    # "isStraight":Z
    :cond_14
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/VoiceHintProcessor;->catchingRange:D

    move-wide/from16 v34, v0

    cmpg-double v34, v10, v34

    if-gez v34, :cond_4

    .line 201
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lbtools/router/VoiceHint;

    move-object/from16 v0, v34

    iget v0, v0, Lbtools/router/VoiceHint;->angle:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lbtools/router/VoiceHintProcessor;->sumNonConsumedWithinCatchingRange(Ljava/util/List;I)F

    move-result v36

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lbtools/router/VoiceHint;->angle:F

    goto/16 :goto_4

    .line 166
    .end local v5    # "conditionalTrigger":Z
    .end local v12    # "hasSomethingMoreStraight":Z
    .end local v33    # "unconditionalTrigger":Z
    .restart local v32    # "turnAngle":F
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 171
    .restart local v12    # "hasSomethingMoreStraight":Z
    :cond_16
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 175
    .restart local v33    # "unconditionalTrigger":Z
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 181
    .restart local v5    # "conditionalTrigger":Z
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 182
    .restart local v20    # "isStraight":Z
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_b

    .line 185
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_c

    .line 189
    :cond_1b
    const/16 v32, 0x0

    goto :goto_d

    .line 208
    .end local v5    # "conditionalTrigger":Z
    .end local v6    # "currentPrio":I
    .end local v12    # "hasSomethingMoreStraight":Z
    .end local v16    # "input":Lbtools/router/VoiceHint;
    .end local v19    # "isLink2Highway":Z
    .end local v20    # "isStraight":Z
    .end local v21    # "maxAngle":F
    .end local v22    # "maxPrioAll":I
    .end local v23    # "maxPrioCandidates":I
    .end local v24    # "minAbsAngeRaw":F
    .end local v25    # "minAngle":F
    .end local v26    # "minPrio":I
    .end local v27    # "oldPrio":I
    .end local v32    # "turnAngle":F
    .end local v33    # "unconditionalTrigger":Z
    :cond_1c
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v29, "results2":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v15

    .line 210
    .local v15, "i":I
    :cond_1d
    :goto_e
    if-lez v15, :cond_23

    .line 212
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lbtools/router/VoiceHint;

    .line 213
    .local v13, "hint":Lbtools/router/VoiceHint;
    iget v0, v13, Lbtools/router/VoiceHint;->cmd:I

    move/from16 v34, v0

    if-nez v34, :cond_1e

    .line 215
    invoke-virtual {v13}, Lbtools/router/VoiceHint;->calcCommand()V

    .line 217
    :cond_1e
    iget-boolean v0, v13, Lbtools/router/VoiceHint;->needsRealTurn:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1f

    iget v0, v13, Lbtools/router/VoiceHint;->cmd:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1d

    .line 219
    :cond_1f
    iget-wide v8, v13, Lbtools/router/VoiceHint;->distanceToNext:D

    .line 221
    .local v8, "dist":D
    :cond_20
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/VoiceHintProcessor;->catchingRange:D

    move-wide/from16 v34, v0

    cmpg-double v34, v8, v34

    if-gez v34, :cond_21

    if-lez v15, :cond_21

    .line 223
    add-int/lit8 v34, v15, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbtools/router/VoiceHint;

    .line 224
    .local v7, "h2":Lbtools/router/VoiceHint;
    iget-wide v8, v7, Lbtools/router/VoiceHint;->distanceToNext:D

    .line 225
    iget-wide v0, v13, Lbtools/router/VoiceHint;->distanceToNext:D

    move-wide/from16 v34, v0

    add-double v34, v34, v8

    move-wide/from16 v0, v34

    iput-wide v0, v13, Lbtools/router/VoiceHint;->distanceToNext:D

    .line 226
    iget v0, v13, Lbtools/router/VoiceHint;->angle:F

    move/from16 v34, v0

    iget v0, v7, Lbtools/router/VoiceHint;->angle:F

    move/from16 v35, v0

    add-float v34, v34, v35

    move/from16 v0, v34

    iput v0, v13, Lbtools/router/VoiceHint;->angle:F

    .line 227
    add-int/lit8 v15, v15, -0x1

    .line 228
    invoke-virtual {v7}, Lbtools/router/VoiceHint;->isRoundabout()Z

    move-result v34

    if-eqz v34, :cond_20

    .line 230
    iget v0, v13, Lbtools/router/VoiceHint;->angle:F

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v7, Lbtools/router/VoiceHint;->angle:F

    .line 231
    move-object v13, v7

    .line 236
    .end local v7    # "h2":Lbtools/router/VoiceHint;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/router/VoiceHintProcessor;->explicitRoundabouts:Z

    move/from16 v34, v0

    if-nez v34, :cond_22

    .line 238
    const/16 v34, 0x0

    move/from16 v0, v34

    iput v0, v13, Lbtools/router/VoiceHint;->roundaboutExit:I

    .line 240
    :cond_22
    invoke-virtual {v13}, Lbtools/router/VoiceHint;->calcCommand()V

    .line 241
    move-object/from16 v0, v29

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 244
    .end local v8    # "dist":D
    .end local v13    # "hint":Lbtools/router/VoiceHint;
    :cond_23
    return-object v29
.end method
