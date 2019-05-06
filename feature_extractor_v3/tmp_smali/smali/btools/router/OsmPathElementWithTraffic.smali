.class public final Lbtools/router/OsmPathElementWithTraffic;
.super Lbtools/router/OsmPathElement;
.source "OsmPathElementWithTraffic.java"


# static fields
.field public static maxtraffic:D


# instance fields
.field private farTraffic:F

.field private nearTraffic:F

.field private registerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lbtools/router/OsmPathElementWithTraffic;->maxtraffic:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lbtools/router/OsmPathElement;-><init>()V

    return-void
.end method


# virtual methods
.method public addTraffic(F)V
    .locals 1
    .param p1, "traffic"    # F

    .prologue
    .line 37
    iget v0, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    add-float/2addr v0, p1

    iput v0, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    .line 38
    iget v0, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    add-float/2addr v0, p1

    iput v0, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    .line 39
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    iget v1, p0, Lbtools/router/OsmPathElementWithTraffic;->registerCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/router/OsmPathElementWithTraffic;->registerCount:I

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lbtools/router/OsmPathElementWithTraffic;->origin:Lbtools/router/OsmPathElement;

    instance-of v1, v1, Lbtools/router/OsmPathElementWithTraffic;

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lbtools/router/OsmPathElementWithTraffic;->origin:Lbtools/router/OsmPathElement;

    check-cast v0, Lbtools/router/OsmPathElementWithTraffic;

    .line 25
    .local v0, "ot":Lbtools/router/OsmPathElementWithTraffic;
    invoke-virtual {v0}, Lbtools/router/OsmPathElementWithTraffic;->register()V

    .line 26
    iget v1, v0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    iget v2, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    add-float/2addr v1, v2

    iput v1, v0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    .line 27
    iget v1, v0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    iget v2, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    add-float/2addr v1, v2

    iput v1, v0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    .line 28
    iput v3, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    .line 29
    iput v3, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    .line 32
    .end local v0    # "ot":Lbtools/router/OsmPathElementWithTraffic;
    :cond_0
    return-void
.end method

.method public unregister(Lbtools/router/RoutingContext;)Z
    .locals 13
    .param p1, "rc"    # Lbtools/router/RoutingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    .line 47
    iget v4, p0, Lbtools/router/OsmPathElementWithTraffic;->registerCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lbtools/router/OsmPathElementWithTraffic;->registerCount:I

    if-nez v4, :cond_5

    .line 49
    iget-object v4, p0, Lbtools/router/OsmPathElementWithTraffic;->origin:Lbtools/router/OsmPathElement;

    instance-of v4, v4, Lbtools/router/OsmPathElementWithTraffic;

    if-eqz v4, :cond_3

    .line 51
    iget-object v1, p0, Lbtools/router/OsmPathElementWithTraffic;->origin:Lbtools/router/OsmPathElement;

    check-cast v1, Lbtools/router/OsmPathElementWithTraffic;

    .line 53
    .local v1, "ot":Lbtools/router/OsmPathElementWithTraffic;
    iget v4, p0, Lbtools/router/OsmPathElementWithTraffic;->cost:I

    iget v5, v1, Lbtools/router/OsmPathElementWithTraffic;->cost:I

    sub-int v0, v4, v5

    .line 54
    .local v0, "costdelta":I
    iget v4, v1, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    float-to-double v4, v4

    iget v6, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    float-to-double v6, v6

    neg-int v8, v0

    int-to-double v8, v8

    iget-wide v10, p1, Lbtools/router/RoutingContext;->farTrafficDecayLength:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v1, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    .line 55
    iget v4, v1, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    float-to-double v4, v4

    iget v6, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    float-to-double v6, v6

    neg-int v8, v0

    int-to-double v8, v8

    iget-wide v10, p1, Lbtools/router/RoutingContext;->nearTrafficDecayLength:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v1, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    .line 57
    if-lez v0, :cond_0

    iget v4, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    float-to-double v4, v4

    sget-wide v6, Lbtools/router/OsmPathElementWithTraffic;->maxtraffic:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    iget v4, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    float-to-double v4, v4

    sput-wide v4, Lbtools/router/OsmPathElementWithTraffic;->maxtraffic:D

    .line 59
    :cond_0
    iget v4, p0, Lbtools/router/OsmPathElementWithTraffic;->cost:I

    iget v5, v1, Lbtools/router/OsmPathElementWithTraffic;->cost:I

    if-ne v4, v5, :cond_4

    move v2, v3

    .line 61
    .local v2, "t2":I
    :goto_0
    const/16 v4, 0xfa0

    if-gt v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    .line 64
    :cond_1
    iget-object v3, p1, Lbtools/router/RoutingContext;->trafficOutputStream:Ljava/io/DataOutput;

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, p1, Lbtools/router/RoutingContext;->trafficOutputStream:Ljava/io/DataOutput;

    invoke-virtual {p0}, Lbtools/router/OsmPathElementWithTraffic;->getIdFromPos()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    .line 67
    iget-object v3, p1, Lbtools/router/RoutingContext;->trafficOutputStream:Ljava/io/DataOutput;

    invoke-virtual {v1}, Lbtools/router/OsmPathElementWithTraffic;->getIdFromPos()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    .line 68
    iget-object v3, p1, Lbtools/router/RoutingContext;->trafficOutputStream:Ljava/io/DataOutput;

    invoke-interface {v3, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 71
    :cond_2
    iput v12, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    .line 72
    iput v12, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    .line 74
    .end local v0    # "costdelta":I
    .end local v1    # "ot":Lbtools/router/OsmPathElementWithTraffic;
    .end local v2    # "t2":I
    :cond_3
    const/4 v3, 0x1

    .line 76
    :goto_1
    return v3

    .line 59
    .restart local v0    # "costdelta":I
    .restart local v1    # "ot":Lbtools/router/OsmPathElementWithTraffic;
    :cond_4
    iget-wide v4, p1, Lbtools/router/RoutingContext;->farTrafficWeight:D

    iget v6, p0, Lbtools/router/OsmPathElementWithTraffic;->farTraffic:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lbtools/router/RoutingContext;->nearTrafficWeight:D

    iget v8, p0, Lbtools/router/OsmPathElementWithTraffic;->nearTraffic:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_0

    .line 76
    .end local v0    # "costdelta":I
    .end local v1    # "ot":Lbtools/router/OsmPathElementWithTraffic;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method
