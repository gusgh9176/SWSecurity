.class final Lbtools/router/KinematicModelDummy;
.super Lbtools/router/KinematicModel;
.source "KinematicModelDummy.java"


# instance fields
.field public timecost0:D

.field public useNewtonApprox:Z

.field public xweight:D


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const-wide v10, 0x400aaaaaaaaaaaaaL    # 3.333333333333333

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 25
    invoke-direct {p0}, Lbtools/router/KinematicModel;-><init>()V

    .line 40
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->f_air:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->p_standby:D

    sub-double/2addr v0, v2

    div-double v0, v4, v0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->xweight:D

    .line 41
    iget-wide v0, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    div-double v0, v4, v0

    iget-wide v2, p0, Lbtools/router/KinematicModelDummy;->xweight:D

    iget-wide v4, p0, Lbtools/router/KinematicModelDummy;->f_roll:D

    iget-wide v6, p0, Lbtools/router/KinematicModelDummy;->f_air:D

    iget-wide v8, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, p0, Lbtools/router/KinematicModelDummy;->p_standby:D

    iget-wide v8, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->timecost0:D

    .line 26
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->turnAngleDecayLength:D

    .line 27
    const-wide/high16 v0, 0x406d000000000000L    # 232.0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->f_roll:D

    .line 28
    const-wide v0, 0x3fd999999999999aL    # 0.4

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->f_air:D

    .line 29
    const-wide v0, 0x4082c00000000000L    # 600.0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->f_recup:D

    .line 30
    const-wide v0, 0x406f400000000000L    # 250.0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->p_standby:D

    .line 31
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->recup_efficiency:D

    .line 32
    const-wide v0, 0x4099a00000000000L    # 1640.0

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->totalweight:D

    .line 33
    const-wide v0, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    iput-wide v0, p0, Lbtools/router/KinematicModelDummy;->vmax:D

    .line 34
    iput-wide v10, p0, Lbtools/router/KinematicModelDummy;->leftWaySpeed:D

    .line 35
    iput-wide v10, p0, Lbtools/router/KinematicModelDummy;->rightWaySpeed:D

    .line 36
    return-void
.end method


# virtual methods
.method public createPath()Lbtools/router/OsmPath;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPrePath()Lbtools/router/OsmPrePath;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeMaxspeed()F
    .locals 1

    .prologue
    .line 60
    const v0, 0x4479c000    # 999.0f

    return v0
.end method

.method public getWayMaxspeed()F
    .locals 1

    .prologue
    .line 50
    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public getWayMinspeed()F
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lbtools/expressions/BExpressionContextWay;Lbtools/expressions/BExpressionContextNode;)V
    .locals 0
    .param p1, "expctxWay"    # Lbtools/expressions/BExpressionContextWay;
    .param p2, "expctxNode"    # Lbtools/expressions/BExpressionContextNode;

    .prologue
    .line 46
    return-void
.end method
