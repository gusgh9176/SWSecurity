.class Lbtools/router/KinematicModel;
.super Lbtools/router/OsmPathModel;
.source "KinematicModel.java"


# instance fields
.field protected ctxNode:Lbtools/expressions/BExpressionContextNode;

.field protected ctxWay:Lbtools/expressions/BExpressionContextWay;

.field public f_air:D

.field public f_recup:D

.field public f_roll:D

.field public leftWaySpeed:D

.field private nodeIdxMaxspeed:I

.field public p_standby:D

.field public recup_efficiency:D

.field public rightWaySpeed:D

.field public timecost0:D

.field public totalweight:D

.field public turnAngleDecayLength:D

.field public vmax:D

.field private wayIdxMaxspeed:I

.field private wayIdxMinspeed:I

.field public xweight:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lbtools/router/OsmPathModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createPath()Lbtools/router/OsmPath;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lbtools/router/KinematicPath;

    invoke-direct {v0}, Lbtools/router/KinematicPath;-><init>()V

    return-object v0
.end method

.method public createPrePath()Lbtools/router/OsmPrePath;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lbtools/router/KinematicPrePath;

    invoke-direct {v0}, Lbtools/router/KinematicPrePath;-><init>()V

    return-object v0
.end method

.method public getMaxKineticEnergy()D
    .locals 8

    .prologue
    .line 95
    invoke-virtual {p0}, Lbtools/router/KinematicModel;->getWayMaxspeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lbtools/router/KinematicModel;->getWayMinspeed()F

    move-result v4

    float-to-double v4, v4

    iget-wide v6, p0, Lbtools/router/KinematicModel;->vmax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 96
    .local v0, "mspeed":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lbtools/router/KinematicModel;->totalweight:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getNodeMaxspeed()F
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lbtools/router/KinematicModel;->ctxNode:Lbtools/expressions/BExpressionContextNode;

    iget v1, p0, Lbtools/router/KinematicModel;->nodeIdxMaxspeed:I

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionContextNode;->getBuildInVariable(I)F

    move-result v0

    const v1, 0x40666666    # 3.6f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWayMaxspeed()F
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lbtools/router/KinematicModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    iget v1, p0, Lbtools/router/KinematicModel;->wayIdxMaxspeed:I

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    const v1, 0x40666666    # 3.6f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWayMinspeed()F
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lbtools/router/KinematicModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    iget v1, p0, Lbtools/router/KinematicModel;->wayIdxMinspeed:I

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    const v1, 0x40666666    # 3.6f

    div-float/2addr v0, v1

    return v0
.end method

.method public init(Lbtools/expressions/BExpressionContextWay;Lbtools/expressions/BExpressionContextNode;)V
    .locals 13
    .param p1, "expctxWay"    # Lbtools/expressions/BExpressionContextWay;
    .param p2, "expctxNode"    # Lbtools/expressions/BExpressionContextNode;

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x0

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    .line 52
    iput-object p1, p0, Lbtools/router/KinematicModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 53
    iput-object p2, p0, Lbtools/router/KinematicModel;->ctxNode:Lbtools/expressions/BExpressionContextNode;

    .line 55
    move-object v0, p1

    .line 57
    .local v0, "expctxGlobal":Lbtools/expressions/BExpressionContext;
    const-string v1, "turnAngleDecayLength"

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->turnAngleDecayLength:D

    .line 58
    const-string v1, "f_roll"

    const/high16 v2, 0x43680000    # 232.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->f_roll:D

    .line 59
    const-string v1, "f_air"

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->f_air:D

    .line 60
    const-string v1, "f_recup"

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->f_recup:D

    .line 61
    const-string v1, "p_standby"

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->p_standby:D

    .line 62
    const-string v1, "recup_efficiency"

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->recup_efficiency:D

    .line 63
    const-string v1, "totalweight"

    const/high16 v2, 0x44cd0000    # 1640.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lbtools/router/KinematicModel;->totalweight:D

    .line 64
    const-string v1, "vmax"

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1, v2}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lbtools/router/KinematicModel;->vmax:D

    .line 65
    const-string v1, "leftWaySpeed"

    invoke-virtual {v0, v1, v8}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lbtools/router/KinematicModel;->leftWaySpeed:D

    .line 66
    const-string v1, "rightWaySpeed"

    invoke-virtual {v0, v1, v8}, Lbtools/expressions/BExpressionContext;->getVariableValue(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lbtools/router/KinematicModel;->rightWaySpeed:D

    .line 68
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lbtools/router/KinematicModel;->f_air:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lbtools/router/KinematicModel;->vmax:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lbtools/router/KinematicModel;->vmax:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lbtools/router/KinematicModel;->vmax:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lbtools/router/KinematicModel;->p_standby:D

    sub-double/2addr v2, v4

    div-double v2, v6, v2

    iput-wide v2, p0, Lbtools/router/KinematicModel;->xweight:D

    .line 69
    iget-wide v2, p0, Lbtools/router/KinematicModel;->vmax:D

    div-double v2, v6, v2

    iget-wide v4, p0, Lbtools/router/KinematicModel;->xweight:D

    iget-wide v6, p0, Lbtools/router/KinematicModel;->f_roll:D

    iget-wide v8, p0, Lbtools/router/KinematicModel;->f_air:D

    iget-wide v10, p0, Lbtools/router/KinematicModel;->vmax:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lbtools/router/KinematicModel;->vmax:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-wide v8, p0, Lbtools/router/KinematicModel;->p_standby:D

    iget-wide v10, p0, Lbtools/router/KinematicModel;->vmax:D

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lbtools/router/KinematicModel;->timecost0:D

    .line 71
    iget-object v1, p0, Lbtools/router/KinematicModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    const-string v2, "maxspeed"

    invoke-virtual {v1, v2, v12}, Lbtools/expressions/BExpressionContextWay;->getOutputVariableIndex(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lbtools/router/KinematicModel;->wayIdxMaxspeed:I

    .line 72
    iget-object v1, p0, Lbtools/router/KinematicModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    const-string v2, "minspeed"

    invoke-virtual {v1, v2, v12}, Lbtools/expressions/BExpressionContextWay;->getOutputVariableIndex(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lbtools/router/KinematicModel;->wayIdxMinspeed:I

    .line 74
    iget-object v1, p0, Lbtools/router/KinematicModel;->ctxNode:Lbtools/expressions/BExpressionContextNode;

    const-string v2, "maxspeed"

    invoke-virtual {v1, v2, v12}, Lbtools/expressions/BExpressionContextNode;->getOutputVariableIndex(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lbtools/router/KinematicModel;->nodeIdxMaxspeed:I

    .line 75
    return-void
.end method
