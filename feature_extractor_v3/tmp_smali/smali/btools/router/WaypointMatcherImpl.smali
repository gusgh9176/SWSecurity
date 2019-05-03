.class public final Lbtools/router/WaypointMatcherImpl;
.super Ljava/lang/Object;
.source "WaypointMatcherImpl.java"

# interfaces
.implements Lbtools/codec/WaypointMatcher;


# instance fields
.field private anyUpdate:Z

.field private latLast:I

.field private latStart:I

.field private lonLast:I

.field private lonStart:I

.field private waypoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/MatchedWaypoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;D)V
    .locals 4
    .param p2, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/MatchedWaypoint;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "waypoints":Ljava/util/List;, "Ljava/util/List<Lbtools/router/MatchedWaypoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbtools/router/WaypointMatcherImpl;->waypoints:Ljava/util/List;

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MatchedWaypoint;

    .line 30
    .local v0, "mwp":Lbtools/router/MatchedWaypoint;
    const-wide v2, 0x40fb188000000000L    # 110984.0

    mul-double/2addr v2, p2

    iput-wide v2, v0, Lbtools/router/MatchedWaypoint;->radius:D

    goto :goto_0

    .line 32
    .end local v0    # "mwp":Lbtools/router/MatchedWaypoint;
    :cond_0
    return-void
.end method

.method private checkSegment(IIII)V
    .locals 54
    .param p1, "lon1"    # I
    .param p2, "lat1"    # I
    .param p3, "lon2"    # I
    .param p4, "lat2"    # I

    .prologue
    .line 38
    const v46, 0x55d4a80

    sub-int v46, p4, v46

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0x3e4a80b931cd513cL    # 1.234134E-8

    mul-double v14, v46, v48

    .line 39
    .local v14, "l":D
    mul-double v16, v14, v14

    .line 40
    .local v16, "l2":D
    mul-double v18, v16, v16

    .line 41
    .local v18, "l4":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    sub-double v46, v46, v16

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    div-double v48, v18, v48

    add-double v4, v46, v48

    .line 42
    .local v4, "coslat":D
    const-wide v46, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v6, v4, v46

    .line 44
    .local v6, "coslat6":D
    sub-int v46, p3, p1

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v10, v46, v6

    .line 45
    .local v10, "dx":D
    sub-int v46, p4, p2

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v12, v46, v48

    .line 46
    .local v12, "dy":D
    mul-double v46, v12, v12

    mul-double v48, v10, v10

    add-double v46, v46, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 47
    .local v8, "d":D
    const-wide/16 v46, 0x0

    cmpl-double v46, v8, v46

    if-nez v46, :cond_1

    .line 105
    :cond_0
    return-void

    .line 50
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/WaypointMatcherImpl;->waypoints:Ljava/util/List;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :cond_2
    :goto_0
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_0

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lbtools/router/MatchedWaypoint;

    .line 52
    .local v20, "mwp":Lbtools/router/MatchedWaypoint;
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v21, v0

    .line 54
    .local v21, "wp":Lbtools/router/OsmNodeNamed;
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v46, v0

    sub-int v46, p1, v46

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v34, v46, v6

    .line 55
    .local v34, "x1":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v46, v0

    sub-int v46, p2, v46

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v50, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v40, v46, v50

    .line 56
    .local v40, "y1":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v46, v0

    sub-int v46, p3, v46

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v36, v46, v6

    .line 57
    .local v36, "x2":D
    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v46, v0

    sub-int v46, p4, v46

    move/from16 v0, v46

    int-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v50, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v42, v46, v50

    .line 58
    .local v42, "y2":D
    mul-double v46, v34, v34

    mul-double v50, v40, v40

    add-double v22, v46, v50

    .line 59
    .local v22, "r12":D
    mul-double v46, v36, v36

    mul-double v50, v42, v42

    add-double v24, v46, v50

    .line 60
    .local v24, "r22":D
    cmpg-double v46, v22, v24

    if-gez v46, :cond_6

    mul-double v46, v40, v10

    mul-double v50, v34, v12

    sub-double v46, v46, v50

    :goto_1
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->abs(D)D

    move-result-wide v46

    div-double v26, v46, v8

    .line 62
    .local v26, "radius":D
    move-object/from16 v0, v20

    iget-wide v0, v0, Lbtools/router/MatchedWaypoint;->radius:D

    move-wide/from16 v46, v0

    cmpg-double v46, v26, v46

    if-gez v46, :cond_2

    .line 64
    mul-double v46, v34, v10

    mul-double v50, v40, v12

    add-double v28, v46, v50

    .line 65
    .local v28, "s1":D
    mul-double v46, v36, v10

    mul-double v50, v42, v12

    add-double v30, v46, v50

    .line 67
    .local v30, "s2":D
    const-wide/16 v46, 0x0

    cmpg-double v46, v28, v46

    if-gez v46, :cond_3

    .line 69
    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    .line 70
    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    .line 72
    :cond_3
    const-wide/16 v46, 0x0

    cmpl-double v46, v30, v46

    if-lez v46, :cond_4

    .line 74
    cmpg-double v46, v28, v30

    if-gez v46, :cond_7

    .end local v22    # "r12":D
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 75
    move-object/from16 v0, v20

    iget-wide v0, v0, Lbtools/router/MatchedWaypoint;->radius:D

    move-wide/from16 v46, v0

    cmpl-double v46, v26, v46

    if-gtz v46, :cond_2

    .line 79
    :cond_4
    move-wide/from16 v0, v26

    move-object/from16 v2, v20

    iput-wide v0, v2, Lbtools/router/MatchedWaypoint;->radius:D

    .line 80
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lbtools/router/MatchedWaypoint;->hasUpdate:Z

    .line 81
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/WaypointMatcherImpl;->anyUpdate:Z

    .line 83
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    if-nez v46, :cond_5

    .line 84
    new-instance v46, Lbtools/router/OsmNodeNamed;

    invoke-direct/range {v46 .. v46}, Lbtools/router/OsmNodeNamed;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    iput-object v0, v1, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    .line 85
    :cond_5
    const-wide/16 v46, 0x0

    cmpg-double v46, v30, v46

    if-gez v46, :cond_8

    .line 87
    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v46, v0

    mul-double v50, v8, v8

    div-double v32, v46, v50

    .line 88
    .local v32, "wayfraction":D
    mul-double v46, v32, v10

    sub-double v38, v36, v46

    .line 89
    .local v38, "xm":D
    mul-double v46, v32, v12

    sub-double v44, v42, v46

    .line 90
    .local v44, "ym":D
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    div-double v50, v38, v6

    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v52, v0

    add-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 91
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    const-wide v50, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    div-double v50, v44, v50

    move-object/from16 v0, v21

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-double v0, v0

    move-wide/from16 v52, v0

    add-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    goto/16 :goto_0

    .line 60
    .end local v26    # "radius":D
    .end local v28    # "s1":D
    .end local v30    # "s2":D
    .end local v32    # "wayfraction":D
    .end local v38    # "xm":D
    .end local v44    # "ym":D
    .restart local v22    # "r12":D
    :cond_6
    mul-double v46, v42, v10

    mul-double v50, v36, v12

    sub-double v46, v46, v50

    goto/16 :goto_1

    .restart local v26    # "radius":D
    .restart local v28    # "s1":D
    .restart local v30    # "s2":D
    :cond_7
    move-wide/from16 v22, v24

    .line 74
    goto/16 :goto_2

    .line 93
    .end local v22    # "r12":D
    :cond_8
    cmpl-double v46, v28, v30

    if-lez v46, :cond_9

    .line 95
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    move/from16 v0, p3

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 96
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    move/from16 v0, p4

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    goto/16 :goto_0

    .line 100
    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    move/from16 v0, p1

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 101
    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v46, v0

    move/from16 v0, p2

    move-object/from16 v1, v46

    iput v0, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    goto/16 :goto_0
