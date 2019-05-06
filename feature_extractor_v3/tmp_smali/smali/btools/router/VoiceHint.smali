.class public Lbtools/router/VoiceHint;
.super Ljava/lang/Object;
.source "VoiceHint.java"


# static fields
.field static final C:I = 0x1

.field static final KL:I = 0x8

.field static final KR:I = 0x9

.field static final OFFR:I = 0xc

.field static final RNDB:I = 0xd

.field static final RNLB:I = 0xe

.field static final TL:I = 0x2

.field static final TR:I = 0x5

.field static final TRU:I = 0xb

.field static final TSHL:I = 0x4

.field static final TSHR:I = 0x7

.field static final TSLL:I = 0x3

.field static final TSLR:I = 0x6

.field static final TU:I = 0xa


# instance fields
.field angle:F

.field badWays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/MessageData;",
            ">;"
        }
    .end annotation
.end field

.field cmd:I

.field distanceToNext:D

.field goodWay:Lbtools/router/MessageData;

.field ilat:I

.field ilon:I

.field indexInTrack:I

.field needsRealTurn:Z

.field oldWay:Lbtools/router/MessageData;

.field roundaboutExit:I

.field selev:S

.field turnAngleConsumed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendTurnGeometry(Ljava/lang/StringBuilder;Lbtools/router/MessageData;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "msg"    # Lbtools/router/MessageData;

    .prologue
    .line 276
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lbtools/router/MessageData;->turnangle:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lbtools/router/MessageData;->priorityclassifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method


# virtual methods
.method public addBadWay(Lbtools/router/MessageData;)V
    .locals 1
    .param p1, "badWay"    # Lbtools/router/MessageData;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    .line 60
    :cond_1
    iget-object v0, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public calcCommand()V
    .locals 8

    .prologue
    .line 149
    const/high16 v3, -0x3ccb0000    # -181.0f

    .line 150
    .local v3, "lowerBadWayAngle":F
    const/high16 v2, 0x43350000    # 181.0f

    .line 151
    .local v2, "higherBadWayAngle":F
    iget-object v4, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 153
    iget-object v4, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MessageData;

    .line 155
    .local v0, "badWay":Lbtools/router/MessageData;
    invoke-virtual {v0}, Lbtools/router/MessageData;->isBadOneway()Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    iget v5, v0, Lbtools/router/MessageData;->turnangle:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    iget v5, v0, Lbtools/router/MessageData;->turnangle:F

    iget-object v6, p0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    iget v6, v6, Lbtools/router/MessageData;->turnangle:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 161
    iget v3, v0, Lbtools/router/MessageData;->turnangle:F

    .line 163
    :cond_1
    iget v5, v0, Lbtools/router/MessageData;->turnangle:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    iget v5, v0, Lbtools/router/MessageData;->turnangle:F

    iget-object v6, p0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    iget v6, v6, Lbtools/router/MessageData;->turnangle:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 165
    iget v2, v0, Lbtools/router/MessageData;->turnangle:F

    goto :goto_0

    .line 170
    .end local v0    # "badWay":Lbtools/router/MessageData;
    :cond_2
    iget v1, p0, Lbtools/router/VoiceHint;->angle:F

    .line 173
    .local v1, "cmdAngle":F
    iget v4, p0, Lbtools/router/VoiceHint;->angle:F

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lbtools/router/VoiceHint;->angle:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    .line 175
    :cond_3
    iget-object v4, p0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    iget v1, v4, Lbtools/router/MessageData;->turnangle:F

    .line 178
    :cond_4
    iget v4, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    if-lez v4, :cond_6

    .line 180
    const/16 v4, 0xd

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    .line 255
    :cond_5
    :goto_1
    return-void

    .line 182
    :cond_6
    iget v4, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    if-gez v4, :cond_7

    .line 184
    const/16 v4, 0xe

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 186
    :cond_7
    float-to-double v4, v1

    const-wide v6, -0x3f9c200000000000L    # -159.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    .line 188
    const/16 v4, 0xa

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 190
    :cond_8
    float-to-double v4, v1

    const-wide v6, -0x3f9f200000000000L    # -135.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 192
    const/4 v4, 0x4

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 194
    :cond_9
    float-to-double v4, v1

    const-wide v6, -0x3fb9800000000000L    # -45.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_c

    .line 197
    float-to-double v4, v2

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a

    float-to-double v4, v2

    const-wide/high16 v6, -0x3fd2000000000000L    # -15.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    float-to-double v4, v3

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    .line 199
    const/4 v4, 0x4

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 201
    :cond_a
    float-to-double v4, v3

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b

    float-to-double v4, v3

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b

    .line 203
    const/4 v4, 0x3

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 207
    :cond_b
    const/4 v4, 0x2

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto :goto_1

    .line 210
    :cond_c
    float-to-double v4, v1

    const-wide/high16 v6, -0x3fcb000000000000L    # -21.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_d

    .line 212
    iget v4, p0, Lbtools/router/VoiceHint;->cmd:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    .line 214
    const/4 v4, 0x3

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 217
    :cond_d
    float-to-double v4, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_e

    .line 219
    iget v4, p0, Lbtools/router/VoiceHint;->cmd:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    iget v4, p0, Lbtools/router/VoiceHint;->cmd:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 221
    const/4 v4, 0x1

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 224
    :cond_e
    float-to-double v4, v1

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_f

    .line 226
    iget v4, p0, Lbtools/router/VoiceHint;->cmd:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 228
    const/4 v4, 0x6

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 231
    :cond_f
    float-to-double v4, v1

    const-wide v6, 0x4060e00000000000L    # 135.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_12

    .line 234
    float-to-double v4, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_10

    float-to-double v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_10

    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_10

    .line 236
    const/4 v4, 0x6

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 238
    :cond_10
    float-to-double v4, v3

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_11

    float-to-double v4, v3

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_11

    float-to-double v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_11

    .line 240
    const/4 v4, 0x7

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 244
    :cond_11
    const/4 v4, 0x5

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 247
    :cond_12
    float-to-double v4, v1

    const-wide v6, 0x4063e00000000000L    # 159.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_13

    .line 249
    const/4 v4, 0x7

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1

    .line 253
    :cond_13
    const/16 v4, 0xb

    iput v4, p0, Lbtools/router/VoiceHint;->cmd:I

    goto/16 :goto_1
.end method

.method public formatGeometry()Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    iget-object v3, p0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 260
    .local v1, "oldPrio":F
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    iget-object v3, p0, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    invoke-direct {p0, v2, v3}, Lbtools/router/VoiceHint;->appendTurnGeometry(Ljava/lang/StringBuilder;Lbtools/router/MessageData;)V

    .line 263
    iget-object v3, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lbtools/router/VoiceHint;->badWays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MessageData;

    .line 267
    .local v0, "badWay":Lbtools/router/MessageData;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-direct {p0, v2, v0}, Lbtools/router/VoiceHint;->appendTurnGeometry(Ljava/lang/StringBuilder;Lbtools/router/MessageData;)V

    goto :goto_1

    .line 259
    .end local v0    # "badWay":Lbtools/router/MessageData;
    .end local v1    # "oldPrio":F
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    iget v3, v3, Lbtools/router/MessageData;->priorityclassifier:I

    int-to-float v1, v3

    goto :goto_0

    .line 271
    .restart local v1    # "oldPrio":F
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCommandString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lbtools/router/VoiceHint;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/VoiceHint;->cmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_1
    const-string v0, "TU"

    .line 79
    :goto_0
    return-object v0

    .line 68
    :pswitch_2
    const-string v0, "TSHL"

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v0, "TL"

    goto :goto_0

    .line 70
    :pswitch_4
    const-string v0, "TSLL"

    goto :goto_0

    .line 71
    :pswitch_5
    const-string v0, "KL"

    goto :goto_0

    .line 72
    :pswitch_6
    const-string v0, "C"

    goto :goto_0

    .line 73
    :pswitch_7
    const-string v0, "KR"

    goto :goto_0

    .line 74
    :pswitch_8
    const-string v0, "TSLR"

    goto :goto_0

    .line 75
    :pswitch_9
    const-string v0, "TR"

    goto :goto_0

    .line 76
    :pswitch_a
    const-string v0, "TSHR"

    goto :goto_0

    .line 77
    :pswitch_b
    const-string v0, "TRU"

    goto :goto_0

    .line 78
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNDB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNLB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getLocusAction()I
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lbtools/router/VoiceHint;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/VoiceHint;->cmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_1
    const/16 v0, 0xd

    .line 142
    :goto_0
    return v0

    .line 131
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 132
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 133
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 135
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 137
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 138
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    .line 139
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    .line 140
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 141
    :pswitch_c
    iget v0, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 142
    :pswitch_d
    iget v0, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    rsub-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget v0, p0, Lbtools/router/VoiceHint;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/VoiceHint;->cmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_1
    const-string v0, "u-turn"

    .line 121
    :goto_0
    return-object v0

    .line 110
    :pswitch_2
    const-string v0, "sharp left"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "left"

    goto :goto_0

    .line 112
    :pswitch_4
    const-string v0, "slight left"

    goto :goto_0

    .line 113
    :pswitch_5
    const-string v0, "keep left"

    goto :goto_0

    .line 114
    :pswitch_6
    const-string v0, "straight"

    goto :goto_0

    .line 115
    :pswitch_7
    const-string v0, "keep right"

    goto :goto_0

    .line 116
    :pswitch_8
    const-string v0, "slight right"

    goto :goto_0

    .line 117
    :pswitch_9
    const-string v0, "right"

    goto :goto_0

    .line 118
    :pswitch_a
    const-string v0, "sharp right"

    goto :goto_0

    .line 119
    :pswitch_b
    const-string v0, "u-turn"

    goto :goto_0

    .line 120
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Take exit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Take exit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSymbolString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lbtools/router/VoiceHint;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/VoiceHint;->cmd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_1
    const-string v0, "TU"

    .line 100
    :goto_0
    return-object v0

    .line 89
    :pswitch_2
    const-string v0, "TSHL"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "Left"

    goto :goto_0

    .line 91
    :pswitch_4
    const-string v0, "TSLL"

    goto :goto_0

    .line 92
    :pswitch_5
    const-string v0, "TSLL"

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "Straight"

    goto :goto_0

    .line 94
    :pswitch_7
    const-string v0, "TSLR"

    goto :goto_0

    .line 95
    :pswitch_8
    const-string v0, "TSLR"

    goto :goto_0

    .line 96
    :pswitch_9
    const-string v0, "Right"

    goto :goto_0

    .line 97
    :pswitch_a
    const-string v0, "TSHR"

    goto :goto_0

    .line 98
    :pswitch_b
    const-string v0, "TU"

    goto :goto_0

    .line 99
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNDB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNLB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method isRoundabout()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lbtools/router/VoiceHint;->roundaboutExit:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
