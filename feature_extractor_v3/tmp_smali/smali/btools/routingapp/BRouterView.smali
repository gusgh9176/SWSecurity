.class public Lbtools/routingapp/BRouterView;
.super Landroid/view/View;
.source "BRouterView.java"


# instance fields
.field private centerLat:I

.field private centerLon:I

.field private cor:Lbtools/routingapp/CoordinateReader;

.field cr:Lbtools/router/RoutingEngine;

.field private dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

.field private imgPixels:[I

.field private imgh:I

.field private imgw:I

.field private lastDataTime:J

.field private lastTs:J

.field private memoryClass:I

.field private modesDir:Ljava/lang/String;

.field private needsNogoSelection:Z

.field private needsViaSelection:Z

.field private needsWaypointSelection:Z

.field private nogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field private nogoVetoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field private profileDir:Ljava/lang/String;

.field private profileName:Ljava/lang/String;

.field private profilePath:Ljava/lang/String;

.field private rawTrack:Lbtools/router/OsmTrack;

.field private rawTrackPath:Ljava/lang/String;

.field private scaleLat:D

.field private scaleLon:D

.field private segmentDir:Ljava/lang/String;

.field private sourceHint:Ljava/lang/String;

.field private startTime:J

.field private tracksDir:Ljava/lang/String;

.field private waitingForSelection:Z

.field private wpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "memoryClass"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbtools/routingapp/BRouterView;->lastDataTime:J

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbtools/routingapp/BRouterView;->lastTs:J

    .line 656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbtools/routingapp/BRouterView;->startTime:J

    .line 87
    iput p2, p0, Lbtools/routingapp/BRouterView;->memoryClass:I

    .line 88
    return-void
.end method

.method private _onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    if-eqz v4, :cond_1

    .line 733
    invoke-direct/range {p0 .. p1}, Lbtools/routingapp/BRouterView;->showDatabaseScanning(Landroid/graphics/Canvas;)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    if-nez v4, :cond_0

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 741
    .local v16, "currentTs":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbtools/routingapp/BRouterView;->lastTs:J

    sub-long v18, v16, v4

    .line 742
    .local v18, "diffTs":J
    const-wide/16 v4, 0x1f4

    sub-long v34, v4, v18

    .line 743
    .local v34, "sleeptime":J
    :goto_1
    const-wide/16 v4, 0xc8

    cmp-long v4, v34, v4

    if-gez v4, :cond_2

    .line 744
    const-wide/16 v4, 0x1f4

    add-long v34, v34, v4

    goto :goto_1

    .line 748
    :cond_2
    :try_start_0
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/routingapp/BRouterView;->lastTs:J

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 757
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    if-eqz v4, :cond_8

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 761
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lbtools/routingapp/BRouterActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 762
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 763
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    goto :goto_0

    .line 768
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/routingapp/BRouterView;->memoryClass:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mb pathPeak "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getPathPeak()I

    move-result v5

    add-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, "memstat":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version = BRouter-1.4.9\nmem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ndistance = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getDistance()I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " km\nfiltered ascend = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getAscend()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " m\nplain ascend = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 770
    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getPlainAscend()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 772
    .local v29, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getFoundRawTrack()Lbtools/router/OsmTrack;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/routingapp/BRouterView;->rawTrack:Lbtools/router/OsmTrack;

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getAlternativeIndex()I

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/routingapp/BRouterView;->writeRawTrackToPath(Ljava/lang/String;)V

    .line 780
    :cond_5
    const-string v33, "Success"

    .line 781
    .local v33, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getAlternativeIndex()I

    move-result v4

    if-lez v4, :cond_6

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getAlternativeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Alternative"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 784
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lbtools/routingapp/BRouterActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    if-nez v5, :cond_7

    const/4 v5, -0x1

    :goto_3
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1, v5}, Lbtools/routingapp/BRouterActivity;->showResultMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 785
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 786
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    goto/16 :goto_0

    .line 784
    :cond_7
    const/4 v5, -0x3

    goto :goto_3

    .line 790
    .end local v15    # "memstat":Ljava/lang/String;
    .end local v29    # "result":Ljava/lang/String;
    .end local v33    # "title":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BRouterView;->lastDataTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 792
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 843
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->invalidate()V

    goto/16 :goto_0

    .line 797
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/routingapp/BRouterView;->lastDataTime:J

    .line 798
    move-object/from16 v0, p0

    iget v4, v0, Lbtools/routingapp/BRouterView;->imgw:I

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/routingapp/BRouterView;->imgh:I

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/routingapp/BRouterView;->imgPixels:[I

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getOpenSet()[I

    move-result-object v27

    .line 801
    .local v27, "openSet":[I
    const/16 v32, 0x0

    .local v32, "si":I
    :goto_5
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v32

    if-ge v0, v4, :cond_b

    .line 803
    aget v4, v27, v32

    add-int/lit8 v5, v32, 0x1

    aget v5, v27, v5

    const v6, 0xffffff

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lbtools/routingapp/BRouterView;->paintPosition(IIII)V

    .line 801
    add-int/lit8 v32, v32, 0x2

    goto :goto_5

    .line 806
    :cond_b
    const/16 v26, 0x0

    .local v26, "ngi":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_c

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lbtools/router/OsmNodeNamed;

    .line 809
    .local v25, "n":Lbtools/router/OsmNodeNamed;
    const/high16 v14, 0xff0000

    .line 810
    .local v14, "color":I
    move-object/from16 v0, v25

    iget v4, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move-object/from16 v0, v25

    iget v5, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v14, v6}, Lbtools/routingapp/BRouterView;->paintPosition(IIII)V

    .line 806
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 814
    .end local v14    # "color":I
    .end local v25    # "n":Lbtools/router/OsmNodeNamed;
    :cond_c
    const/16 v36, 0x0

    .local v36, "wpi":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_f

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    move/from16 v0, v36

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lbtools/router/OsmNodeNamed;

    .line 817
    .restart local v25    # "n":Lbtools/router/OsmNodeNamed;
    if-nez v36, :cond_d

    const v14, 0xffff00

    .line 818
    .restart local v14    # "color":I
    :goto_8
    move-object/from16 v0, v25

    iget v4, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move-object/from16 v0, v25

    iget v5, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v14, v6}, Lbtools/routingapp/BRouterView;->paintPosition(IIII)V

    .line 814
    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    .line 817
    .end local v14    # "color":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v36

    if-ge v0, v4, :cond_e

    const/16 v14, 0xff

    goto :goto_8

    :cond_e
    const v14, 0xff00

    goto :goto_8

    .line 821
    .end local v25    # "n":Lbtools/router/OsmNodeNamed;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->imgPixels:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/routingapp/BRouterView;->imgw:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lbtools/routingapp/BRouterView;->imgw:I

    move-object/from16 v0, p0

    iget v11, v0, Lbtools/routingapp/BRouterView;->imgh:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v13}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 824
    const/16 v26, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_10

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lbtools/router/OsmNodeNamed;

    .line 827
    .restart local v25    # "n":Lbtools/router/OsmNodeNamed;
    const/high16 v14, 0xff0000

    .line 828
    .restart local v14    # "color":I
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v14, v4}, Lbtools/routingapp/BRouterView;->paintCircle(Landroid/graphics/Canvas;Lbtools/router/OsmNodeNamed;II)V

    .line 824
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 831
    .end local v14    # "color":I
    .end local v25    # "n":Lbtools/router/OsmNodeNamed;
    :cond_10
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 832
    .local v28, "paint":Landroid/graphics/Paint;
    const/4 v4, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    const/high16 v4, 0x41a00000    # 20.0f

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lbtools/routingapp/BRouterView;->startTime:J

    sub-long v22, v4, v6

    .line 836
    .local v22, "mseconds":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v4}, Lbtools/router/RoutingEngine;->getLinksProcessed()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    .line 837
    .local v20, "links":J
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v20

    div-long v30, v4, v22

    .line 838
    .local v30, "perS":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Links: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v5}, Lbtools/router/RoutingEngine;->getLinksProcessed()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long v6, v22, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " l/s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 840
    .local v24, "msg":Ljava/lang/String;
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41c80000    # 25.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 750
    .end local v20    # "links":J
    .end local v22    # "mseconds":J
    .end local v24    # "msg":Ljava/lang/String;
    .end local v26    # "ngi":I
    .end local v27    # "openSet":[I
    .end local v28    # "paint":Landroid/graphics/Paint;
    .end local v30    # "perS":J
    .end local v32    # "si":I
    .end local v36    # "wpi":I
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "assetZip"    # Ljava/lang/String;
    .param p4, "versionTag"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 555
    .local v3, "exists":Z
    if-nez v3, :cond_0

    .line 557
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 559
    :cond_0
    if-eqz p4, :cond_1

    .line 561
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v10, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .local v10, "vtag":Ljava/io/File;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-nez v13, :cond_2

    const/4 v3, 0x1

    .line 569
    .end local v10    # "vtag":Ljava/io/File;
    :cond_1
    :goto_0
    if-nez v3, :cond_5

    .line 572
    if-eqz p3, :cond_5

    .line 576
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 577
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 578
    .local v7, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/util/zip/ZipInputStream;

    invoke-direct {v12, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 579
    .local v12, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 582
    .local v2, "data":[B
    :goto_1
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 583
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    if-nez v11, :cond_3

    .line 597
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 598
    const/4 v13, 0x1

    .line 609
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "data":[B
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    return v13

    .line 564
    .restart local v10    # "vtag":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 585
    .end local v10    # "vtag":Ljava/io/File;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "data":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 586
    .local v9, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 590
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_3
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v12, v2, v13, v14}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v8

    .line 591
    .local v8, "len":I
    if-gez v8, :cond_4

    .line 595
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 600
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "data":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "len":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v6

    .line 602
    .local v6, "io":Ljava/io/IOException;
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error expanding "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 593
    .end local v6    # "io":Ljava/io/IOException;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "data":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "len":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v5, v2, v13, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 607
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "data":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "len":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_7

    .line 608
    :cond_6
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cannot be created"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 609
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 566
    .restart local v10    # "vtag":Ljava/io/File;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private static getStorageDirectories()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1057
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    const/4 v0, 0x0

    .line 1062
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v11, "/proc/mounts"

    invoke-direct {v9, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1066
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1101
    if-eqz v1, :cond_7

    .line 1105
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 1112
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v5

    .line 1068
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v9, "vfat"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    const-string v9, "/mnt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 1070
    :cond_3
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, " "

    invoke-direct {v6, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .local v6, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1072
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "d":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1074
    .local v3, "isExternalDir":Z
    const-string v9, "/dev/block/vold"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1076
    const/4 v3, 0x1

    .line 1077
    const/4 v9, 0x6

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "/mnt/secure"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "/mnt/asec"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    const-string v11, "/mnt/obb"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "/dev/mapper"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "tmpfs"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "/mnt/media_rw"

    aput-object v11, v8, v9

    .line 1079
    .local v8, "vetos":[Ljava/lang/String;
    array-length v11, v8

    move v9, v10

    :goto_2
    if-ge v9, v11, :cond_5

    aget-object v7, v8, v9

    .line 1081
    .local v7, "v":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_4

    .line 1083
    const/4 v3, 0x0

    .line 1079
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1087
    .end local v7    # "v":Ljava/lang/String;
    .end local v8    # "vetos":[Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_0

    .line 1089
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1091
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1096
    .end local v2    # "d":Ljava/lang/String;
    .end local v3    # "isExternalDir":Z
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "tokens":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v9

    move-object v0, v1

    .line 1101
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_1

    .line 1105
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1107
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v0, v1

    .line 1109
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1101
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_6

    .line 1105
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1109
    :cond_6
    :goto_5
    throw v9

    .line 1107
    :catch_3
    move-exception v10

    goto :goto_5

    .line 1101
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1096
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private guessBaseDir()Ljava/lang/String;
    .locals 15

    .prologue
    .line 848
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 851
    .local v0, "basedir":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v12, "external_sd"

    invoke-direct {v2, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 852
    .local v2, "bd2":Ljava/io/File;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "basedirGuesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 857
    move-object v0, v2

    .line 858
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v7, "rl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/routingapp/CoordinateReader;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 864
    .local v3, "bdg":Ljava/lang/String;
    new-instance v13, Lbtools/routingapp/CoordinateReaderOsmAnd;

    invoke-direct {v13, v3}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v13, Lbtools/routingapp/CoordinateReaderLocus;

    invoke-direct {v13, v3}, Lbtools/routingapp/CoordinateReaderLocus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v13, Lbtools/routingapp/CoordinateReaderOrux;

    invoke-direct {v13, v3}, Lbtools/routingapp/CoordinateReaderOrux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    .end local v1    # "basedirGuesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "bd2":Ljava/io/File;
    .end local v3    # "bdg":Ljava/lang/String;
    .end local v7    # "rl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/routingapp/CoordinateReader;>;"
    :catch_0
    move-exception v5

    .line 886
    .local v5, "e":Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "guessBaseDir:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 888
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_1
    return-object v12

    .line 868
    .restart local v1    # "basedirGuesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "bd2":Ljava/io/File;
    .restart local v7    # "rl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/routingapp/CoordinateReader;>;"
    :cond_2
    const-wide/16 v10, 0x0

    .line 869
    .local v10, "tmax":J
    const/4 v4, 0x0

    .line 870
    .local v4, "cor":Lbtools/routingapp/CoordinateReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbtools/routingapp/CoordinateReader;

    .line 872
    .local v6, "r":Lbtools/routingapp/CoordinateReader;
    invoke-virtual {v6}, Lbtools/routingapp/CoordinateReader;->getTimeStamp()J

    move-result-wide v8

    .line 873
    .local v8, "t":J
    cmp-long v13, v8, v10

    if-lez v13, :cond_3

    .line 875
    move-wide v10, v8

    .line 876
    move-object v4, v6

    goto :goto_2

    .line 879
    .end local v6    # "r":Lbtools/routingapp/CoordinateReader;
    .end local v8    # "t":J
    :cond_4
    if-eqz v4, :cond_1

    .line 881
    iget-object v12, v4, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private paintCircle(Landroid/graphics/Canvas;Lbtools/router/OsmNodeNamed;II)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "n"    # Lbtools/router/OsmNodeNamed;
    .param p3, "color"    # I
    .param p4, "minradius"    # I

    .prologue
    .line 630
    move-object/from16 v0, p2

    iget v8, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    iget v9, p0, Lbtools/routingapp/BRouterView;->centerLon:I

    sub-int v4, v8, v9

    .line 631
    .local v4, "lon":I
    move-object/from16 v0, p2

    iget v8, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    iget v9, p0, Lbtools/routingapp/BRouterView;->centerLat:I

    sub-int v3, v8, v9

    .line 632
    .local v3, "lat":I
    iget v8, p0, Lbtools/routingapp/BRouterView;->imgw:I

    div-int/lit8 v8, v8, 0x2

    iget-wide v10, p0, Lbtools/routingapp/BRouterView;->scaleLon:D

    int-to-double v12, v4

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int v6, v8, v9

    .line 633
    .local v6, "x":I
    iget v8, p0, Lbtools/routingapp/BRouterView;->imgh:I

    div-int/lit8 v8, v8, 0x2

    iget-wide v10, p0, Lbtools/routingapp/BRouterView;->scaleLat:D

    int-to-double v12, v3

    mul-double/2addr v10, v12

    double-to-int v9, v10

    sub-int v7, v8, v9

    .line 634
    .local v7, "y":I
    move-object/from16 v0, p2

    iget-wide v8, v0, Lbtools/router/OsmNodeNamed;->radius:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lbtools/routingapp/BRouterView;->scaleLat:D

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .line 635
    .local v2, "ir":I
    move/from16 v0, p4

    if-le v2, v0, :cond_0

    .line 637
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 638
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v8, -0x10000

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    int-to-float v8, v6

    int-to-float v9, v7

    int-to-float v10, v2

    invoke-virtual {p1, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 642
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method private paintPosition(IIII)V
    .locals 12
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I
    .param p3, "color"    # I
    .param p4, "with"    # I

    .prologue
    .line 614
    iget v6, p0, Lbtools/routingapp/BRouterView;->centerLon:I

    sub-int v1, p1, v6

    .line 615
    .local v1, "lon":I
    iget v6, p0, Lbtools/routingapp/BRouterView;->centerLat:I

    sub-int v0, p2, v6

    .line 616
    .local v0, "lat":I
    iget v6, p0, Lbtools/routingapp/BRouterView;->imgw:I

    div-int/lit8 v6, v6, 0x2

    iget-wide v8, p0, Lbtools/routingapp/BRouterView;->scaleLon:D

    int-to-double v10, v1

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int v4, v6, v7

    .line 617
    .local v4, "x":I
    iget v6, p0, Lbtools/routingapp/BRouterView;->imgh:I

    div-int/lit8 v6, v6, 0x2

    iget-wide v8, p0, Lbtools/routingapp/BRouterView;->scaleLat:D

    int-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    sub-int v5, v6, v7

    .line 618
    .local v5, "y":I
    sub-int v2, v4, p4

    .local v2, "nx":I
    :goto_0
    add-int v6, v4, p4

    if-gt v2, v6, :cond_2

    .line 619
    sub-int v3, v5, p4

    .local v3, "ny":I
    :goto_1
    add-int v6, v5, p4

    if-gt v3, v6, :cond_1

    .line 621
    if-ltz v2, :cond_0

    iget v6, p0, Lbtools/routingapp/BRouterView;->imgw:I

    if-ge v2, v6, :cond_0

    if-ltz v3, :cond_0

    iget v6, p0, Lbtools/routingapp/BRouterView;->imgh:I

    if-ge v3, v6, :cond_0

    .line 623
    iget-object v6, p0, Lbtools/routingapp/BRouterView;->imgPixels:[I

    iget v7, p0, Lbtools/routingapp/BRouterView;->imgw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v2

    aput p3, v6, v7

    .line 619
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    .end local v3    # "ny":I
    :cond_2
    return-void
.end method

.method private readSingleLineFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 1032
    const/4 v0, 0x0

    .line 1035
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 1044
    if-eqz v1, :cond_0

    .line 1047
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .line 1040
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 1038
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 1044
    if-eqz v0, :cond_1

    .line 1047
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1049
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1044
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_2

    .line 1047
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1051
    :cond_2
    :goto_4
    throw v3

    .line 1049
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1044
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1038
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private readWpList(Ljava/io/BufferedReader;Z)Ljava/util/List;
    .locals 5
    .param p1, "br"    # Ljava/io/BufferedReader;
    .param p2, "isNogo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "cnt":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbtools/router/OsmNodeNamed;->decodeNogo(Ljava/lang/String;)Lbtools/router/OsmNodeNamed;

    move-result-object v3

    .line 406
    .local v3, "wp":Lbtools/router/OsmNodeNamed;
    iput-boolean p2, v3, Lbtools/router/OsmNodeNamed;->isNogo:Z

    .line 407
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v3    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_0
    return-object v2
.end method

.method private showDatabaseScanning(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    .line 687
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 693
    .local v2, "paint1":Landroid/graphics/Paint;
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 696
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 697
    .local v3, "paint2":Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 698
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 700
    iget-object v4, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    invoke-virtual {v4}, Lbtools/routingapp/WpDatabaseScanner;->getCurrentDir()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "currentDir":Ljava/lang/String;
    iget-object v4, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    invoke-virtual {v4}, Lbtools/routingapp/WpDatabaseScanner;->getBestGuess()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "bestGuess":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 707
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lbtools/routingapp/BRouterActivity;

    const-string v5, "scan did not find any possible waypoint database"

    invoke-virtual {v4, v5}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 713
    :goto_1
    iput-object v9, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 714
    iput-object v9, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    .line 715
    const/4 v4, 0x1

    iput-boolean v4, p0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    .line 727
    :goto_2
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v4, v0}, Lbtools/routingapp/BRouterActivity;->showWpDatabaseScanSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 719
    :cond_1
    const-string v4, "Scanning:"

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p1, v4, v6, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 720
    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {p1, v1, v7, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 721
    const-string v4, "Best Guess:"

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4, v6, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p1, v0, v7, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 723
    const-string v4, "Last Error:"

    const/high16 v5, 0x43160000    # 150.0f

    invoke-virtual {p1, v4, v6, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 724
    iget-object v4, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    invoke-virtual {v4}, Lbtools/routingapp/WpDatabaseScanner;->getLastError()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v4, v7, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 726
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->invalidate()V

    goto :goto_2

    .line 689
    .end local v0    # "bestGuess":Ljava/lang/String;
    .end local v1    # "currentDir":Ljava/lang/String;
    .end local v2    # "paint1":Landroid/graphics/Paint;
    .end local v3    # "paint2":Landroid/graphics/Paint;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 652
    iget-wide v0, p0, Lbtools/routingapp/BRouterView;->lastDataTime:J

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbtools/routingapp/BRouterView;->lastDataTime:J

    .line 653
    return-void
.end method

.method private writeRawTrackToMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_rawtrack.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterView;->writeRawTrackToPath(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method private writeRawTrackToPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawTrackPath"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Lbtools/routingapp/BRouterView;->rawTrack:Lbtools/router/OsmTrack;

    if-eqz v0, :cond_0

    .line 902
    :try_start_0
    iget-object v0, p0, Lbtools/routingapp/BRouterView;->rawTrack:Lbtools/router/OsmTrack;

    invoke-virtual {v0, p1}, Lbtools/router/OsmTrack;->writeBinary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 910
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public configureService([Ljava/lang/String;[Z)V
    .locals 15
    .param p1, "routingModes"    # [Ljava/lang/String;
    .param p2, "checkedModes"    # [Z

    .prologue
    .line 954
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 955
    .local v6, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lbtools/routingapp/ServiceModeConfig;>;"
    const/4 v0, 0x0

    .line 956
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/serviceconfig.dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, "modesFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v5

    .line 963
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 974
    if-eqz v1, :cond_a

    .line 977
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 985
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v11, 0x6

    if-ge v4, v11, :cond_5

    .line 987
    aget-boolean v11, p2, v4

    if-eqz v11, :cond_4

    .line 989
    aget-object v11, p1, v4

    invoke-direct {p0, v11}, Lbtools/routingapp/BRouterView;->writeRawTrackToMode(Ljava/lang/String;)V

    .line 990
    new-instance v10, Lbtools/routingapp/ServiceModeConfig;

    aget-object v11, p1, v4

    iget-object v12, p0, Lbtools/routingapp/BRouterView;->profileName:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lbtools/routingapp/ServiceModeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .local v10, "smc":Lbtools/routingapp/ServiceModeConfig;
    iget-object v11, p0, Lbtools/routingapp/BRouterView;->nogoVetoList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbtools/router/OsmNodeNamed;

    .line 993
    .local v9, "nogo":Lbtools/router/OsmNodeNamed;
    iget-object v12, v10, Lbtools/routingapp/ServiceModeConfig;->nogoVetos:Ljava/util/TreeSet;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v9, Lbtools/router/OsmNodeNamed;->ilon:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lbtools/router/OsmNodeNamed;->ilat:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 965
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "i":I
    .end local v9    # "nogo":Lbtools/router/OsmNodeNamed;
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v10, Lbtools/routingapp/ServiceModeConfig;

    invoke-direct {v10, v5}, Lbtools/routingapp/ServiceModeConfig;-><init>(Ljava/lang/String;)V

    .line 966
    .restart local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    iget-object v11, v10, Lbtools/routingapp/ServiceModeConfig;->mode:Ljava/lang/String;

    invoke-virtual {v6, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 969
    .end local v5    # "line":Ljava/lang/String;
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catch_0
    move-exception v11

    move-object v0, v1

    .line 974
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v0, :cond_0

    .line 977
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 979
    :catch_1
    move-exception v11

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v0, v1

    .line 981
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 974
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v0, :cond_2

    .line 977
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 981
    :cond_2
    :goto_6
    throw v11

    .line 995
    .restart local v4    # "i":I
    .restart local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :cond_3
    iget-object v11, v10, Lbtools/routingapp/ServiceModeConfig;->mode:Ljava/lang/String;

    invoke-virtual {v6, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1000
    :cond_5
    const/4 v2, 0x0

    .line 1001
    .local v2, "bw":Ljava/io/BufferedWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Mode mapping is now:\n"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v8, "msg":Ljava/lang/StringBuilder;
    const-string v11, "( [..] counts nogo-vetos)\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :try_start_6
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1006
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_7
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbtools/routingapp/ServiceModeConfig;

    .line 1008
    .restart local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    invoke-virtual {v10}, Lbtools/routingapp/ServiceModeConfig;->toLine()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1009
    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/io/BufferedWriter;->write(I)V

    .line 1010
    invoke-virtual {v10}, Lbtools/routingapp/ServiceModeConfig;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    .line 1013
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catch_3
    move-exception v11

    move-object v2, v3

    .line 1018
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :goto_8
    if-eqz v2, :cond_6

    .line 1021
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1027
    :cond_6
    :goto_9
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbtools/routingapp/BRouterActivity;->showModeConfigOverview(Ljava/lang/String;)V

    .line 1028
    return-void

    .line 1018
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v3, :cond_9

    .line 1021
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v2, v3

    .line 1025
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_9

    .line 1023
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v11

    move-object v2, v3

    .line 1025
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_9

    .line 1018
    :catchall_1
    move-exception v11

    :goto_a
    if-eqz v2, :cond_8

    .line 1021
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1025
    :cond_8
    :goto_b
    throw v11

    .line 979
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "i":I
    .end local v8    # "msg":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v12

    goto :goto_6

    .line 1023
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "i":I
    .restart local v8    # "msg":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v11

    goto :goto_9

    :catch_7
    move-exception v12

    goto :goto_b

    .line 1018
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_a

    .line 1013
    :catch_8
    move-exception v11

    goto :goto_8

    .line 974
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "i":I
    .end local v8    # "msg":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 969
    :catch_9
    move-exception v11

    goto/16 :goto_4

    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "i":I
    .restart local v8    # "msg":Ljava/lang/StringBuilder;
    :cond_9
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "i":I
    .end local v8    # "msg":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_a
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public continueProcessing()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    .line 299
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->invalidate()V

    .line 300
    return-void
.end method

.method public finishWaypointSelection()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/routingapp/BRouterView;->needsWaypointSelection:Z

    .line 397
    return-void
.end method

.method public hasUpToDateLookups()Z
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lbtools/expressions/BExpressionMetaData;

    invoke-direct {v0}, Lbtools/expressions/BExpressionMetaData;-><init>()V

    .line 292
    .local v0, "meta":Lbtools/expressions/BExpressionMetaData;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    const-string v3, "lookups.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionMetaData;->readMetaData(Ljava/io/File;)V

    .line 293
    iget-short v1, v0, Lbtools/expressions/BExpressionMetaData;->lookupVersion:S

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    .line 94
    :try_start_0
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lbtools/routingapp/BRouterView;->imgw:I

    .line 97
    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lbtools/routingapp/BRouterView;->imgh:I

    .line 100
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lbtools/routingapp/ConfigHelper;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "baseDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 103
    .local v2, "bdValid":Z
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "bd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 107
    new-instance v3, Ljava/io/File;

    const-string v8, "brouter"

    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v3, "brd":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Lbtools/routingapp/BRouterView;->startSetup(Ljava/lang/String;Z)V

    .line 129
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v1    # "bd":Ljava/io/File;
    .end local v2    # "bdValid":Z
    .end local v3    # "brd":Ljava/io/File;
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 114
    .restart local v0    # "baseDir":Ljava/lang/String;
    .restart local v2    # "bdValid":Z
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    if-nez v0, :cond_1

    const-string v5, "(no basedir configured previously)"

    .line 117
    .local v5, "message":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lbtools/routingapp/BRouterActivity;

    invoke-static {}, Lbtools/routingapp/BRouterView;->getStorageDirectories()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0}, Lbtools/routingapp/BRouterView;->guessBaseDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v5}, Lbtools/routingapp/BRouterActivity;->selectBasedir(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v8, 0x1

    iput-boolean v8, p0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v2    # "bdValid":Z
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    instance-of v8, v4, Ljava/lang/IllegalArgumentException;

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v7}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 125
    invoke-static {v4}, Lbtools/routingapp/AppLogger;->formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v8, v7}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "msg":Ljava/lang/String;
    .restart local v0    # "baseDir":Ljava/lang/String;
    .restart local v2    # "bdValid":Z
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(previous basedir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_2

    const-string v8, " does not contain \'brouter\' subfolder)"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v8, " is not valid)"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 122
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v2    # "bdValid":Z
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 663
    :try_start_0
    invoke-direct {p0, p1}, Lbtools/routingapp/BRouterView;->_onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 668
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v1}, Lbtools/router/RoutingEngine;->cleanOnOOM()V

    .line 670
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 673
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 678
    :goto_1
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 679
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    goto :goto_0

    .line 675
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 647
    return-void
.end method

.method public pickWaypoints()V
    .locals 9

    .prologue
    .line 328
    const/4 v3, 0x0

    .line 330
    .local v3, "msg":Ljava/lang/String;
    iget-object v7, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    iget-object v7, v7, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    if-nez v7, :cond_1

    .line 334
    :try_start_0
    iget-object v7, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    invoke-virtual {v7}, Lbtools/routingapp/CoordinateReader;->readAllPoints()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    iget-object v7, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    iget-object v7, v7, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 342
    .local v4, "size":I
    const/4 v7, 0x1

    if-ge v4, v7, :cond_0

    .line 343
    const-string v3, "coordinate source does not contain any waypoints!"

    .line 344
    :cond_0
    const/16 v7, 0x3e8

    if-le v4, v7, :cond_1

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "coordinate source contains too much waypoints: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(please use from/to/via names)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .end local v4    # "size":I
    :cond_1
    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v7, v3}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 360
    :goto_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading waypoints: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    iget-object v7, v7, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 355
    .local v6, "wpts":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 356
    .local v1, "i":I
    iget-object v7, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    iget-object v7, v7, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbtools/router/OsmNodeNamed;

    .line 357
    .local v5, "wp":Lbtools/router/OsmNodeNamed;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v8, v5, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    aput-object v8, v6, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 358
    .end local v5    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_3
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v7, v6}, Lbtools/routingapp/BRouterActivity;->selectWaypoint([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveMaptoolDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    invoke-static {v0, p1}, Lbtools/routingapp/ConfigMigration;->saveAdditionalMaptoolDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 391
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbtools/routingapp/BRouterActivity;

    const-string v1, "Success"

    const-string v2, "please restart to use new config"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lbtools/routingapp/BRouterActivity;->showResultMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    return-void
.end method

.method public startConfigureService()V
    .locals 12

    .prologue
    .line 916
    const/4 v9, 0x6

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "foot_short"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "foot_fast"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "bicycle_short"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "bicycle_fast"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "motorcar_short"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    const-string v10, "motorcar_fast"

    aput-object v10, v6, v9

    .line 918
    .local v6, "modes":[Ljava/lang/String;
    const/4 v9, 0x6

    new-array v7, v9, [Z

    .line 921
    .local v7, "modesChecked":[Z
    new-instance v5, Lbtools/expressions/BExpressionMetaData;

    invoke-direct {v5}, Lbtools/expressions/BExpressionMetaData;-><init>()V

    .line 922
    .local v5, "meta":Lbtools/expressions/BExpressionMetaData;
    new-instance v0, Lbtools/expressions/BExpressionContextWay;

    invoke-direct {v0, v5}, Lbtools/expressions/BExpressionContextWay;-><init>(Lbtools/expressions/BExpressionMetaData;)V

    .line 923
    .local v0, "expctx":Lbtools/expressions/BExpressionContextWay;
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    const-string v11, "lookups.dat"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lbtools/expressions/BExpressionMetaData;->readMetaData(Ljava/io/File;)V

    .line 924
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lbtools/routingapp/BRouterView;->profilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "global"

    invoke-virtual {v0, v9, v10}, Lbtools/expressions/BExpressionContextWay;->parseFile(Ljava/io/File;Ljava/lang/String;)V

    .line 926
    const/4 v9, 0x0

    const-string v10, "validForFoot"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lbtools/expressions/BExpressionContextWay;->getVariableValue(Ljava/lang/String;F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    .line 927
    .local v4, "isFoot":Z
    :goto_0
    const/4 v9, 0x0

    const-string v10, "validForBikes"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lbtools/expressions/BExpressionContextWay;->getVariableValue(Ljava/lang/String;F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 928
    .local v2, "isBike":Z
    :goto_1
    const/4 v9, 0x0

    const-string v10, "validForCars"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lbtools/expressions/BExpressionContextWay;->getVariableValue(Ljava/lang/String;F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    .line 930
    .local v3, "isCar":Z
    :goto_2
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_5

    .line 932
    :cond_0
    const/4 v9, 0x0

    aput-boolean v4, v7, v9

    .line 933
    const/4 v9, 0x1

    aput-boolean v4, v7, v9

    .line 934
    const/4 v9, 0x2

    aput-boolean v2, v7, v9

    .line 935
    const/4 v9, 0x3

    aput-boolean v2, v7, v9

    .line 936
    const/4 v9, 0x4

    aput-boolean v3, v7, v9

    .line 937
    const/4 v9, 0x5

    aput-boolean v3, v7, v9

    .line 946
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Choose service-modes to configure ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lbtools/routingapp/BRouterView;->profileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lbtools/routingapp/BRouterView;->nogoVetoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "])"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 948
    .local v8, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v9, v6, v7, v8}, Lbtools/routingapp/BRouterActivity;->selectRoutingModes([Ljava/lang/String;[ZLjava/lang/String;)V

    .line 949
    return-void

    .line 926
    .end local v2    # "isBike":Z
    .end local v3    # "isCar":Z
    .end local v4    # "isFoot":Z
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 927
    .restart local v4    # "isFoot":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 928
    .restart local v2    # "isBike":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 941
    .restart local v3    # "isCar":Z
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v9, 0x6

    if-ge v1, v9, :cond_1

    .line 943
    const/4 v9, 0x1

    aput-boolean v9, v7, v1

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public startProcessing(Ljava/lang/String;)V
    .locals 30
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    .line 415
    const-string v2, "<repeat timeout>"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsWaypointSelection:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsNogoSelection:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsViaSelection:Z

    .line 420
    :try_start_0
    new-instance v18, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/timeoutdata.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v18, "lastTimeoutFile":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 422
    .local v9, "br":Ljava/io/BufferedReader;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lbtools/routingapp/BRouterView;->readWpList(Ljava/io/BufferedReader;Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lbtools/routingapp/BRouterView;->readWpList(Ljava/io/BufferedReader;Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    .line 426
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v18    # "lastTimeoutFile":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".brf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->profilePath:Ljava/lang/String;

    .line 440
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->profileName:Ljava/lang/String;

    .line 442
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsViaSelection:Z

    if-eqz v2, :cond_3

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsViaSelection:Z

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    new-array v8, v2, [Ljava/lang/String;

    .line 446
    .local v8, "availableVias":[Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "viaidx":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move/from16 v0, v27

    if-ge v0, v2, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    add-int/lit8 v3, v27, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmNodeNamed;

    iget-object v2, v2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    aput-object v2, v8, v27

    .line 446
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 428
    .end local v8    # "availableVias":[Ljava/lang/String;
    .end local v27    # "viaidx":I
    :catch_0
    move-exception v16

    .line 430
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lbtools/routingapp/AppLogger;->formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbtools/routingapp/BRouterActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "remote"

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->profileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/remote_rawtrack.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 448
    .restart local v8    # "availableVias":[Ljava/lang/String;
    .restart local v27    # "viaidx":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbtools/routingapp/BRouterActivity;

    invoke-virtual {v2, v8}, Lbtools/routingapp/BRouterActivity;->selectVias([Ljava/lang/String;)V

    .line 548
    .end local v8    # "availableVias":[Ljava/lang/String;
    .end local v27    # "viaidx":I
    :goto_2
    return-void

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsNogoSelection:Z

    if-eqz v2, :cond_4

    .line 454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsNogoSelection:Z

    .line 455
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbtools/routingapp/BRouterActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lbtools/routingapp/BRouterActivity;->selectNogos(Ljava/util/List;)V

    goto :goto_2

    .line 459
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbtools/routingapp/BRouterView;->needsWaypointSelection:Z

    if-eqz v2, :cond_9

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting waypoint selection\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->sourceHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 472
    .local v23, "msg":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbtools/routingapp/BRouterActivity;

    const-string v4, "Select Action"

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    instance-of v3, v3, Lbtools/routingapp/CoordinateReaderNone;

    if-eqz v3, :cond_8

    const/4 v3, -0x2

    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v0, v3}, Lbtools/routingapp/BRouterActivity;->showResultMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 468
    .end local v23    # "msg":Ljava/lang/String;
    :cond_6
    const-string v23, "current waypoint selection:\n"

    .line 469
    .restart local v23    # "msg":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v17, :cond_7

    const-string v2, "->"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmNodeNamed;

    iget-object v2, v2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 469
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 470
    :cond_7
    const-string v2, ""

    goto :goto_5

    .line 472
    .end local v17    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_3

    .line 478
    .end local v23    # "msg":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    .line 480
    new-instance v7, Lbtools/router/RoutingContext;

    invoke-direct {v7}, Lbtools/router/RoutingContext;-><init>()V

    .line 482
    .local v7, "rc":Lbtools/router/RoutingContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->profilePath:Ljava/lang/String;

    iput-object v2, v7, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    invoke-virtual {v2}, Lbtools/routingapp/CoordinateReader;->getTurnInstructionMode()I

    move-result v2

    iput v2, v7, Lbtools/router/RoutingContext;->turnInstructionMode:I

    .line 485
    const/16 v25, 0x0

    .line 486
    .local v25, "plain_distance":I
    const/high16 v20, -0x80000000

    .line 487
    .local v20, "maxlon":I
    const v22, 0x7fffffff

    .line 488
    .local v22, "minlon":I
    const/high16 v19, -0x80000000

    .line 489
    .local v19, "maxlat":I
    const v21, 0x7fffffff

    .line 491
    .local v21, "minlat":I
    const/16 v26, 0x0

    .line 492
    .local v26, "prev":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lbtools/mapaccess/OsmNode;

    .line 494
    .local v24, "n":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, v24

    iget v3, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v0, v20

    if-le v3, v0, :cond_a

    move-object/from16 v0, v24

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v20, v0

    .line 495
    :cond_a
    move-object/from16 v0, v24

    iget v3, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v0, v22

    if-ge v3, v0, :cond_b

    move-object/from16 v0, v24

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    move/from16 v22, v0

    .line 496
    :cond_b
    move-object/from16 v0, v24

    iget v3, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v0, v19

    if-le v3, v0, :cond_c

    move-object/from16 v0, v24

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v19, v0

    .line 497
    :cond_c
    move-object/from16 v0, v24

    iget v3, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v0, v21

    if-ge v3, v0, :cond_d

    move-object/from16 v0, v24

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    move/from16 v21, v0

    .line 498
    :cond_d
    if-eqz v26, :cond_e

    .line 500
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v3

    add-int v25, v25, v3

    .line 502
    :cond_e
    move-object/from16 v26, v24

    .line 503
    goto :goto_6

    .line 504
    .end local v24    # "n":Lbtools/mapaccess/OsmNode;
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plain distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    int-to-double v4, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v28

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " km"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbtools/routingapp/BRouterView;->toast(Ljava/lang/String;)V

    .line 506
    add-int v2, v20, v22

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbtools/routingapp/BRouterView;->centerLon:I

    .line 507
    add-int v2, v19, v21

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lbtools/routingapp/BRouterView;->centerLat:I

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->centerLat:I

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    const-wide v4, 0x404ca66666666666L    # 57.3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 510
    .local v10, "coslat":D
    sub-int v2, v20, v22

    int-to-double v14, v2

    .line 511
    .local v14, "difflon":D
    sub-int v2, v19, v21

    int-to-double v12, v2

    .line 513
    .local v12, "difflat":D
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->imgw:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v14

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLon:D

    .line 514
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->imgh:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v12

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLat:D

    .line 515
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLon:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lbtools/routingapp/BRouterView;->scaleLat:D

    mul-double/2addr v4, v10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_11

    .line 516
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLon:D

    div-double/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLat:D

    .line 520
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/routingapp/BRouterView;->startTime:J

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-static {v2}, Lbtools/router/RoutingContext;->prepareNogoPoints(Ljava/util/List;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    iput-object v2, v7, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    .line 524
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->memoryClass:I

    iput v2, v7, Lbtools/router/RoutingContext;->memoryclass:I

    .line 525
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->memoryClass:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_12

    .line 527
    const/16 v2, 0x10

    iput v2, v7, Lbtools/router/RoutingContext;->memoryclass:I

    .line 536
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->rawTrackPath:Ljava/lang/String;

    iput-object v2, v7, Lbtools/router/RoutingContext;->rawTrackPath:Ljava/lang/String;

    .line 538
    new-instance v2, Lbtools/router/RoutingEngine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/brouter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-direct/range {v2 .. v7}, Lbtools/router/RoutingEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lbtools/router/RoutingContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->start()V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 543
    .end local v7    # "rc":Lbtools/router/RoutingContext;
    .end local v10    # "coslat":D
    .end local v12    # "difflat":D
    .end local v14    # "difflon":D
    .end local v19    # "maxlat":I
    .end local v20    # "maxlon":I
    .end local v21    # "minlat":I
    .end local v22    # "minlon":I
    .end local v25    # "plain_distance":I
    .end local v26    # "prev":Lbtools/mapaccess/OsmNode;
    :catch_1
    move-exception v16

    .line 545
    .restart local v16    # "e":Ljava/lang/Exception;
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 546
    .restart local v23    # "msg":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lbtools/routingapp/BRouterView;->toast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 518
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "msg":Ljava/lang/String;
    .restart local v7    # "rc":Lbtools/router/RoutingContext;
    .restart local v10    # "coslat":D
    .restart local v12    # "difflat":D
    .restart local v14    # "difflon":D
    .restart local v19    # "maxlat":I
    .restart local v20    # "maxlon":I
    .restart local v21    # "minlat":I
    .restart local v22    # "minlon":I
    .restart local v25    # "plain_distance":I
    .restart local v26    # "prev":Lbtools/mapaccess/OsmNode;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLat:D

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/routingapp/BRouterView;->scaleLon:D

    goto :goto_7

    .line 529
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lbtools/routingapp/BRouterView;->memoryClass:I

    const/16 v3, 0x100

    if-le v2, v3, :cond_10

    .line 531
    const/16 v2, 0x100

    iput v2, v7, Lbtools/router/RoutingContext;->memoryclass:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 545
    .end local v7    # "rc":Lbtools/router/RoutingContext;
    .end local v10    # "coslat":D
    .end local v12    # "difflat":D
    .end local v14    # "difflon":D
    .end local v19    # "maxlat":I
    .end local v20    # "maxlon":I
    .end local v21    # "minlat":I
    .end local v22    # "minlon":I
    .end local v25    # "plain_distance":I
    .end local v26    # "prev":Lbtools/mapaccess/OsmNode;
    .restart local v16    # "e":Ljava/lang/Exception;
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_9
.end method

.method public startSetup(Ljava/lang/String;Z)V
    .locals 26
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "storeBasedir"    # Z

    .prologue
    .line 133
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    .line 136
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, "fbd":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_0

    .line 139
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Base-directory "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not a directory "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v8    # "fbd":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Ljava/lang/Exception;
    instance-of v0, v7, Ljava/lang/IllegalArgumentException;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v22, v0

    if-nez v22, :cond_12

    const-string v22, ""

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, "msg":Ljava/lang/String;
    :goto_1
    invoke-static {v15}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 281
    invoke-static {v7}, Lbtools/routingapp/AppLogger;->formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lbtools/routingapp/BRouterActivity;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lbtools/routingapp/BRouterActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 285
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "msg":Ljava/lang/String;
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    .line 286
    :goto_3
    return-void

    .line 141
    .restart local v8    # "fbd":Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_2

    .line 144
    :try_start_1
    new-instance v17, Ljava/io/File;

    const-string v22, "brouter"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .local v17, "td":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :goto_4
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_1

    .line 152
    new-instance v18, Ljava/io/File;

    const-string v22, "Android/data/btools/routingapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 155
    .local v18, "td1":Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 158
    :goto_5
    :try_start_5
    new-instance v17, Ljava/io/File;

    .end local v17    # "td":Ljava/io/File;
    const-string v22, "brouter"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 161
    .restart local v17    # "td":Ljava/io/File;
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 164
    :goto_6
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 165
    move-object/from16 v8, v18

    .line 168
    .end local v18    # "td1":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lbtools/routingapp/ConfigHelper;->writeBaseDir(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .end local v17    # "td":Ljava/io/File;
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "basedir":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "using basedir: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 173
    const-string v20, "v1.4.9"

    .line 176
    .local v20, "version":Ljava/lang/String;
    const-string v22, "project directory"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/brouter"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter/segments4"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    .line 178
    const-string v22, "data directory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "segments4.zip"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 180
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/brouter/segments3/storageconfig.txt"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/brouter/segments4/storageconfig.txt"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v23}, Lbtools/routingapp/ConfigMigration;->tryMigrateStorageConfig(Ljava/io/File;Ljava/io/File;)V

    .line 184
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter/profiles2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    .line 185
    const-string v22, "profile directory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "profiles2.zip"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter/modes"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    .line 187
    const-string v22, "modes directory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "modes.zip"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    const-string v22, "readmes directory"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/brouter/readmes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "readmes.zip"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lbtools/routingapp/CoordinateReader;->obtainValidReader(Ljava/lang/String;Ljava/lang/String;)Lbtools/routingapp/CoordinateReader;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->waypoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->nogopoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    .line 193
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->nogoVetoList:Ljava/util/List;

    .line 195
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(coordinate-source: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->rootdir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->sourceHint:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/16 v22, 0x1

    :goto_7
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BRouterView;->needsViaSelection:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_5

    const/16 v22, 0x1

    :goto_8
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BRouterView;->needsNogoSelection:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_6

    const/16 v22, 0x1

    :goto_9
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BRouterView;->needsWaypointSelection:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->tracksdir:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 203
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->tracksdir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    .line 204
    const-string v22, "track directory"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lbtools/routingapp/BRouterView;->assertDirectoryExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    new-instance v19, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter.redirect"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v19, "tracksDirPointer":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lbtools/routingapp/BRouterView;->readSingleLineFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 212
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "redirect pointer file is empty: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 197
    .end local v19    # "tracksDirPointer":Ljava/io/File;
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 198
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 199
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 213
    .restart local v19    # "tracksDirPointer":Ljava/io/File;
    :cond_7
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_9

    .line 214
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "redirect pointer file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not point to a directory: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 218
    :cond_8
    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter.writetest"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 221
    .local v21, "writeTest":Ljava/io/File;
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 222
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 230
    .end local v19    # "tracksDirPointer":Ljava/io/File;
    .end local v21    # "writeTest":Ljava/io/File;
    :cond_9
    :goto_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 232
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/brouter"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    .line 235
    :cond_a
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "fileNames":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v16, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 239
    .local v14, "lookupsFound":Z
    array-length v0, v10

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    aget-object v9, v10, v22

    .line 241
    .local v9, "fileName":Ljava/lang/String;
    const-string v24, ".brf"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 243
    const/16 v24, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_b
    const-string v24, "lookups.dat"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 246
    const/4 v14, 0x1

    .line 239
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 224
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNames":[Ljava/lang/String;
    .end local v14    # "lookupsFound":Z
    .end local v16    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "tracksDirPointer":Ljava/io/File;
    .restart local v21    # "writeTest":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 226
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/routingapp/BRouterView;->tracksDir:Ljava/lang/String;

    goto :goto_a

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "tracksDirPointer":Ljava/io/File;
    .end local v21    # "writeTest":Ljava/io/File;
    .restart local v10    # "fileNames":[Ljava/lang/String;
    .restart local v14    # "lookupsFound":Z
    .restart local v16    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    new-instance v11, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->modesDir:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/timeoutdata.txt"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v11, "lastTimeoutFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 252
    .local v12, "lastTimeoutTime":J
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-lez v22, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    const-wide/32 v24, 0x493e0

    cmp-long v22, v22, v24

    if-gez v22, :cond_e

    .line 254
    const/16 v22, 0x0

    const-string v23, "<repeat timeout>"

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    :cond_e
    if-nez v14, :cond_f

    .line 259
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The profile-directory "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not contain the lookups.dat file. see www.dr-brenschede.de/brouter for setup instructions."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 262
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_10

    .line 264
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The profile-directory "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->profileDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " contains no routing profiles (*.brf). see www.dr-brenschede.de/brouter for setup instructions."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 267
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->segmentDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lbtools/router/RoutingHelper;->hasDirectoryAnyDatafiles(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 269
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lbtools/routingapp/BRouterActivity;

    invoke-virtual/range {v22 .. v22}, Lbtools/routingapp/BRouterActivity;->startDownloadManager()V

    .line 270
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/routingapp/BRouterView;->waitingForSelection:Z

    goto/16 :goto_3

    .line 273
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lbtools/routingapp/BRouterView;->getContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lbtools/routingapp/BRouterActivity;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Lbtools/routingapp/BRouterActivity;->selectProfile([Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 277
    .end local v6    # "basedir":Ljava/lang/String;
    .end local v8    # "fbd":Ljava/io/File;
    .end local v10    # "fileNames":[Ljava/lang/String;
    .end local v11    # "lastTimeoutFile":Ljava/io/File;
    .end local v12    # "lastTimeoutTime":J
    .end local v14    # "lookupsFound":Z
    .end local v16    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "version":Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_12
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " (coordinate-source: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lbtools/routingapp/CoordinateReader;->rootdir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 278
    :cond_13
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "fbd":Ljava/io/File;
    .restart local v17    # "td":Ljava/io/File;
    :catch_2
    move-exception v22

    goto/16 :goto_4

    .line 157
    .restart local v18    # "td1":Ljava/io/File;
    :catch_3
    move-exception v22

    goto/16 :goto_5

    .line 163
    :catch_4
    move-exception v22

    goto/16 :goto_6
.end method

.method public startWpDatabaseScan()V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lbtools/routingapp/WpDatabaseScanner;

    invoke-direct {v0}, Lbtools/routingapp/WpDatabaseScanner;-><init>()V

    iput-object v0, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    .line 384
    iget-object v0, p0, Lbtools/routingapp/BRouterView;->dataBaseScanner:Lbtools/routingapp/WpDatabaseScanner;

    invoke-virtual {v0}, Lbtools/routingapp/WpDatabaseScanner;->start()V

    .line 385
    invoke-virtual {p0}, Lbtools/routingapp/BRouterView;->invalidate()V

    .line 386
    return-void
.end method

.method public stopRouting()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/routingapp/BRouterView;->cr:Lbtools/router/RoutingEngine;

    invoke-virtual {v0}, Lbtools/router/RoutingEngine;->terminate()V

    .line 82
    :cond_0
    return-void
.end method

.method public updateNogoList([Z)V
    .locals 3
    .param p1, "enabled"    # [Z

    .prologue
    .line 316
    iget-object v1, p0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 318
    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lbtools/routingapp/BRouterView;->nogoVetoList:Ljava/util/List;

    iget-object v2, p0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lbtools/routingapp/BRouterView;->nogoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 316
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method public updateViaList(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "selectedVias":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/router/OsmNodeNamed;>;"
    iget-object v3, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmNodeNamed;

    .line 307
    .local v1, "n":Lbtools/router/OsmNodeNamed;
    iget-object v2, v1, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 308
    .local v2, "name":Ljava/lang/String;
    const-string v4, "from"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "to"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v1    # "n":Lbtools/router/OsmNodeNamed;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    .line 312
    return-void
.end method

.method public updateWaypointList(Ljava/lang/String;)V
    .locals 4
    .param p1, "waypoint"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v2, p0, Lbtools/routingapp/BRouterView;->cor:Lbtools/routingapp/CoordinateReader;

    iget-object v2, v2, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmNodeNamed;

    .line 366
    .local v1, "wp":Lbtools/router/OsmNodeNamed;
    iget-object v3, v1, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    iget v2, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    if-nez v2, :cond_1

    iget v2, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    if-eqz v2, :cond_3

    .line 370
    :cond_1
    iget-object v2, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    .local v0, "nwp":I
    if-eqz v0, :cond_2

    iget-object v2, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_3

    .line 373
    :cond_2
    iget-object v2, p0, Lbtools/routingapp/BRouterView;->wpList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v0    # "nwp":I
    .end local v1    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_3
    return-void
.end method