.end method


# virtual methods
.method public endNode(II)V
    .locals 5
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 126
    iget v1, p0, Lbtools/router/WaypointMatcherImpl;->lonLast:I

    iget v2, p0, Lbtools/router/WaypointMatcherImpl;->latLast:I

    invoke-direct {p0, v1, v2, p1, p2}, Lbtools/router/WaypointMatcherImpl;->checkSegment(IIII)V

    .line 127
    iget-boolean v1, p0, Lbtools/router/WaypointMatcherImpl;->anyUpdate:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lbtools/router/WaypointMatcherImpl;->waypoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MatchedWaypoint;

    .line 131
    .local v0, "mwp":Lbtools/router/MatchedWaypoint;
    iget-boolean v2, v0, Lbtools/router/MatchedWaypoint;->hasUpdate:Z

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, v0, Lbtools/router/MatchedWaypoint;->hasUpdate:Z

    .line 134
    new-instance v2, Lbtools/mapaccess/OsmNode;

    iget v3, p0, Lbtools/router/WaypointMatcherImpl;->lonStart:I

    iget v4, p0, Lbtools/router/WaypointMatcherImpl;->latStart:I

    invoke-direct {v2, v3, v4}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    iput-object v2, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    .line 135
    new-instance v2, Lbtools/mapaccess/OsmNode;

    invoke-direct {v2, p1, p2}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    iput-object v2, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    goto :goto_0

    .line 139
    .end local v0    # "mwp":Lbtools/router/MatchedWaypoint;
    :cond_1
    return-void
.end method

.method public startNode(II[B)V
    .locals 1
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I
    .param p3, "wayTags"    # [B

    .prologue
    .line 110
    iput p1, p0, Lbtools/router/WaypointMatcherImpl;->lonStart:I

    iput p1, p0, Lbtools/router/WaypointMatcherImpl;->lonLast:I

    .line 111
    iput p2, p0, Lbtools/router/WaypointMatcherImpl;->latStart:I

    iput p2, p0, Lbtools/router/WaypointMatcherImpl;->latLast:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/router/WaypointMatcherImpl;->anyUpdate:Z

    .line 113
    return-void
.end method

.method public transferNode(II)V
    .locals 2
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 118
    iget v0, p0, Lbtools/router/WaypointMatcherImpl;->lonLast:I

    iget v1, p0, Lbtools/router/WaypointMatcherImpl;->latLast:I

    invoke-direct {p0, v0, v1, p1, p2}, Lbtools/router/WaypointMatcherImpl;->checkSegment(IIII)V

    .line 119
    iput p1, p0, Lbtools/router/WaypointMatcherImpl;->lonLast:I

    .line 120
    iput p2, p0, Lbtools/router/WaypointMatcherImpl;->latLast:I

    .line 121
    return-void
.end method
