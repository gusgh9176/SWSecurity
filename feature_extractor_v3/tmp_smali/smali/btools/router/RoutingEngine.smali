.class public Lbtools/router/RoutingEngine;
.super Ljava/lang/Thread;
.source "RoutingEngine.java"


# instance fields
.field public airDistanceCostFactor:D

.field private alternativeIndex:I

.field public boundary:Lbtools/router/SearchBoundary;

.field protected errorMessage:Ljava/lang/String;

.field private extract:[Ljava/lang/Object;

.field private finished:Z

.field private foundRawTrack:Lbtools/router/OsmTrack;

.field protected foundTrack:Lbtools/router/OsmTrack;

.field private guideTrack:Lbtools/router/OsmTrack;

.field private infoLogEnabled:Z

.field private infoLogWriter:Ljava/io/Writer;

.field private linksProcessed:I

.field private logfileBase:Ljava/lang/String;

.field private matchPath:Lbtools/router/OsmPathElement;

.field protected matchedWaypoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/MatchedWaypoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxRunningTime:J

.field private nodeLimit:I

.field private nodesCache:Lbtools/mapaccess/NodesCache;

.field private nodesMap:Lbtools/mapaccess/OsmNodesMap;

.field private openSet:Lbtools/util/SortedHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbtools/util/SortedHeap",
            "<",
            "Lbtools/router/OsmPath;",
            ">;"
        }
    .end annotation
.end field

.field private outfileBase:Ljava/lang/String;

.field public quite:Z

.field protected routingContext:Lbtools/router/RoutingContext;

.field protected segmentDir:Ljava/lang/String;

.field private stackSampler:Lbtools/util/StackSampler;

.field private startTime:J

.field private volatile terminated:Z

.field protected waypoints:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lbtools/router/RoutingContext;)V
    .locals 9
    .param p1, "outfileBase"    # Ljava/lang/String;
    .param p2, "logfileBase"    # Ljava/lang/String;
    .param p3, "segmentDir"    # Ljava/lang/String;
    .param p5, "rc"    # Lbtools/router/RoutingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;",
            "Lbtools/router/RoutingContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "waypoints":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    new-instance v8, Lbtools/util/SortedHeap;

    invoke-direct {v8}, Lbtools/util/SortedHeap;-><init>()V

    iput-object v8, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    .line 26
    iput-boolean v6, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 28
    iput-object v7, p0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    .line 30
    iput v6, p0, Lbtools/router/RoutingEngine;->linksProcessed:I

    .line 34
    new-instance v8, Lbtools/router/OsmTrack;

    invoke-direct {v8}, Lbtools/router/OsmTrack;-><init>()V

    iput-object v8, p0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    .line 35
    iput-object v7, p0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    .line 36
    iput v6, p0, Lbtools/router/RoutingEngine;->alternativeIndex:I

    .line 38
    iput-object v7, p0, Lbtools/router/RoutingEngine;->errorMessage:Ljava/lang/String;

    .line 59
    iput-boolean v6, p0, Lbtools/router/RoutingEngine;->quite:Z

    .line 66
    iput-object p3, p0, Lbtools/router/RoutingEngine;->segmentDir:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lbtools/router/RoutingEngine;->outfileBase:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lbtools/router/RoutingEngine;->logfileBase:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    .line 70
    if-eqz p1, :cond_3

    :goto_0
    iput-boolean v5, p0, Lbtools/router/RoutingEngine;->infoLogEnabled:Z

    .line 71
    iput-object p5, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    .line 73
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v6, v6, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "baseFolder":Ljava/io/File;
    if-nez v0, :cond_4

    move-object v0, v7

    .line 75
    :goto_1
    if-eqz v0, :cond_1

    .line 79
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "debug.txt"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v2, "debugLog":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v5, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 83
    const-string v5, "********** start request at "

    invoke-direct {p0, v5}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "********** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "stacks.txt"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v4, "stackLog":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    new-instance v5, Lbtools/util/StackSampler;

    const/16 v6, 0x3e8

    invoke-direct {v5, v4, v6}, Lbtools/util/StackSampler;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    .line 96
    iget-object v5, p0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    invoke-virtual {v5}, Lbtools/util/StackSampler;->start()V

    .line 97
    const-string v5, "********** started stacksampling"

    invoke-direct {p0, v5}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 100
    .end local v2    # "debugLog":Ljava/io/File;
    .end local v4    # "stackLog":Ljava/io/File;
    :cond_1
    invoke-static {p5}, Lbtools/router/ProfileCache;->parseProfile(Lbtools/router/RoutingContext;)Z

    move-result v1

    .line 101
    .local v1, "cachedProfile":Z
    invoke-direct {p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p5, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cached="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 105
    :cond_2
    return-void

    .end local v0    # "baseFolder":Ljava/io/File;
    .end local v1    # "cachedProfile":Z
    :cond_3
    move v5, v6

    .line 70
    goto/16 :goto_0

    .line 74
    .restart local v0    # "baseFolder":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    .line 87
    :catch_0
    move-exception v3

    .line 89
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open debug-log:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private _findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    .locals 70
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "startWp"    # Lbtools/router/MatchedWaypoint;
    .param p3, "endWp"    # Lbtools/router/MatchedWaypoint;
    .param p4, "costCuttingTrack"    # Lbtools/router/OsmTrack;
    .param p5, "refTrack"    # Lbtools/router/OsmTrack;
    .param p6, "fastPartialRecalc"    # Z

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v6, :cond_3

    const/16 v69, 0x1

    .line 753
    .local v69, "verbose":Z
    :goto_0
    const v41, 0x3b9aca00

    .line 754
    .local v41, "maxTotalCost":I
    const v32, 0x3b9aca00

    .line 756
    .local v32, "firstMatchCost":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findtrack with airDistanceCostFactor="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 757
    if-eqz p4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "costCuttingTrack.cost="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v9, v0, Lbtools/router/OsmTrack;->cost:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 759
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    .line 760
    const/16 v45, 0x0

    .line 762
    .local v45, "nodesVisited":I
    if-nez p3, :cond_4

    const-wide/16 v28, -0x1

    .line 763
    .local v28, "endNodeId1":J
    :goto_1
    if-nez p3, :cond_5

    const-wide/16 v30, -0x1

    .line 764
    .local v30, "endNodeId2":J
    :goto_2
    move-object/from16 v0, p2

    iget-object v6, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v6}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v56

    .line 765
    .local v56, "startNodeId1":J
    move-object/from16 v0, p2

    iget-object v6, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v6}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v58

    .line 767
    .local v58, "startNodeId2":J
    if-nez p3, :cond_6

    const/4 v10, 0x0

    .line 769
    .local v10, "endPos":Lbtools/router/OsmNodeNamed;
    :goto_3
    cmp-long v6, v56, v28

    if-nez v6, :cond_1

    cmp-long v6, v58, v30

    if-eqz v6, :cond_2

    :cond_1
    cmp-long v6, v56, v30

    if-nez v6, :cond_7

    cmp-long v6, v58, v28

    if-nez v6, :cond_7

    :cond_2
    const/4 v11, 0x1

    .line 772
    .local v11, "sameSegmentSearch":Z
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, Lbtools/router/RoutingEngine;->getStartNode(J)Lbtools/mapaccess/OsmNode;

    move-result-object v7

    .line 773
    .local v7, "start1":Lbtools/mapaccess/OsmNode;
    if-nez v7, :cond_8

    const/16 v62, 0x0

    .line 1095
    :goto_5
    return-object v62

    .line 751
    .end local v7    # "start1":Lbtools/mapaccess/OsmNode;
    .end local v10    # "endPos":Lbtools/router/OsmNodeNamed;
    .end local v11    # "sameSegmentSearch":Z
    .end local v28    # "endNodeId1":J
    .end local v30    # "endNodeId2":J
    .end local v32    # "firstMatchCost":I
    .end local v41    # "maxTotalCost":I
    .end local v45    # "nodesVisited":I
    .end local v56    # "startNodeId1":J
    .end local v58    # "startNodeId2":J
    .end local v69    # "verbose":Z
    :cond_3
    const/16 v69, 0x0

    goto/16 :goto_0

    .line 762
    .restart local v32    # "firstMatchCost":I
    .restart local v41    # "maxTotalCost":I
    .restart local v45    # "nodesVisited":I
    .restart local v69    # "verbose":Z
    :cond_4
    move-object/from16 v0, p3

    iget-object v6, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v6}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v28

    goto :goto_1

    .line 763
    .restart local v28    # "endNodeId1":J
    :cond_5
    move-object/from16 v0, p3

    iget-object v6, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v6}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v30

    goto :goto_2

    .line 767
    .restart local v30    # "endNodeId2":J
    .restart local v56    # "startNodeId1":J
    .restart local v58    # "startNodeId2":J
    :cond_6
    move-object/from16 v0, p3

    iget-object v10, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    goto :goto_3

    .line 769
    .restart local v10    # "endPos":Lbtools/router/OsmNodeNamed;
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 774
    .restart local v7    # "start1":Lbtools/mapaccess/OsmNode;
    .restart local v11    # "sameSegmentSearch":Z
    :cond_8
    const/4 v8, 0x0

    .line 775
    .local v8, "start2":Lbtools/mapaccess/OsmNode;
    iget-object v0, v7, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    move-object/from16 v39, v0

    .local v39, "link":Lbtools/mapaccess/OsmLink;
    :goto_6
    if-eqz v39, :cond_9

    .line 777
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v6

    invoke-virtual {v6}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v12

    cmp-long v6, v12, v58

    if-nez v6, :cond_a

    .line 779
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v8

    .line 783
    :cond_9
    if-nez v8, :cond_b

    const/16 v62, 0x0

    goto :goto_5

    .line 775
    :cond_a
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v39

    goto :goto_6

    .line 788
    :cond_b
    if-eqz v7, :cond_c

    if-nez v8, :cond_d

    :cond_c
    const/16 v62, 0x0

    goto :goto_5

    .line 790
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    if-eqz p6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v6, v6, Lbtools/router/RoutingContext;->startDirection:Ljava/lang/Integer;

    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v6, v6, Lbtools/router/RoutingContext;->inverseDirection:Z

    if-nez v6, :cond_14

    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, v9, Lbtools/router/RoutingContext;->startDirectionValid:Z

    if-eqz v6, :cond_e

    .line 792
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "using start direction "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v9, v9, Lbtools/router/RoutingContext;->startDirection:Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v6, p0

    move-object/from16 v9, p2

    .line 795
    invoke-direct/range {v6 .. v11}, Lbtools/router/RoutingEngine;->getStartPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmNodeNamed;Z)Lbtools/router/OsmPath;

    move-result-object v60

    .local v60, "startPath1":Lbtools/router/OsmPath;
    move-object/from16 v12, p0

    move-object v13, v8

    move-object v14, v7

    move-object/from16 v15, p2

    move-object/from16 v16, v10

    move/from16 v17, v11

    .line 796
    invoke-direct/range {v12 .. v17}, Lbtools/router/RoutingEngine;->getStartPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmNodeNamed;Z)Lbtools/router/OsmPath;

    move-result-object v61

    .line 799
    .local v61, "startPath2":Lbtools/router/OsmPath;
    if-eqz p4, :cond_13

    .line 801
    move-object/from16 v0, p4

    move-wide/from16 v1, v56

    move-wide/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtools/router/OsmTrack;->getLink(JJ)Lbtools/router/OsmPathElement;

    move-result-object v50

    .line 802
    .local v50, "pe1":Lbtools/router/OsmPathElement;
    if-eqz v50, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialMatch pe1.cost="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    iget v9, v0, Lbtools/router/OsmPathElement;->cost:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, v60

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v50

    iget v9, v0, Lbtools/router/OsmPathElement;->cost:I

    sub-int v19, v6, v9

    .local v19, "c":I
    if-gez v19, :cond_f

    const/16 v19, 0x0

    :cond_f
    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    move/from16 v32, v19

    .line 805
    .end local v19    # "c":I
    :cond_10
    move-object/from16 v0, p4

    move-wide/from16 v1, v58

    move-wide/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtools/router/OsmTrack;->getLink(JJ)Lbtools/router/OsmPathElement;

    move-result-object v51

    .line 806
    .local v51, "pe2":Lbtools/router/OsmPathElement;
    if-eqz v51, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialMatch pe2.cost="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v51

    iget v9, v0, Lbtools/router/OsmPathElement;->cost:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, v61

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v51

    iget v9, v0, Lbtools/router/OsmPathElement;->cost:I

    sub-int v19, v6, v9

    .restart local v19    # "c":I
    if-gez v19, :cond_11

    const/16 v19, 0x0

    :cond_11
    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    move/from16 v32, v19

    .line 809
    .end local v19    # "c":I
    :cond_12
    const v6, 0x3b9aca00

    move/from16 v0, v32

    if-ge v0, v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstMatchCost from initial match="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 812
    .end local v50    # "pe1":Lbtools/router/OsmPathElement;
    .end local v51    # "pe2":Lbtools/router/OsmPathElement;
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    monitor-enter v9

    .line 814
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v6}, Lbtools/util/SortedHeap;->clear()V

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->addToOpenset(Lbtools/router/OsmPath;)V

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->addToOpenset(Lbtools/router/OsmPath;)V

    .line 817
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lbtools/router/RoutingEngine;->terminated:Z

    if-eqz v6, :cond_15

    .line 822
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "operation killed by thread-priority-watchdog after "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/router/RoutingEngine;->startTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " seconds"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 790
    .end local v60    # "startPath1":Lbtools/router/OsmPath;
    .end local v61    # "startPath2":Lbtools/router/OsmPath;
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 817
    .restart local v60    # "startPath1":Lbtools/router/OsmPath;
    .restart local v61    # "startPath2":Lbtools/router/OsmPath;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 827
    :cond_15
    move-object/from16 v0, p0

    iget-wide v12, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_17

    .line 829
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    if-nez v6, :cond_16

    if-eqz p6, :cond_16

    move-object/from16 v0, p0

    iget-wide v12, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    const-wide/16 v14, 0x3

    div-long v66, v12, v14

    .line 830
    .local v66, "timeout":J
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/router/RoutingEngine;->startTime:J

    sub-long/2addr v12, v14

    cmp-long v6, v12, v66

    if-lez v6, :cond_17

    .line 832
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " timeout after "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v12, 0x3e8

    div-long v12, v66, v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " seconds"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 829
    .end local v66    # "timeout":J
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    move-wide/from16 v66, v0

    goto :goto_9

    .line 835
    :cond_17
    const/16 v48, 0x0

    .line 837
    .local v48, "path":Lbtools/router/OsmPath;
    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    monitor-enter v9

    .line 839
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v6}, Lbtools/util/SortedHeap;->popLowestKeyValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lbtools/router/OsmPath;

    move-object/from16 v48, v0

    .line 840
    monitor-exit v9

    .line 841
    if-nez v48, :cond_18

    .line 1095
    const/16 v62, 0x0

    goto/16 :goto_5

    .line 840
    :catchall_1
    move-exception v6

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 842
    :cond_18
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->airdistance:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_19

    .line 844
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lbtools/router/OsmPath;->unregisterUpTree(Lbtools/router/RoutingContext;)V

    goto/16 :goto_8

    .line 848
    :cond_19
    if-eqz p6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    if-eqz v6, :cond_1a

    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    int-to-long v12, v6

    const-wide/16 v14, 0x1e

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    cmp-long v6, v12, v14

    if-lez v6, :cond_1a

    move-object/from16 v0, p4

    iget-boolean v6, v0, Lbtools/router/OsmTrack;->isDirty:Z

    if-nez v6, :cond_1a

    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "early exit: firstMatchCost="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " path.cost="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget v9, v0, Lbtools/router/OsmPath;->cost:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    div-int/lit8 v9, v41, 0x2

    if-le v6, v9, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/router/RoutingEngine;->startTime:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    const-wide/16 v16, 0x3

    div-long v14, v14, v16

    cmp-long v6, v12, v14

    if-gez v6, :cond_1b

    .line 855
    const-string v6, "early exit supressed, running for completion, resetting timeout"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lbtools/router/RoutingEngine;->startTime:J

    .line 857
    const/16 p6, 0x0

    .line 865
    :cond_1a
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    if-lez v6, :cond_1c

    .line 867
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    if-nez v6, :cond_1c

    .line 869
    const/16 v62, 0x0

    goto/16 :goto_5

    .line 861
    :cond_1b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v9, "early exit for a close recalc"

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 873
    :cond_1c
    add-int/lit8 v45, v45, 0x1

    .line 874
    move-object/from16 v0, p0

    iget v6, v0, Lbtools/router/RoutingEngine;->linksProcessed:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lbtools/router/RoutingEngine;->linksProcessed:I

    .line 876
    invoke-virtual/range {v48 .. v48}, Lbtools/router/OsmPath;->getLink()Lbtools/mapaccess/OsmLink;

    move-result-object v21

    .line 877
    .local v21, "currentLink":Lbtools/mapaccess/OsmLink;
    invoke-virtual/range {v48 .. v48}, Lbtools/router/OsmPath;->getSourceNode()Lbtools/mapaccess/OsmNode;

    move-result-object v53

    .line 878
    .local v53, "sourceNode":Lbtools/mapaccess/OsmNode;
    invoke-virtual/range {v48 .. v48}, Lbtools/router/OsmPath;->getTargetNode()Lbtools/mapaccess/OsmNode;

    move-result-object v22

    .line 880
    .local v22, "currentNode":Lbtools/mapaccess/OsmNode;
    invoke-virtual/range {v22 .. v22}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v24

    .line 881
    .local v24, "currentNodeId":J
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->treedepth:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_24

    .line 883
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->treedepth:I

    if-nez v6, :cond_1d

    .line 885
    const/4 v6, 0x1

    move-object/from16 v0, v48

    iput v6, v0, Lbtools/router/OsmPath;->treedepth:I

    .line 888
    :cond_1d
    invoke-virtual/range {v53 .. v53}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v54

    .line 889
    .local v54, "sourceNodeId":J
    cmp-long v6, v54, v28

    if-nez v6, :cond_1e

    cmp-long v6, v24, v30

    if-eqz v6, :cond_1f

    :cond_1e
    cmp-long v6, v54, v30

    if-nez v6, :cond_20

    cmp-long v6, v24, v28

    if-nez v6, :cond_20

    .line 893
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found track at cost "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget v9, v0, Lbtools/router/OsmPath;->cost:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " nodesVisited = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v69

    invoke-direct {v0, v1, v2}, Lbtools/router/RoutingEngine;->compileTrack(Lbtools/router/OsmPath;Z)Lbtools/router/OsmTrack;

    move-result-object v62

    .line 895
    .local v62, "t":Lbtools/router/OsmTrack;
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v6, v6, Lbtools/router/RoutingContext;->showspeed:Z

    move-object/from16 v0, v62

    iput-boolean v6, v0, Lbtools/router/OsmTrack;->showspeed:Z

    goto/16 :goto_5

    .line 900
    .end local v62    # "t":Lbtools/router/OsmTrack;
    :cond_20
    if-eqz p4, :cond_24

    .line 902
    move-object/from16 v0, p4

    move-wide/from16 v1, v54

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lbtools/router/OsmTrack;->getLink(JJ)Lbtools/router/OsmPathElement;

    move-result-object v49

    .line 903
    .local v49, "pe":Lbtools/router/OsmPathElement;
    if-eqz v49, :cond_24

    .line 906
    move-object/from16 v0, v48

    iget-object v6, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    if-nez v6, :cond_25

    const/16 v47, 0x0

    .line 909
    .local v47, "parentcost":I
    :goto_a
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    sub-int v6, v6, v47

    move-object/from16 v0, v49

    iget v9, v0, Lbtools/router/OsmPathElement;->cost:I

    sub-int v19, v6, v9

    .line 910
    .restart local v19    # "c":I
    if-lez v19, :cond_21

    add-int v47, v47, v19

    .line 912
    :cond_21
    move/from16 v0, v47

    move/from16 v1, v32

    if-ge v0, v1, :cond_22

    move/from16 v32, v47

    .line 914
    :cond_22
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    .line 915
    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Lbtools/router/OsmPath;->elevationCorrection(Lbtools/router/RoutingContext;)I

    move-result v9

    add-int/2addr v6, v9

    move-object/from16 v0, p4

    iget v9, v0, Lbtools/router/OsmTrack;->cost:I

    move-object/from16 v0, v49

    iget v12, v0, Lbtools/router/OsmPathElement;->cost:I

    sub-int/2addr v9, v12

    add-int v20, v6, v9

    .line 917
    .local v20, "costEstimate":I
    move/from16 v0, v20

    move/from16 v1, v41

    if-gt v0, v1, :cond_23

    .line 919
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v6, v6, Lbtools/router/RoutingContext;->countTraffic:Z

    move-object/from16 v0, v48

    invoke-static {v0, v6}, Lbtools/router/OsmPathElement;->create(Lbtools/router/OsmPath;Z)Lbtools/router/OsmPathElement;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    .line 921
    :cond_23
    move/from16 v0, v20

    move/from16 v1, v41

    if-ge v0, v1, :cond_24

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxcost "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " -> "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 924
    move/from16 v41, v20

    .line 930
    .end local v19    # "c":I
    .end local v20    # "costEstimate":I
    .end local v47    # "parentcost":I
    .end local v49    # "pe":Lbtools/router/OsmPathElement;
    .end local v54    # "sourceNodeId":J
    :cond_24
    move-object/from16 v0, v48

    iget v0, v0, Lbtools/router/OsmPath;->airdistance:I

    move/from16 v38, v0

    .line 931
    .local v38, "keepPathAirdistance":I
    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getFirstLinkHolder(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v27

    .line 932
    .local v27, "firstLinkHolder":Lbtools/mapaccess/OsmLinkHolder;
    move-object/from16 v40, v27

    .local v40, "linkHolder":Lbtools/mapaccess/OsmLinkHolder;
    :goto_b
    if-eqz v40, :cond_26

    move-object/from16 v6, v40

    .line 934
    check-cast v6, Lbtools/router/OsmPath;

    const/4 v9, -0x1

    iput v9, v6, Lbtools/router/OsmPath;->airdistance:I

    .line 932
    invoke-interface/range {v40 .. v40}, Lbtools/mapaccess/OsmLinkHolder;->getNextForLink()Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v40

    goto :goto_b

    .line 906
    .end local v27    # "firstLinkHolder":Lbtools/mapaccess/OsmLinkHolder;
    .end local v38    # "keepPathAirdistance":I
    .end local v40    # "linkHolder":Lbtools/mapaccess/OsmLinkHolder;
    .restart local v49    # "pe":Lbtools/router/OsmPathElement;
    .restart local v54    # "sourceNodeId":J
    :cond_25
    move-object/from16 v0, v48

    iget-object v6, v0, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    iget v0, v6, Lbtools/router/OsmPathElement;->cost:I

    move/from16 v47, v0

    goto/16 :goto_a

    .line 937
    .end local v49    # "pe":Lbtools/router/OsmPathElement;
    .end local v54    # "sourceNodeId":J
    .restart local v27    # "firstLinkHolder":Lbtools/mapaccess/OsmLinkHolder;
    .restart local v38    # "keepPathAirdistance":I
    .restart local v40    # "linkHolder":Lbtools/mapaccess/OsmLinkHolder;
    :cond_26
    invoke-virtual/range {v21 .. v21}, Lbtools/mapaccess/OsmLink;->isBidirectional()Z

    move-result v36

    .line 938
    .local v36, "isBidir":Z
    move-object/from16 v0, v53

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmNode;->unlinkLink(Lbtools/mapaccess/OsmLink;)V

    .line 941
    if-eqz v36, :cond_27

    invoke-virtual/range {v21 .. v22}, Lbtools/mapaccess/OsmLink;->getFirstLinkHolder(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v6

    if-nez v6, :cond_27

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v6, v6, Lbtools/router/RoutingContext;->considerTurnRestrictions:Z

    if-nez v6, :cond_27

    .line 943
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmNode;->unlinkLink(Lbtools/mapaccess/OsmLink;)V

    .line 947
    :cond_27
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v48

    iget v9, v0, Lbtools/router/OsmPath;->airdistance:I

    add-int/2addr v6, v9

    add-int/lit8 v9, v41, 0x64

    if-le v6, v9, :cond_28

    .line 949
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lbtools/router/OsmPath;->unregisterUpTree(Lbtools/router/RoutingContext;)V

    goto/16 :goto_8

    .line 953
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v9, 0x0

    iput-object v9, v6, Lbtools/router/RoutingContext;->firstPrePath:Lbtools/router/OsmPrePath;

    .line 955
    move-object/from16 v0, v22

    iget-object v0, v0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    move-object/from16 v39, v0

    :goto_c
    if-eqz v39, :cond_2b

    .line 957
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v44

    .line 959
    .local v44, "nextNode":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lbtools/mapaccess/NodesCache;->obtainNonHollowNode(Lbtools/mapaccess/OsmNode;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 955
    :cond_29
    :goto_d
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v39

    goto :goto_c

    .line 963
    :cond_2a
    move-object/from16 v0, v44

    iget-object v6, v0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    if-eqz v6, :cond_29

    .line 967
    move-object/from16 v0, v44

    move-object/from16 v1, v53

    if-eq v0, v1, :cond_29

    .line 972
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v48

    move-object/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Lbtools/router/RoutingContext;->createPrePath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;)Lbtools/router/OsmPrePath;

    move-result-object v52

    .line 973
    .local v52, "prePath":Lbtools/router/OsmPrePath;
    if-eqz v52, :cond_29

    .line 975
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v6, v6, Lbtools/router/RoutingContext;->firstPrePath:Lbtools/router/OsmPrePath;

    move-object/from16 v0, v52

    iput-object v6, v0, Lbtools/router/OsmPrePath;->next:Lbtools/router/OsmPrePath;

    .line 976
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v52

    iput-object v0, v6, Lbtools/router/RoutingContext;->firstPrePath:Lbtools/router/OsmPrePath;

    goto :goto_d

    .line 980
    .end local v44    # "nextNode":Lbtools/mapaccess/OsmNode;
    .end local v52    # "prePath":Lbtools/router/OsmPrePath;
    :cond_2b
    move-object/from16 v0, v22

    iget-object v0, v0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    move-object/from16 v39, v0

    :goto_e
    if-eqz v39, :cond_41

    .line 982
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v44

    .line 984
    .restart local v44    # "nextNode":Lbtools/mapaccess/OsmNode;
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lbtools/mapaccess/NodesCache;->obtainNonHollowNode(Lbtools/mapaccess/OsmNode;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 980
    :cond_2c
    :goto_f
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v39

    goto :goto_e

    .line 988
    :cond_2d
    move-object/from16 v0, v44

    iget-object v6, v0, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    if-eqz v6, :cond_2c

    .line 992
    move-object/from16 v0, v44

    move-object/from16 v1, v53

    if-eq v0, v1, :cond_2c

    .line 997
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v6, :cond_2f

    .line 999
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->treedepth:I

    add-int/lit8 v33, v6, 0x1

    .line 1000
    .local v33, "gidx":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    iget-object v6, v6, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v33

    if-ge v0, v6, :cond_2c

    .line 1004
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    iget-object v6, v6, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v9, v9, Lbtools/router/RoutingContext;->inverseRouting:Z

    if-eqz v9, :cond_2e

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    iget-object v9, v9, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int v33, v9, v33

    .end local v33    # "gidx":I
    :cond_2e
    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lbtools/router/OsmPathElement;

    .line 1005
    .local v34, "guideNode":Lbtools/router/OsmPathElement;
    invoke-virtual/range {v44 .. v44}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v42

    .line 1006
    .local v42, "nextId":J
    invoke-virtual/range {v34 .. v34}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v12

    cmp-long v6, v42, v12

    if-eqz v6, :cond_2f

    .line 1009
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget v6, v6, Lbtools/router/RoutingContext;->turnInstructionMode:I

    if-lez v6, :cond_2c

    .line 1011
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v9, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v39

    move-object/from16 v2, p5

    invoke-virtual {v6, v0, v1, v2, v9}, Lbtools/router/RoutingContext;->createPath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmPath;

    move-result-object v23

    .line 1012
    .local v23, "detour":Lbtools/router/OsmPath;
    move-object/from16 v0, v23

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    int-to-double v12, v6

    const-wide/16 v14, 0x0

    cmpl-double v6, v12, v14

    if-ltz v6, :cond_2c

    cmp-long v6, v42, v56

    if-eqz v6, :cond_2c

    cmp-long v6, v42, v58

    if-eqz v6, :cond_2c

    .line 1014
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    invoke-virtual/range {v22 .. v22}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v12

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lbtools/router/OsmPathElement;->create(Lbtools/router/OsmPath;Z)Lbtools/router/OsmPathElement;

    move-result-object v9

    invoke-virtual {v6, v12, v13, v9}, Lbtools/router/OsmTrack;->registerDetourForId(JLbtools/router/OsmPathElement;)V

    goto/16 :goto_f

    .line 1021
    .end local v23    # "detour":Lbtools/router/OsmPath;
    .end local v34    # "guideNode":Lbtools/router/OsmPathElement;
    .end local v42    # "nextId":J
    :cond_2f
    const/16 v18, 0x0

    .line 1023
    .local v18, "bestPath":Lbtools/router/OsmPath;
    const/16 v37, 0x0

    .line 1024
    .local v37, "isFinalLink":Z
    invoke-virtual/range {v44 .. v44}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v64

    .line 1025
    .local v64, "targetNodeId":J
    cmp-long v6, v24, v28

    if-eqz v6, :cond_30

    cmp-long v6, v24, v30

    if-nez v6, :cond_32

    .line 1027
    :cond_30
    cmp-long v6, v64, v28

    if-eqz v6, :cond_31

    cmp-long v6, v64, v30

    if-nez v6, :cond_32

    .line 1029
    :cond_31
    const/16 v37, 0x1

    .line 1033
    :cond_32
    move-object/from16 v40, v27

    :goto_10
    if-eqz v40, :cond_37

    move-object/from16 v46, v40

    .line 1035
    check-cast v46, Lbtools/router/OsmPath;

    .line 1038
    .local v46, "otherPath":Lbtools/router/OsmPath;
    if-eqz v37, :cond_33

    .line 1040
    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    :try_start_3
    iput-wide v12, v10, Lbtools/router/OsmNodeNamed;->radius:D

    .line 1041
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v9, 0x1

    invoke-virtual {v6, v10, v9}, Lbtools/router/RoutingContext;->setWaypoint(Lbtools/router/OsmNodeNamed;Z)V

    .line 1043
    :cond_33
    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v6, :cond_36

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, v46

    move-object/from16 v1, v39

    move-object/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2, v6}, Lbtools/router/RoutingContext;->createPath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmPath;

    move-result-object v63

    .line 1044
    .local v63, "testPath":Lbtools/router/OsmPath;
    move-object/from16 v0, v63

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    if-ltz v6, :cond_35

    if-eqz v18, :cond_34

    move-object/from16 v0, v63

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v18

    iget v9, v0, Lbtools/router/OsmPath;->cost:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ge v6, v9, :cond_35

    .line 1046
    :cond_34
    move-object/from16 v18, v63

    .line 1051
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v6}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    .line 1033
    invoke-interface/range {v40 .. v40}, Lbtools/mapaccess/OsmLinkHolder;->getNextForLink()Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v40

    goto :goto_10

    .line 1043
    .end local v63    # "testPath":Lbtools/router/OsmPath;
    :cond_36
    const/4 v6, 0x0

    goto :goto_11

    .line 1051
    :catchall_2
    move-exception v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v9}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    throw v6

    .line 1054
    .end local v46    # "otherPath":Lbtools/router/OsmPath;
    :cond_37
    if-eqz v18, :cond_2c

    .line 1056
    if-nez v10, :cond_3c

    const/16 v68, 0x1

    .line 1058
    .local v68, "trafficSim":Z
    :goto_12
    if-eqz v68, :cond_3d

    move/from16 v6, v38

    :goto_13
    move-object/from16 v0, v18

    iput v6, v0, Lbtools/router/OsmPath;->airdistance:I

    .line 1060
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->boundary:Lbtools/router/SearchBoundary;

    if-eqz v6, :cond_38

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->boundary:Lbtools/router/SearchBoundary;

    move-object/from16 v0, v18

    iget v9, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v44

    invoke-virtual {v6, v0, v9}, Lbtools/router/SearchBoundary;->isInBoundary(Lbtools/mapaccess/OsmNode;I)Z

    move-result v6

    if-eqz v6, :cond_3f

    :cond_38
    const/16 v35, 0x1

    .line 1062
    .local v35, "inRadius":Z
    :goto_14
    if-eqz v35, :cond_2c

    if-nez v37, :cond_39

    move-object/from16 v0, v18

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    move-object/from16 v0, v18

    iget v9, v0, Lbtools/router/OsmPath;->airdistance:I

    add-int/2addr v6, v9

    add-int/lit8 v9, v41, 0x64

    if-gt v6, v9, :cond_2c

    .line 1065
    :cond_39
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/mapaccess/OsmLink;->getFirstLinkHolder(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v26

    .line 1066
    .local v26, "dominator":Lbtools/mapaccess/OsmLinkHolder;
    :goto_15
    if-nez v68, :cond_3a

    if-eqz v26, :cond_3a

    move-object/from16 v6, v26

    .line 1068
    check-cast v6, Lbtools/router/OsmPath;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v9}, Lbtools/router/OsmPath;->definitlyWorseThan(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1075
    :cond_3a
    if-nez v26, :cond_2c

    .line 1077
    if-eqz v68, :cond_3b

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->boundary:Lbtools/router/SearchBoundary;

    if-eqz v6, :cond_3b

    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    if-nez v6, :cond_3b

    move-object/from16 v0, v18

    iget v6, v0, Lbtools/router/OsmPath;->cost:I

    if-lez v6, :cond_3b

    .line 1079
    move-object/from16 v0, v18

    iget v6, v0, Lbtools/router/OsmPath;->airdistance:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->boundary:Lbtools/router/SearchBoundary;

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Lbtools/router/SearchBoundary;->getBoundaryDistance(Lbtools/mapaccess/OsmNode;)I

    move-result v9

    add-int/2addr v6, v9

    move-object/from16 v0, v18

    iput v6, v0, Lbtools/router/OsmPath;->airdistance:I

    .line 1082
    :cond_3b
    move-object/from16 v0, v48

    iget v6, v0, Lbtools/router/OsmPath;->treedepth:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    iput v6, v0, Lbtools/router/OsmPath;->treedepth:I

    .line 1083
    move-object/from16 v0, v39

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lbtools/mapaccess/OsmLink;->addLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v9, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    monitor-enter v9

    .line 1086
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->addToOpenset(Lbtools/router/OsmPath;)V

    .line 1087
    monitor-exit v9

    goto/16 :goto_f

    :catchall_3
    move-exception v6

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    .line 1056
    .end local v26    # "dominator":Lbtools/mapaccess/OsmLinkHolder;
    .end local v35    # "inRadius":Z
    .end local v68    # "trafficSim":Z
    :cond_3c
    const/16 v68, 0x0

    goto/16 :goto_12

    .line 1058
    .restart local v68    # "trafficSim":Z
    :cond_3d
    if-eqz v37, :cond_3e

    const/4 v6, 0x0

    goto/16 :goto_13

    :cond_3e
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v6

    goto/16 :goto_13

    .line 1060
    :cond_3f
    const/16 v35, 0x0

    goto/16 :goto_14

    .line 1072
    .restart local v26    # "dominator":Lbtools/mapaccess/OsmLinkHolder;
    .restart local v35    # "inRadius":Z
    :cond_40
    invoke-interface/range {v26 .. v26}, Lbtools/mapaccess/OsmLinkHolder;->getNextForLink()Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v26

    goto :goto_15

    .line 1093
    .end local v18    # "bestPath":Lbtools/router/OsmPath;
    .end local v26    # "dominator":Lbtools/mapaccess/OsmLinkHolder;
    .end local v35    # "inRadius":Z
    .end local v37    # "isFinalLink":Z
    .end local v44    # "nextNode":Lbtools/mapaccess/OsmNode;
    .end local v64    # "targetNodeId":J
    .end local v68    # "trafficSim":Z
    :cond_41
    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lbtools/router/OsmPath;->unregisterUpTree(Lbtools/router/RoutingContext;)V

    goto/16 :goto_8
.end method

.method private addToOpenset(Lbtools/router/OsmPath;)V
    .locals 6
    .param p1, "path"    # Lbtools/router/OsmPath;

    .prologue
    .line 1100
    iget v0, p1, Lbtools/router/OsmPath;->cost:I

    if-ltz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    iget v1, p1, Lbtools/router/OsmPath;->cost:I

    iget v2, p1, Lbtools/router/OsmPath;->airdistance:I

    int-to-double v2, v2

    iget-wide v4, p0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Lbtools/util/SortedHeap;->add(ILjava/lang/Object;)V

    .line 1103
    invoke-virtual {p1}, Lbtools/router/OsmPath;->registerUpTree()V

    .line 1105
    :cond_0
    return-void
.end method

.method private compileTrack(Lbtools/router/OsmPath;Z)Lbtools/router/OsmTrack;
    .locals 22
    .param p1, "path"    # Lbtools/router/OsmPath;
    .param p2, "verbose"    # Z

    .prologue
    .line 1109
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lbtools/router/OsmPathElement;->create(Lbtools/router/OsmPath;Z)Lbtools/router/OsmPathElement;

    move-result-object v13

    .line 1112
    .local v13, "element":Lbtools/router/OsmPathElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1114
    iget-object v13, v13, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 1117
    :cond_0
    invoke-virtual {v13}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v15

    .line 1119
    .local v15, "totalTime":F
    new-instance v16, Lbtools/router/OsmTrack;

    invoke-direct/range {v16 .. v16}, Lbtools/router/OsmTrack;-><init>()V

    .line 1120
    .local v16, "track":Lbtools/router/OsmTrack;
    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/OsmPath;->cost:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/OsmTrack;->cost:I

    .line 1121
    invoke-virtual/range {p1 .. p1}, Lbtools/router/OsmPath;->getTotalEnergy()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/OsmTrack;->energy:I

    .line 1123
    const/4 v4, 0x0

    .line 1124
    .local v4, "distance":I
    const-wide/16 v2, 0x0

    .line 1125
    .local v2, "ascend":D
    const-wide/16 v6, 0x0

    .line 1127
    .local v6, "ehb":D
    const/16 v12, -0x8000

    .line 1128
    .local v12, "ele_start":S
    const/16 v10, -0x8000

    .line 1130
    .local v10, "ele_end":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->inverseRouting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const-wide/high16 v8, -0x4030000000000000L    # -0.25

    .line 1131
    .local v8, "eleFactor":D
    :goto_0
    if-eqz v13, :cond_9

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    iget-object v0, v13, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1135
    new-instance v17, Lbtools/router/MessageData;

    invoke-direct/range {v17 .. v17}, Lbtools/router/MessageData;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 1138
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lbtools/router/RoutingContext;->inverseRouting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1140
    invoke-virtual {v13}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v17

    sub-float v17, v15, v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbtools/router/OsmPathElement;->setTime(F)V

    .line 1141
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    :goto_1
    iget-object v14, v13, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 1150
    .local v14, "nextElement":Lbtools/router/OsmPathElement;
    invoke-virtual {v13}, Lbtools/router/OsmPathElement;->getSElev()S

    move-result v5

    .line 1151
    .local v5, "ele":S
    const/16 v17, -0x8000

    move/from16 v0, v17

    if-eq v5, v0, :cond_2

    move v12, v5

    .line 1152
    :cond_2
    const/16 v17, -0x8000

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    move v10, v5

    .line 1154
    :cond_3
    if-eqz v14, :cond_5

    .line 1156
    invoke-virtual {v13, v14}, Lbtools/router/OsmPathElement;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v17

    add-int v4, v4, v17

    .line 1157
    invoke-virtual {v14}, Lbtools/router/OsmPathElement;->getSElev()S

    move-result v11

    .line 1158
    .local v11, "ele_next":S
    const/16 v17, -0x8000

    move/from16 v0, v17

    if-eq v11, v0, :cond_4

    .line 1160
    sub-int v17, v5, v11

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    add-double v6, v6, v18

    .line 1162
    :cond_4
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpl-double v17, v6, v18

    if-lez v17, :cond_8

    .line 1164
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    sub-double v18, v6, v18

    add-double v2, v2, v18

    .line 1165
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1172
    .end local v11    # "ele_next":S
    :cond_5
    :goto_2
    move-object v13, v14

    .line 1173
    goto :goto_0

    .line 1130
    .end local v5    # "ele":S
    .end local v8    # "eleFactor":D
    .end local v14    # "nextElement":Lbtools/router/OsmPathElement;
    :cond_6
    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    .line 1145
    .restart local v8    # "eleFactor":D
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1167
    .restart local v5    # "ele":S
    .restart local v11    # "ele_next":S
    .restart local v14    # "nextElement":Lbtools/router/OsmPathElement;
    :cond_8
    const-wide/16 v18, 0x0

    cmpg-double v17, v6, v18

    if-gez v17, :cond_5

    .line 1169
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 1174
    .end local v5    # "ele":S
    .end local v11    # "ele_next":S
    .end local v14    # "nextElement":Lbtools/router/OsmPathElement;
    :cond_9
    add-double/2addr v2, v6

    .line 1175
    move-object/from16 v0, v16

    iput v4, v0, Lbtools/router/OsmTrack;->distance:I

    .line 1176
    double-to-int v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/OsmTrack;->ascend:I

    .line 1177
    sub-int v17, v10, v12

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lbtools/router/OsmTrack;->plainAscend:I

    .line 1178
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "track-length = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget v0, v0, Lbtools/router/OsmTrack;->distance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 1179
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "filtered ascend = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget v0, v0, Lbtools/router/OsmTrack;->ascend:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {v16 .. v16}, Lbtools/router/OsmTrack;->buildMap()V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lbtools/router/OsmTrack;->copyDetours(Lbtools/router/OsmTrack;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lbtools/router/OsmTrack;->processVoiceHints(Lbtools/router/RoutingContext;)V

    .line 1188
    :cond_a
    return-object v16
.end method

.method private expandHollowLinkTargets(Lbtools/mapaccess/OsmNode;)V
    .locals 3
    .param p1, "n"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 479
    iget-object v0, p1, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .local v0, "link":Lbtools/mapaccess/OsmLink;
    :goto_0
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v0, p1}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbtools/mapaccess/NodesCache;->obtainNonHollowNode(Lbtools/mapaccess/OsmNode;)Z

    .line 479
    invoke-virtual {v0, p1}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method private findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    .locals 3
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "startWp"    # Lbtools/router/MatchedWaypoint;
    .param p3, "endWp"    # Lbtools/router/MatchedWaypoint;
    .param p4, "costCuttingTrack"    # Lbtools/router/OsmTrack;
    .param p5, "refTrack"    # Lbtools/router/OsmTrack;
    .param p6, "fastPartialRecalc"    # Z

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 739
    .local v0, "detailed":Z
    :goto_0
    invoke-direct {p0, v0}, Lbtools/router/RoutingEngine;->resetCache(Z)V

    .line 740
    invoke-direct/range {p0 .. p6}, Lbtools/router/RoutingEngine;->_findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 744
    iget-object v2, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v2}, Lbtools/mapaccess/NodesCache;->cleanNonVirgin()V

    .line 740
    return-object v1

    .line 738
    .end local v0    # "detailed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v2}, Lbtools/mapaccess/NodesCache;->cleanNonVirgin()V

    throw v1
.end method

.method private findTrack([Lbtools/router/OsmTrack;[Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;
    .locals 24
    .param p1, "refTracks"    # [Lbtools/router/OsmTrack;
    .param p2, "lastTracks"    # [Lbtools/router/OsmTrack;

    .prologue
    .line 335
    new-instance v22, Lbtools/router/OsmTrack;

    invoke-direct/range {v22 .. v22}, Lbtools/router/OsmTrack;-><init>()V

    .line 336
    .local v22, "totaltrack":Lbtools/router/OsmTrack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    .line 338
    .local v19, "nUnmatched":I
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lbtools/router/OsmNodeNamed;

    .line 342
    .local v23, "wp":Lbtools/router/OsmNodeNamed;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    .end local v23    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_0
    const/16 v20, 0x0

    .line 348
    .local v20, "nearbyTrack":Lbtools/router/OsmTrack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    aget-object v3, p2, v3

    if-nez v3, :cond_2

    .line 350
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v8, "debugInfo":Ljava/lang/StringBuilder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v3, v3, Lbtools/router/RoutingContext;->rawTrackPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmNodeNamed;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v5}, Lbtools/router/RoutingContext;->getNogoChecksums()[J

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-wide v6, v6, Lbtools/router/RoutingContext;->profileTimestamp:J

    invoke-static/range {v3 .. v8}, Lbtools/router/OsmTrack;->readBinary(Ljava/lang/String;Lbtools/router/OsmNodeNamed;[JJLjava/lang/StringBuilder;)Lbtools/router/OsmTrack;

    move-result-object v20

    .line 352
    if-eqz v20, :cond_1

    .line 354
    add-int/lit8 v19, v19, -0x1

    .line 356
    :cond_1
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    if-eqz v20, :cond_4

    const/16 v16, 0x1

    .line 359
    .local v16, "found":Z
    :goto_2
    if-eqz v16, :cond_5

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lbtools/router/OsmTrack;->isDirty:Z

    .line 360
    .local v2, "dirty":Z
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read referenceTrack, found="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dirty="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 364
    .end local v2    # "dirty":Z
    .end local v8    # "debugInfo":Ljava/lang/StringBuilder;
    .end local v16    # "found":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    if-nez v3, :cond_b

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    .line 367
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 369
    new-instance v18, Lbtools/router/MatchedWaypoint;

    invoke-direct/range {v18 .. v18}, Lbtools/router/MatchedWaypoint;-><init>()V

    .line 370
    .local v18, "mwp":Lbtools/router/MatchedWaypoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/OsmNodeNamed;

    move-object/from16 v0, v18

    iput-object v3, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 350
    .end local v17    # "i":I
    .end local v18    # "mwp":Lbtools/router/MatchedWaypoint;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 358
    .restart local v8    # "debugInfo":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 359
    .restart local v16    # "found":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 373
    .end local v8    # "debugInfo":Ljava/lang/StringBuilder;
    .end local v16    # "found":Z
    .restart local v17    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbtools/router/RoutingEngine;->matchWaypointsToNodes(Ljava/util/List;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v3, v3, Lbtools/router/RoutingContext;->inverseRouting:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v4, Lbtools/router/RoutingContext;->inverseDirection:Z

    .line 377
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    .line 378
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_a

    .line 380
    const/16 v3, 0xc8

    move-object/from16 v0, p0

    iput v3, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v3, v3, Lbtools/router/RoutingContext;->inverseRouting:Z

    if-eqz v3, :cond_8

    .line 383
    const-string v10, "start-island-check"

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbtools/router/MatchedWaypoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    add-int/lit8 v4, v17, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbtools/router/MatchedWaypoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;

    move-result-object v21

    .line 384
    .local v21, "seg":Lbtools/router/OsmTrack;
    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    if-lez v3, :cond_9

    .line 386
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start island detected for section "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    .end local v21    # "seg":Lbtools/router/OsmTrack;
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 391
    :cond_8
    const-string v10, "target-island-check"

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    add-int/lit8 v4, v17, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbtools/router/MatchedWaypoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbtools/router/MatchedWaypoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;

    move-result-object v21

    .line 392
    .restart local v21    # "seg":Lbtools/router/OsmTrack;
    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    if-lez v3, :cond_9

    .line 394
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target island detected for section "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 398
    .end local v21    # "seg":Lbtools/router/OsmTrack;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lbtools/router/RoutingContext;->inverseDirection:Z

    .line 399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lbtools/router/RoutingEngine;->nodeLimit:I

    .line 401
    if-eqz v20, :cond_b

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move-object/from16 v0, v20

    iget-object v4, v0, Lbtools/router/OsmTrack;->endPoint:Lbtools/router/MatchedWaypoint;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v17    # "i":I
    :cond_b
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 409
    aget-object v3, p2, v17

    if-eqz v3, :cond_d

    .line 411
    aget-object v3, p1, v17

    if-nez v3, :cond_c

    new-instance v3, Lbtools/router/OsmTrack;

    invoke-direct {v3}, Lbtools/router/OsmTrack;-><init>()V

    aput-object v3, p1, v17

    .line 412
    :cond_c
    aget-object v3, p1, v17

    aget-object v4, p2, v17

    invoke-virtual {v3, v4}, Lbtools/router/OsmTrack;->addNodes(Lbtools/router/OsmTrack;)V

    .line 416
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v3, v3, Lbtools/router/RoutingContext;->inverseRouting:Z

    if-eqz v3, :cond_f

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lbtools/router/RoutingContext;->inverseDirection:Z

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    add-int/lit8 v4, v17, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/MatchedWaypoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/MatchedWaypoint;

    const/4 v5, 0x0

    aget-object v6, p1, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lbtools/router/RoutingEngine;->searchTrack(Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v21

    .line 420
    .restart local v21    # "seg":Lbtools/router/OsmTrack;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lbtools/router/RoutingContext;->inverseDirection:Z

    .line 427
    :goto_8
    if-nez v21, :cond_11

    const/16 v22, 0x0

    .line 431
    .end local v21    # "seg":Lbtools/router/OsmTrack;
    .end local v22    # "totaltrack":Lbtools/router/OsmTrack;
    :cond_e
    return-object v22

    .line 424
    .restart local v22    # "totaltrack":Lbtools/router/OsmTrack;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/MatchedWaypoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    add-int/lit8 v5, v17, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/MatchedWaypoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/router/RoutingEngine;->matchedWaypoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_10

    move-object/from16 v5, v20

    :goto_9
    aget-object v6, p1, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lbtools/router/RoutingEngine;->searchTrack(Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v21

    .restart local v21    # "seg":Lbtools/router/OsmTrack;
    goto :goto_8

    .end local v21    # "seg":Lbtools/router/OsmTrack;
    :cond_10
    const/4 v5, 0x0

    goto :goto_9

    .line 428
    .restart local v21    # "seg":Lbtools/router/OsmTrack;
    :cond_11
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lbtools/router/OsmTrack;->appendTrack(Lbtools/router/OsmTrack;)V

    .line 429
    aput-object v21, p2, v17

    .line 407
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7
.end method

.method private getEndPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmNodeNamed;)Lbtools/router/OsmPath;
    .locals 6
    .param p1, "n1"    # Lbtools/mapaccess/OsmNode;
    .param p2, "link"    # Lbtools/mapaccess/OsmLink;
    .param p3, "wp"    # Lbtools/router/OsmNodeNamed;

    .prologue
    const/4 v2, 0x1

    .line 719
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v3, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lbtools/router/RoutingContext;->setWaypoint(Lbtools/router/OsmNodeNamed;Z)V

    .line 720
    :cond_0
    new-instance v0, Lbtools/mapaccess/OsmLink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Lbtools/mapaccess/OsmLink;-><init>(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;)V

    .line 721
    .local v0, "startLink":Lbtools/mapaccess/OsmLink;
    iget-object v3, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v3, v0}, Lbtools/router/RoutingContext;->createPath(Lbtools/mapaccess/OsmLink;)Lbtools/router/OsmPath;

    move-result-object v1

    .line 722
    .local v1, "startPath":Lbtools/router/OsmPath;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lbtools/mapaccess/OsmLink;->addLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V

    .line 724
    if-eqz p3, :cond_1

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    iput-wide v4, p3, Lbtools/router/OsmNodeNamed;->radius:D

    .line 726
    :cond_1
    iget-object v3, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v4, 0x0

    iget-object v5, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {v3, v1, p2, v4, v2}, Lbtools/router/RoutingContext;->createPath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmPath;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 730
    if-eqz p3, :cond_2

    iget-object v3, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v3}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    .line 726
    :cond_2
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 730
    .end local v0    # "startLink":Lbtools/mapaccess/OsmLink;
    .end local v1    # "startPath":Lbtools/router/OsmPath;
    :catchall_0
    move-exception v2

    if-eqz p3, :cond_4

    iget-object v3, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v3}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    :cond_4
    throw v2
.end method

.method private getStartNode(J)Lbtools/mapaccess/OsmNode;
    .locals 3
    .param p1, "startId"    # J

    .prologue
    .line 616
    new-instance v0, Lbtools/mapaccess/OsmNode;

    invoke-direct {v0, p1, p2}, Lbtools/mapaccess/OsmNode;-><init>(J)V

    .line 617
    .local v0, "start":Lbtools/mapaccess/OsmNode;
    invoke-virtual {v0}, Lbtools/mapaccess/OsmNode;->setHollow()V

    .line 618
    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v1, v0}, Lbtools/mapaccess/NodesCache;->obtainNonHollowNode(Lbtools/mapaccess/OsmNode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 623
    .end local v0    # "start":Lbtools/mapaccess/OsmNode;
    :goto_0
    return-object v0

    .line 622
    .restart local v0    # "start":Lbtools/mapaccess/OsmNode;
    :cond_0
    invoke-direct {p0, v0}, Lbtools/router/RoutingEngine;->expandHollowLinkTargets(Lbtools/mapaccess/OsmNode;)V

    goto :goto_0
.end method

.method private getStartPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmNodeNamed;Z)Lbtools/router/OsmPath;
    .locals 8
    .param p1, "n1"    # Lbtools/mapaccess/OsmNode;
    .param p2, "n2"    # Lbtools/mapaccess/OsmNode;
    .param p3, "mwp"    # Lbtools/router/MatchedWaypoint;
    .param p4, "endPos"    # Lbtools/router/OsmNodeNamed;
    .param p5, "sameSegmentSearch"    # Z

    .prologue
    .line 628
    iget-object v6, p3, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    invoke-direct {p0, p1, p2, v6, p4}, Lbtools/router/RoutingEngine;->getStartPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Lbtools/router/OsmNodeNamed;Lbtools/mapaccess/OsmNode;)Lbtools/router/OsmPath;

    move-result-object v2

    .line 631
    .local v2, "p":Lbtools/router/OsmPath;
    if-eqz p5, :cond_4

    .line 633
    invoke-virtual {v2}, Lbtools/router/OsmPath;->getLink()Lbtools/mapaccess/OsmLink;

    move-result-object v6

    invoke-direct {p0, p1, v6, p4}, Lbtools/router/RoutingEngine;->getEndPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmNodeNamed;)Lbtools/router/OsmPath;

    move-result-object v3

    .line 634
    .local v3, "pe":Lbtools/router/OsmPath;
    invoke-virtual {v2}, Lbtools/router/OsmPath;->getLink()Lbtools/mapaccess/OsmLink;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lbtools/router/RoutingEngine;->getEndPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmNodeNamed;)Lbtools/router/OsmPath;

    move-result-object v4

    .line 635
    .local v4, "pt":Lbtools/router/OsmPath;
    iget v6, v4, Lbtools/router/OsmPath;->cost:I

    iget v7, v2, Lbtools/router/OsmPath;->cost:I

    sub-int v0, v6, v7

    .line 636
    .local v0, "costdelta":I
    iget v6, v3, Lbtools/router/OsmPath;->cost:I

    if-lt v6, v0, :cond_4

    .line 638
    iget v6, v3, Lbtools/router/OsmPath;->cost:I

    sub-int/2addr v6, v0

    iput v6, v3, Lbtools/router/OsmPath;->cost:I

    .line 640
    iget-object v6, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v6, :cond_2

    .line 643
    iget-object v5, v2, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 644
    .local v5, "startElement":Lbtools/router/OsmPathElement;
    :goto_0
    iget-object v6, v5, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    if-eqz v6, :cond_0

    .line 646
    iget-object v5, v5, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    goto :goto_0

    .line 648
    :cond_0
    iget-object v6, v3, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    iget v6, v6, Lbtools/router/OsmPathElement;->cost:I

    if-le v6, v0, :cond_3

    .line 650
    iget-object v1, v3, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    .line 651
    .local v1, "e":Lbtools/router/OsmPathElement;
    :goto_1
    iget-object v6, v1, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    iget v6, v6, Lbtools/router/OsmPathElement;->cost:I

    if-le v6, v0, :cond_1

    .line 653
    iget-object v1, v1, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 654
    iget v6, v1, Lbtools/router/OsmPathElement;->cost:I

    sub-int/2addr v6, v0

    iput v6, v1, Lbtools/router/OsmPathElement;->cost:I

    goto :goto_1

    .line 656
    :cond_1
    iput-object v5, v1, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 663
    .end local v1    # "e":Lbtools/router/OsmPathElement;
    .end local v5    # "startElement":Lbtools/router/OsmPathElement;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    iput v6, v3, Lbtools/router/OsmPath;->treedepth:I

    .line 667
    .end local v0    # "costdelta":I
    .end local v3    # "pe":Lbtools/router/OsmPath;
    .end local v4    # "pt":Lbtools/router/OsmPath;
    :goto_3
    return-object v3

    .line 660
    .restart local v0    # "costdelta":I
    .restart local v3    # "pe":Lbtools/router/OsmPath;
    .restart local v4    # "pt":Lbtools/router/OsmPath;
    .restart local v5    # "startElement":Lbtools/router/OsmPathElement;
    :cond_3
    iput-object v5, v3, Lbtools/router/OsmPath;->originElement:Lbtools/router/OsmPathElement;

    goto :goto_2

    .end local v0    # "costdelta":I
    .end local v3    # "pe":Lbtools/router/OsmPath;
    .end local v4    # "pt":Lbtools/router/OsmPath;
    .end local v5    # "startElement":Lbtools/router/OsmPathElement;
    :cond_4
    move-object v3, v2

    .line 667
    goto :goto_3
.end method

.method private getStartPath(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Lbtools/router/OsmNodeNamed;Lbtools/mapaccess/OsmNode;)Lbtools/router/OsmPath;
    .locals 14
    .param p1, "n1"    # Lbtools/mapaccess/OsmNode;
    .param p2, "n2"    # Lbtools/mapaccess/OsmNode;
    .param p3, "wp"    # Lbtools/router/OsmNodeNamed;
    .param p4, "endPos"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 676
    :try_start_0
    iget-object v11, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lbtools/router/RoutingContext;->setWaypoint(Lbtools/router/OsmNodeNamed;Z)V

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "bestPath":Lbtools/router/OsmPath;
    const/4 v2, 0x0

    .line 679
    .local v2, "bestLink":Lbtools/mapaccess/OsmLink;
    new-instance v8, Lbtools/mapaccess/OsmLink;

    const/4 v11, 0x0

    invoke-direct {v8, v11, p1}, Lbtools/mapaccess/OsmLink;-><init>(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;)V

    .line 680
    .local v8, "startLink":Lbtools/mapaccess/OsmLink;
    iget-object v11, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v11, v8}, Lbtools/router/RoutingContext;->createPath(Lbtools/mapaccess/OsmLink;)Lbtools/router/OsmPath;

    move-result-object v9

    .line 681
    .local v9, "startPath":Lbtools/router/OsmPath;
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Lbtools/mapaccess/OsmLink;->addLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V

    .line 682
    const-wide v6, 0x4202a05f20000000L    # 1.0E10

    .line 683
    .local v6, "minradius":D
    iget-object v4, p1, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    .local v4, "link":Lbtools/mapaccess/OsmLink;
    :goto_0
    if-eqz v4, :cond_4

    .line 685
    invoke-virtual {v4, p1}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v5

    .line 686
    .local v5, "nextNode":Lbtools/mapaccess/OsmNode;
    invoke-virtual {v5}, Lbtools/mapaccess/OsmNode;->isHollow()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 683
    :cond_0
    :goto_1
    invoke-virtual {v4, p1}, Lbtools/mapaccess/OsmLink;->getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;

    move-result-object v4

    goto :goto_0

    .line 687
    :cond_1
    iget-object v11, v5, Lbtools/mapaccess/OsmNode;->firstlink:Lbtools/mapaccess/OsmLink;

    if-eqz v11, :cond_0

    .line 688
    if-eq v5, p1, :cond_0

    .line 689
    move-object/from16 v0, p2

    if-ne v5, v0, :cond_0

    .line 691
    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    move-object/from16 v0, p3

    iput-wide v12, v0, Lbtools/router/OsmNodeNamed;->radius:D

    .line 692
    iget-object v12, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v13, 0x0

    iget-object v11, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v9, v4, v13, v11}, Lbtools/router/RoutingContext;->createPath(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmPath;

    move-result-object v10

    .line 693
    .local v10, "testPath":Lbtools/router/OsmPath;
    if-nez p4, :cond_3

    const/4 v11, 0x0

    :goto_3
    iput v11, v10, Lbtools/router/OsmPath;->airdistance:I

    .line 694
    move-object/from16 v0, p3

    iget-wide v12, v0, Lbtools/router/OsmNodeNamed;->radius:D

    cmpg-double v11, v12, v6

    if-gez v11, :cond_0

    .line 696
    move-object v3, v10

    .line 697
    move-object/from16 v0, p3

    iget-wide v6, v0, Lbtools/router/OsmNodeNamed;->radius:D

    .line 698
    move-object v2, v4

    goto :goto_1

    .line 692
    .end local v10    # "testPath":Lbtools/router/OsmPath;
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 693
    .restart local v10    # "testPath":Lbtools/router/OsmPath;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v11

    goto :goto_3

    .line 701
    .end local v5    # "nextNode":Lbtools/mapaccess/OsmNode;
    .end local v10    # "testPath":Lbtools/router/OsmPath;
    :cond_4
    if-eqz v2, :cond_5

    .line 703
    invoke-virtual {v2, v3, p1}, Lbtools/mapaccess/OsmLink;->addLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V

    .line 705
    :cond_5
    const/4 v11, 0x1

    iput v11, v3, Lbtools/router/OsmPath;->treedepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    iget-object v11, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v11}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    .line 707
    return-object v3

    .line 711
    .end local v2    # "bestLink":Lbtools/mapaccess/OsmLink;
    .end local v3    # "bestPath":Lbtools/router/OsmPath;
    .end local v4    # "link":Lbtools/mapaccess/OsmLink;
    .end local v6    # "minradius":D
    .end local v8    # "startLink":Lbtools/mapaccess/OsmLink;
    .end local v9    # "startPath":Lbtools/router/OsmPath;
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v12}, Lbtools/router/RoutingContext;->unsetWaypoint()V

    throw v11
.end method

.method private hasInfo()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lbtools/router/RoutingEngine;->infoLogEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 273
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbtools/router/RoutingEngine;->errorMessage:Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error (linksProcessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/RoutingEngine;->linksProcessed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " open paths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v1}, Lbtools/util/SortedHeap;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtools/router/RoutingEngine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 275
    return-void

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private logInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-boolean v1, p0, Lbtools/router/RoutingEngine;->infoLogEnabled:Z

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 122
    :try_start_0
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 124
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "io":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    goto :goto_0
.end method

.method private logThrowable(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 136
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private matchWaypointsToNodes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbtools/router/MatchedWaypoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "unmatchedWaypoints":Ljava/util/List;, "Ljava/util/List<Lbtools/router/MatchedWaypoint;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbtools/router/RoutingEngine;->resetCache(Z)V

    .line 438
    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    new-instance v2, Lbtools/router/WaypointMatcherImpl;

    const-wide v4, 0x406f400000000000L    # 250.0

    invoke-direct {v2, p1, v4, v5}, Lbtools/router/WaypointMatcherImpl;-><init>(Ljava/util/List;D)V

    iput-object v2, v1, Lbtools/mapaccess/NodesCache;->waypointMatcher:Lbtools/codec/WaypointMatcher;

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MatchedWaypoint;

    .line 441
    .local v0, "mwp":Lbtools/router/MatchedWaypoint;
    iget-object v2, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    invoke-direct {p0, v2}, Lbtools/router/RoutingEngine;->preloadPosition(Lbtools/mapaccess/OsmNode;)V

    goto :goto_0

    .line 444
    .end local v0    # "mwp":Lbtools/router/MatchedWaypoint;
    :cond_0
    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget-boolean v1, v1, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    if-eqz v1, :cond_1

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "datafile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget-object v3, v3, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/MatchedWaypoint;

    .line 450
    .restart local v0    # "mwp":Lbtools/router/MatchedWaypoint;
    iget-object v2, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    if-nez v2, :cond_2

    .line 452
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    iget-object v3, v3, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-position not mapped in existing datafile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    .end local v0    # "mwp":Lbtools/router/MatchedWaypoint;
    :cond_3
    return-void
.end method

.method private mergeTrack(Lbtools/router/OsmPathElement;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;
    .locals 16
    .param p1, "match"    # Lbtools/router/OsmPathElement;
    .param p2, "oldTrack"    # Lbtools/router/OsmTrack;

    .prologue
    .line 1194
    move-object/from16 v3, p1

    .line 1195
    .local v3, "element":Lbtools/router/OsmPathElement;
    new-instance v13, Lbtools/router/OsmTrack;

    invoke-direct {v13}, Lbtools/router/OsmTrack;-><init>()V

    .line 1197
    .local v13, "track":Lbtools/router/OsmTrack;
    :goto_0
    if-eqz v3, :cond_0

    .line 1199
    invoke-virtual {v13, v3}, Lbtools/router/OsmTrack;->addNode(Lbtools/router/OsmPathElement;)V

    .line 1200
    iget-object v3, v3, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    goto :goto_0

    .line 1202
    :cond_0
    const-wide/16 v10, 0x0

    .line 1203
    .local v10, "lastId":J
    invoke-virtual/range {p1 .. p1}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v8

    .line 1204
    .local v8, "id1":J
    move-object/from16 v0, p1

    iget-object v14, v0, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    if-nez v14, :cond_3

    const-wide/16 v6, 0x0

    .line 1205
    .local v6, "id0":J
    :goto_1
    const/4 v2, 0x0

    .line 1206
    .local v2, "appending":Z
    move-object/from16 v0, p2

    iget-object v14, v0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbtools/router/OsmPathElement;

    .line 1208
    .local v12, "n":Lbtools/router/OsmPathElement;
    if-eqz v2, :cond_1

    .line 1210
    iget-object v15, v13, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_1
    invoke-virtual {v12}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v4

    .line 1214
    .local v4, "id":J
    cmp-long v15, v4, v8

    if-nez v15, :cond_2

    cmp-long v15, v10, v6

    if-nez v15, :cond_2

    .line 1216
    const/4 v2, 0x1

    .line 1218
    :cond_2
    move-wide v10, v4

    .line 1219
    goto :goto_2

    .line 1204
    .end local v2    # "appending":Z
    .end local v4    # "id":J
    .end local v6    # "id0":J
    .end local v12    # "n":Lbtools/router/OsmPathElement;
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v14}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v6

    goto :goto_1

    .line 1222
    .restart local v2    # "appending":Z
    .restart local v6    # "id0":J
    :cond_4
    invoke-virtual {v13}, Lbtools/router/OsmTrack;->buildMap()V

    .line 1223
    return-object v13
.end method

.method private preloadPosition(Lbtools/mapaccess/OsmNode;)V
    .locals 8
    .param p1, "n"    # Lbtools/mapaccess/OsmNode;

    .prologue
    const/4 v7, 0x1

    .line 459
    const/16 v0, 0x30d4

    .line 460
    .local v0, "d":I
    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    .line 461
    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    const/4 v4, 0x0

    iput-object v4, v3, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    .line 462
    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget v4, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v5, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-virtual {v3, v4, v5}, Lbtools/mapaccess/NodesCache;->loadSegmentFor(II)I

    .line 463
    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget-boolean v3, v3, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    if-eqz v3, :cond_0

    .line 465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "datafile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget-object v5, v5, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    :cond_0
    const/4 v1, -0x1

    .local v1, "idxLat":I
    :goto_0
    if-gt v1, v7, :cond_2

    .line 468
    const/4 v2, -0x1

    .local v2, "idxLon":I
    :goto_1
    if-gt v2, v7, :cond_1

    .line 470
    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    iget v4, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    mul-int v5, v0, v2

    add-int/2addr v4, v5

    iget v5, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    mul-int v6, v0, v1

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lbtools/mapaccess/NodesCache;->loadSegmentFor(II)I

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "idxLon":I
    :cond_2
    return-void
.end method

.method private resetCache(Z)V
    .locals 10
    .param p1, "detailed"    # Z

    .prologue
    .line 602
    invoke-direct {p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodesCache status before reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v1}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 606
    :cond_0
    new-instance v0, Lbtools/mapaccess/OsmNodesMap;

    invoke-direct {v0}, Lbtools/mapaccess/OsmNodesMap;-><init>()V

    iput-object v0, p0, Lbtools/router/RoutingEngine;->nodesMap:Lbtools/mapaccess/OsmNodesMap;

    .line 608
    iget-object v0, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget v0, v0, Lbtools/router/RoutingContext;->memoryclass:I

    int-to-long v0, v0

    const-wide/32 v2, 0x20000

    mul-long v6, v0, v2

    .line 610
    .local v6, "maxmem":J
    new-instance v1, Lbtools/mapaccess/NodesCache;

    iget-object v2, p0, Lbtools/router/RoutingEngine;->segmentDir:Ljava/lang/String;

    iget-object v3, p0, Lbtools/router/RoutingEngine;->nodesMap:Lbtools/mapaccess/OsmNodesMap;

    iget-object v0, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-object v4, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    iget-object v0, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-boolean v5, v0, Lbtools/router/RoutingContext;->forceSecondaryData:Z

    iget-object v8, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move v9, p1

    invoke-direct/range {v1 .. v9}, Lbtools/mapaccess/NodesCache;-><init>(Ljava/lang/String;Lbtools/mapaccess/OsmNodesMap;Lbtools/expressions/BExpressionContextWay;ZJLbtools/mapaccess/NodesCache;Z)V

    iput-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 611
    return-void
.end method

.method private searchTrack(Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;
    .locals 23
    .param p1, "startWp"    # Lbtools/router/MatchedWaypoint;
    .param p2, "endWp"    # Lbtools/router/MatchedWaypoint;
    .param p3, "nearbyTrack"    # Lbtools/router/OsmTrack;
    .param p4, "refTrack"    # Lbtools/router/OsmTrack;

    .prologue
    .line 487
    const/16 v20, 0x0

    .line 488
    .local v20, "track":Lbtools/router/OsmTrack;
    const/4 v2, 0x2

    new-array v14, v2, [D

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-wide v4, v3, Lbtools/router/RoutingContext;->pass1coefficient:D

    aput-wide v4, v14, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-wide v4, v3, Lbtools/router/RoutingContext;->pass2coefficient:D

    aput-wide v4, v14, v2

    .line 489
    .local v14, "airDistanceCostFactors":[D
    const/16 v18, 0x0

    .line 490
    .local v18, "isDirty":Z
    const/16 v16, 0x0

    .line 492
    .local v16, "dirtyMessage":Ljava/lang/IllegalArgumentException;
    if-eqz p3, :cond_f

    .line 494
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    .line 497
    :try_start_0
    const-string v3, "re-routing"

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 519
    .end local v20    # "track":Lbtools/router/OsmTrack;
    .local v6, "track":Lbtools/router/OsmTrack;
    :cond_0
    :goto_0
    if-nez v6, :cond_7

    .line 521
    const/4 v15, 0x0

    .local v15, "cfi":I
    :goto_1
    array-length v2, v14

    if-ge v15, v2, :cond_7

    .line 523
    aget-wide v2, v14, v15

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    .line 525
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 521
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 499
    .end local v6    # "track":Lbtools/router/OsmTrack;
    .end local v15    # "cfi":I
    .restart local v20    # "track":Lbtools/router/OsmTrack;
    :catch_0
    move-exception v17

    .line 501
    .local v17, "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbtools/router/RoutingEngine;->terminated:Z

    if-eqz v2, :cond_1

    throw v17

    .line 505
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    if-eqz v2, :cond_e

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lbtools/router/RoutingEngine;->mergeTrack(Lbtools/router/OsmPathElement;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v6

    .line 508
    .end local v20    # "track":Lbtools/router/OsmTrack;
    .restart local v6    # "track":Lbtools/router/OsmTrack;
    const/16 v18, 0x1

    .line 509
    move-object/from16 v16, v17

    .line 510
    const-string v2, "using fast partial recalc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 512
    :goto_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 514
    move-object/from16 v0, p0

    iget-wide v2, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lbtools/router/RoutingEngine;->startTime:J

    sub-long/2addr v4, v8

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/router/RoutingEngine;->maxRunningTime:J

    goto :goto_0

    .line 533
    .end local v17    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "cfi":I
    :cond_2
    if-nez v15, :cond_4

    :try_start_1
    const-string v3, "pass0"

    :goto_4
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 549
    .local v19, "t":Lbtools/router/OsmTrack;
    if-nez v19, :cond_3

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    if-eqz v2, :cond_3

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lbtools/router/RoutingEngine;->mergeTrack(Lbtools/router/OsmPathElement;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v19

    .line 553
    const-string v2, "using sloppy merge cause pass1 didn\'t reach destination"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 555
    :cond_3
    if-eqz v19, :cond_6

    .line 557
    move-object/from16 v6, v19

    goto :goto_2

    .line 533
    .end local v19    # "t":Lbtools/router/OsmTrack;
    :cond_4
    :try_start_2
    const-string v3, "pass1"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 535
    :catch_1
    move-exception v17

    .line 537
    .restart local v17    # "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbtools/router/RoutingEngine;->terminated:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    if-eqz v2, :cond_5

    .line 539
    const-string v2, "supplying dirty reference track after timeout"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->matchPath:Lbtools/router/OsmPathElement;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lbtools/router/RoutingEngine;->mergeTrack(Lbtools/router/OsmPathElement;Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    move-object/from16 v0, p2

    iput-object v0, v2, Lbtools/router/OsmTrack;->endPoint:Lbtools/router/MatchedWaypoint;

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v3}, Lbtools/router/RoutingContext;->getNogoChecksums()[J

    move-result-object v3

    iput-object v3, v2, Lbtools/router/OsmTrack;->nogoChecksums:[J

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-wide v4, v3, Lbtools/router/RoutingContext;->profileTimestamp:J

    iput-wide v4, v2, Lbtools/router/OsmTrack;->profileTimestamp:J

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lbtools/router/OsmTrack;->isDirty:Z

    .line 546
    :cond_5
    throw v17

    .line 561
    .end local v17    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "t":Lbtools/router/OsmTrack;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no track found at pass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    .end local v15    # "cfi":I
    .end local v19    # "t":Lbtools/router/OsmTrack;
    :cond_7
    if-nez v6, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no track found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_8
    if-eqz p3, :cond_b

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lbtools/router/OsmTrack;->isDirty:Z

    if-nez v2, :cond_b

    const/16 v22, 0x1

    .line 568
    .local v22, "wasClean":Z
    :goto_5
    if-nez p4, :cond_a

    if-eqz v22, :cond_9

    if-nez v18, :cond_a

    .line 570
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplying new reference track, dirty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p2

    iput-object v0, v6, Lbtools/router/OsmTrack;->endPoint:Lbtools/router/MatchedWaypoint;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    invoke-virtual {v2}, Lbtools/router/RoutingContext;->getNogoChecksums()[J

    move-result-object v2

    iput-object v2, v6, Lbtools/router/OsmTrack;->nogoChecksums:[J

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    iget-wide v2, v2, Lbtools/router/RoutingContext;->profileTimestamp:J

    iput-wide v2, v6, Lbtools/router/OsmTrack;->profileTimestamp:J

    .line 574
    move/from16 v0, v18

    iput-boolean v0, v6, Lbtools/router/OsmTrack;->isDirty:Z

    .line 575
    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    .line 578
    :cond_a
    if-nez v22, :cond_c

    if-eqz v18, :cond_c

    .line 580
    throw v16

    .line 567
    .end local v22    # "wasClean":Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_5

    .line 584
    .restart local v22    # "wasClean":Z
    :cond_c
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/router/RoutingEngine;->airDistanceCostFactor:D

    .line 585
    move-object/from16 v0, p0

    iput-object v6, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbtools/router/RoutingEngine;->startTime:J

    .line 589
    :try_start_3
    const-string v8, "re-tracking"

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;

    move-result-object v21

    .line 590
    .local v21, "tt":Lbtools/router/OsmTrack;
    if-nez v21, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "error re-tracking track"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    .end local v21    # "tt":Lbtools/router/OsmTrack;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    throw v2

    .restart local v21    # "tt":Lbtools/router/OsmTrack;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    .line 591
    return-object v21

    .end local v6    # "track":Lbtools/router/OsmTrack;
    .end local v21    # "tt":Lbtools/router/OsmTrack;
    .end local v22    # "wasClean":Z
    .restart local v17    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "track":Lbtools/router/OsmTrack;
    :cond_e
    move-object/from16 v6, v20

    .end local v20    # "track":Lbtools/router/OsmTrack;
    .restart local v6    # "track":Lbtools/router/OsmTrack;
    goto/16 :goto_3

    .end local v6    # "track":Lbtools/router/OsmTrack;
    .end local v17    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "track":Lbtools/router/OsmTrack;
    :cond_f
    move-object/from16 v6, v20

    .end local v20    # "track":Lbtools/router/OsmTrack;
    .restart local v6    # "track":Lbtools/router/OsmTrack;
    goto/16 :goto_0
.end method


# virtual methods
.method public cleanOnOOM()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/router/RoutingEngine;->nodesMap:Lbtools/mapaccess/OsmNodesMap;

    .line 328
    invoke-virtual {p0}, Lbtools/router/RoutingEngine;->terminate()V

    .line 329
    return-void
.end method

.method public doRun(J)V
    .locals 25
    .param p1, "maxRunningTime"    # J

    .prologue
    .line 151
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lbtools/router/RoutingContext;->cleanNogolist(Ljava/util/List;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingEngine;->startTime:J

    .line 154
    move-object/from16 v0, p0

    iget-wide v0, v0, Lbtools/router/RoutingEngine;->startTime:J

    move-wide/from16 v16, v0

    .line 155
    .local v16, "startTime0":J
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lbtools/router/RoutingEngine;->maxRunningTime:J

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    .line 157
    .local v12, "nsections":I
    new-array v14, v12, [Lbtools/router/OsmTrack;

    .line 158
    .local v14, "refTracks":[Lbtools/router/OsmTrack;
    new-array v9, v12, [Lbtools/router/OsmTrack;

    .line 159
    .local v9, "lastTracks":[Lbtools/router/OsmTrack;
    const/4 v15, 0x0

    .line 160
    .local v15, "track":Lbtools/router/OsmTrack;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v11, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 163
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lbtools/router/RoutingEngine;->findTrack([Lbtools/router/OsmTrack;[Lbtools/router/OsmTrack;)Lbtools/router/OsmTrack;

    move-result-object v15

    .line 164
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "track-length = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lbtools/router/OsmTrack;->distance:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " filtered ascend = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lbtools/router/OsmTrack;->ascend:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " plain-ascend = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lbtools/router/OsmTrack;->plainAscend:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cost="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Lbtools/router/OsmTrack;->cost:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lbtools/router/OsmTrack;->message:Ljava/lang/String;

    .line 166
    iget v0, v15, Lbtools/router/OsmTrack;->energy:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 168
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Lbtools/router/OsmTrack;->message:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " energy="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lbtools/router/OsmTrack;->getFormattedEnergy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lbtools/router/OsmTrack;->getFormattedTime()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lbtools/router/OsmTrack;->message:Ljava/lang/String;

    .line 170
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "brouter_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/router/RoutingContext;->getProfileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lbtools/router/OsmTrack;->name:Ljava/lang/String;

    .line 172
    iget-object v0, v15, Lbtools/router/OsmTrack;->message:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iput-object v11, v15, Lbtools/router/OsmTrack;->messageList:Ljava/util/ArrayList;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->outfileBase:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 176
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->outfileBase:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".gpx"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "filename":Ljava/lang/String;
    new-instance v13, Lbtools/router/OsmTrack;

    invoke-direct {v13}, Lbtools/router/OsmTrack;-><init>()V

    .line 178
    .local v13, "oldTrack":Lbtools/router/OsmTrack;
    invoke-virtual {v13, v5}, Lbtools/router/OsmTrack;->readGpx(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v15, v13}, Lbtools/router/OsmTrack;->equalsTrack(Lbtools/router/OsmTrack;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 161
    .end local v5    # "filename":Ljava/lang/String;
    .end local v13    # "oldTrack":Lbtools/router/OsmTrack;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 183
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v13    # "oldTrack":Lbtools/router/OsmTrack;
    :cond_2
    const/4 v13, 0x0

    .line 184
    invoke-virtual {v15, v5}, Lbtools/router/OsmTrack;->writeGpx(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iput-object v15, v0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    .line 186
    move-object/from16 v0, p0

    iput v8, v0, Lbtools/router/RoutingEngine;->alternativeIndex:I

    .line 210
    .end local v5    # "filename":Ljava/lang/String;
    .end local v13    # "oldTrack":Lbtools/router/OsmTrack;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->logfileBase:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 212
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->logfileBase:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".csv"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, "logfilename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v10, v0}, Lbtools/router/OsmTrack;->dumpMessages(Ljava/lang/String;Lbtools/router/RoutingContext;)V

    .line 217
    .end local v10    # "logfilename":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 218
    .local v6, "endTime":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "execution time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v6, v16

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " seconds"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expression cache stats="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/expressions/BExpressionContextWay;->cacheStats()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 242
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbtools/router/ProfileCache;->releaseProfile(Lbtools/router/RoutingContext;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 246
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NodesCache status before close="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/mapaccess/NodesCache;->close()V

    .line 251
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/SortedHeap;->clear()V

    .line 254
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingEngine;->finished:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 258
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 259
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 264
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/StackSampler;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 265
    :goto_3
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    .line 269
    .end local v6    # "endTime":J
    .end local v8    # "i":I
    .end local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .end local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "nsections":I
    .end local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .end local v15    # "track":Lbtools/router/OsmTrack;
    .end local v16    # "startTime0":J
    :cond_8
    :goto_4
    return-void

    .line 190
    .restart local v8    # "i":I
    .restart local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .restart local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "nsections":I
    .restart local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .restart local v15    # "track":Lbtools/router/OsmTrack;
    .restart local v16    # "startTime0":J
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v20}, Lbtools/router/RoutingContext;->getAlternativeIdx(II)I

    move-result v18

    move/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 192
    const-string v18, "CSV"

    const-string v19, "reportFormat"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 194
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lbtools/router/OsmTrack;->dumpMessages(Ljava/lang/String;Lbtools/router/RoutingContext;)V

    .line 203
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 220
    .end local v8    # "i":I
    .end local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .end local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "nsections":I
    .end local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .end local v15    # "track":Lbtools/router/OsmTrack;
    .end local v16    # "startTime0":J
    :catch_0
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expression cache stats="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/expressions/BExpressionContextWay;->cacheStats()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 242
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbtools/router/ProfileCache;->releaseProfile(Lbtools/router/RoutingContext;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 246
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NodesCache status before close="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 250
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/mapaccess/NodesCache;->close()V

    .line 251
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 253
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/SortedHeap;->clear()V

    .line 254
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingEngine;->finished:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 258
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 259
    :goto_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 262
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 264
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/StackSampler;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 265
    :goto_7
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    goto/16 :goto_4

    .line 198
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "i":I
    .restart local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .restart local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "nsections":I
    .restart local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .restart local v15    # "track":Lbtools/router/OsmTrack;
    .restart local v16    # "startTime0":J
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbtools/router/RoutingEngine;->quite:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 200
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15}, Lbtools/router/OsmTrack;->formatAsGpx()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 224
    .end local v8    # "i":I
    .end local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .end local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "nsections":I
    .end local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .end local v15    # "track":Lbtools/router/OsmTrack;
    .end local v16    # "startTime0":J
    :catch_1
    move-exception v4

    .line 226
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V

    .line 227
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logThrowable(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 237
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expression cache stats="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/expressions/BExpressionContextWay;->cacheStats()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 242
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbtools/router/ProfileCache;->releaseProfile(Lbtools/router/RoutingContext;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 246
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NodesCache status before close="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 250
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/mapaccess/NodesCache;->close()V

    .line 251
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 253
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/SortedHeap;->clear()V

    .line 254
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingEngine;->finished:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 258
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 259
    :goto_8
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 262
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 264
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/StackSampler;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 265
    :goto_9
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    goto/16 :goto_4

    .line 229
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 231
    .local v4, "e":Ljava/lang/Error;
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lbtools/router/RoutingEngine;->cleanOnOOM()V

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbtools/router/RoutingEngine;->logThrowable(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 237
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expression cache stats="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/expressions/BExpressionContextWay;->cacheStats()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 242
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lbtools/router/ProfileCache;->releaseProfile(Lbtools/router/RoutingContext;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 246
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NodesCache status before close="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 250
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/mapaccess/NodesCache;->close()V

    .line 251
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 253
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/SortedHeap;->clear()V

    .line 254
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingEngine;->finished:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    .line 258
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 259
    :goto_a
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 262
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 264
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbtools/util/StackSampler;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 265
    :goto_b
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    goto/16 :goto_4

    .line 237
    .end local v4    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v18

    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 239
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "expression cache stats="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbtools/expressions/BExpressionContextWay;->cacheStats()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 242
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lbtools/router/ProfileCache;->releaseProfile(Lbtools/router/RoutingContext;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 246
    invoke-direct/range {p0 .. p0}, Lbtools/router/RoutingEngine;->hasInfo()Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 248
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NodesCache status before close="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbtools/mapaccess/NodesCache;->formatStatus()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lbtools/router/RoutingEngine;->logInfo(Ljava/lang/String;)V

    .line 250
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/mapaccess/NodesCache;->close()V

    .line 251
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 253
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/util/SortedHeap;->clear()V

    .line 254
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbtools/router/RoutingEngine;->finished:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 258
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 259
    :goto_c
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 262
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 264
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbtools/util/StackSampler;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 265
    :goto_d
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lbtools/router/RoutingEngine;->stackSampler:Lbtools/util/StackSampler;

    :cond_1c
    throw v18

    .line 264
    :catch_3
    move-exception v19

    goto :goto_d

    .line 258
    :catch_4
    move-exception v19

    goto :goto_c

    .line 264
    .restart local v4    # "e":Ljava/lang/Error;
    :catch_5
    move-exception v18

    goto/16 :goto_b

    .line 258
    :catch_6
    move-exception v18

    goto/16 :goto_a

    .line 264
    .local v4, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v18

    goto/16 :goto_9

    .line 258
    :catch_8
    move-exception v18

    goto/16 :goto_8

    .line 264
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v18

    goto/16 :goto_7

    .line 258
    :catch_a
    move-exception v18

    goto/16 :goto_6

    .line 264
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "endTime":J
    .restart local v8    # "i":I
    .restart local v9    # "lastTracks":[Lbtools/router/OsmTrack;
    .restart local v11    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "nsections":I
    .restart local v14    # "refTracks":[Lbtools/router/OsmTrack;
    .restart local v15    # "track":Lbtools/router/OsmTrack;
    .restart local v16    # "startTime0":J
    :catch_b
    move-exception v18

    goto/16 :goto_3

    .line 258
    :catch_c
    move-exception v18

    goto/16 :goto_2
.end method

.method public doSearch()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 282
    :try_start_0
    new-instance v2, Lbtools/router/MatchedWaypoint;

    invoke-direct {v2}, Lbtools/router/MatchedWaypoint;-><init>()V

    .line 283
    .local v2, "seedPoint":Lbtools/router/MatchedWaypoint;
    iget-object v0, p0, Lbtools/router/RoutingEngine;->waypoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmNodeNamed;

    iput-object v0, v2, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    .line 284
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v8, "listOne":Ljava/util/List;, "Ljava/util/List<Lbtools/router/MatchedWaypoint;>;"
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-direct {p0, v8}, Lbtools/router/RoutingEngine;->matchWaypointsToNodes(Ljava/util/List;)V

    .line 288
    iget-object v0, p0, Lbtools/router/RoutingEngine;->routingContext:Lbtools/router/RoutingContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbtools/router/RoutingContext;->countTraffic:Z

    .line 290
    const-string v1, "seededSearch"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbtools/router/RoutingEngine;->findTrack(Ljava/lang/String;Lbtools/router/MatchedWaypoint;Lbtools/router/MatchedWaypoint;Lbtools/router/OsmTrack;Lbtools/router/OsmTrack;Z)Lbtools/router/OsmTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v0}, Lbtools/mapaccess/NodesCache;->close()V

    .line 312
    iput-object v9, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 314
    :cond_0
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v0}, Lbtools/util/SortedHeap;->clear()V

    .line 315
    iput-boolean v10, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 317
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 319
    :try_start_1
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 320
    :goto_0
    iput-object v9, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    .line 323
    .end local v2    # "seedPoint":Lbtools/router/MatchedWaypoint;
    .end local v8    # "listOne":Ljava/util/List;, "Ljava/util/List<Lbtools/router/MatchedWaypoint;>;"
    :cond_1
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v7

    .line 294
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-direct {p0, v7}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v0}, Lbtools/mapaccess/NodesCache;->close()V

    .line 312
    iput-object v9, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 314
    :cond_2
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v0}, Lbtools/util/SortedHeap;->clear()V

    .line 315
    iput-boolean v10, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 317
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 319
    :try_start_3
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 320
    :goto_2
    iput-object v9, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    goto :goto_1

    .line 296
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 298
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0, v7}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V

    .line 299
    invoke-direct {p0, v7}, Lbtools/router/RoutingEngine;->logThrowable(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v0}, Lbtools/mapaccess/NodesCache;->close()V

    .line 312
    iput-object v9, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 314
    :cond_3
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v0}, Lbtools/util/SortedHeap;->clear()V

    .line 315
    iput-boolean v10, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 317
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 319
    :try_start_5
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 320
    :goto_3
    iput-object v9, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    goto :goto_1

    .line 301
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 303
    .local v7, "e":Ljava/lang/Error;
    :try_start_6
    invoke-virtual {p0}, Lbtools/router/RoutingEngine;->cleanOnOOM()V

    .line 304
    invoke-direct {p0, v7}, Lbtools/router/RoutingEngine;->logException(Ljava/lang/Throwable;)V

    .line 305
    invoke-direct {p0, v7}, Lbtools/router/RoutingEngine;->logThrowable(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 309
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v0}, Lbtools/mapaccess/NodesCache;->close()V

    .line 312
    iput-object v9, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 314
    :cond_4
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v0}, Lbtools/util/SortedHeap;->clear()V

    .line 315
    iput-boolean v10, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 317
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 319
    :try_start_7
    iget-object v0, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 320
    :goto_4
    iput-object v9, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    goto :goto_1

    .line 309
    .end local v7    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    if-eqz v1, :cond_5

    .line 311
    iget-object v1, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    invoke-virtual {v1}, Lbtools/mapaccess/NodesCache;->close()V

    .line 312
    iput-object v9, p0, Lbtools/router/RoutingEngine;->nodesCache:Lbtools/mapaccess/NodesCache;

    .line 314
    :cond_5
    iget-object v1, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v1}, Lbtools/util/SortedHeap;->clear()V

    .line 315
    iput-boolean v10, p0, Lbtools/router/RoutingEngine;->finished:Z

    .line 317
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    if-eqz v1, :cond_6

    .line 319
    :try_start_8
    iget-object v1, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 320
    :goto_5
    iput-object v9, p0, Lbtools/router/RoutingEngine;->infoLogWriter:Ljava/io/Writer;

    :cond_6
    throw v0

    .line 319
    :catch_3
    move-exception v1

    goto :goto_5

    .restart local v7    # "e":Ljava/lang/Error;
    :catch_4
    move-exception v0

    goto :goto_4

    .local v7, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    goto :goto_3

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    goto :goto_2

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "seedPoint":Lbtools/router/MatchedWaypoint;
    .restart local v8    # "listOne":Ljava/util/List;, "Ljava/util/List<Lbtools/router/MatchedWaypoint;>;"
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public getAlternativeIndex()I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lbtools/router/RoutingEngine;->alternativeIndex:I

    return v0
.end method

.method public getAscend()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    iget v0, v0, Lbtools/router/OsmTrack;->ascend:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    iget v0, v0, Lbtools/router/OsmTrack;->distance:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lbtools/router/RoutingEngine;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFoundRawTrack()Lbtools/router/OsmTrack;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lbtools/router/RoutingEngine;->foundRawTrack:Lbtools/router/OsmTrack;

    return-object v0
.end method

.method public getFoundTrack()Lbtools/router/OsmTrack;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    return-object v0
.end method

.method public getLinksProcessed()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lbtools/router/RoutingEngine;->linksProcessed:I

    return v0
.end method

.method public getOpenSet()[I
    .locals 13

    .prologue
    .line 1236
    iget-object v10, p0, Lbtools/router/RoutingEngine;->extract:[Ljava/lang/Object;

    if-nez v10, :cond_0

    .line 1238
    const/16 v10, 0x1f4

    new-array v10, v10, [Ljava/lang/Object;

    iput-object v10, p0, Lbtools/router/RoutingEngine;->extract:[Ljava/lang/Object;

    .line 1241
    :cond_0
    iget-object v11, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    monitor-enter v11

    .line 1243
    :try_start_0
    iget-object v10, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    if-eqz v10, :cond_2

    .line 1245
    iget-object v10, p0, Lbtools/router/RoutingEngine;->guideTrack:Lbtools/router/OsmTrack;

    iget-object v5, v10, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    .line 1246
    .local v5, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/router/OsmPathElement;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    new-array v7, v10, [I

    .line 1247
    .local v7, "res":[I
    const/4 v0, 0x0

    .line 1248
    .local v0, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmPathElement;

    .line 1250
    .local v4, "n":Lbtools/router/OsmPathElement;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v12

    aput v12, v7, v1

    .line 1251
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v12

    aput v12, v7, v0

    goto :goto_0

    .line 1267
    .end local v1    # "i":I
    .end local v4    # "n":Lbtools/router/OsmPathElement;
    .end local v5    # "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/router/OsmPathElement;>;"
    .end local v7    # "res":[I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1253
    .restart local v1    # "i":I
    .restart local v5    # "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/router/OsmPathElement;>;"
    .restart local v7    # "res":[I
    :cond_1
    :try_start_1
    monitor-exit v11

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move-object v8, v7

    .line 1266
    .end local v5    # "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/router/OsmPathElement;>;"
    .end local v7    # "res":[I
    .local v8, "res":[I
    :goto_1
    return-object v8

    .line 1256
    .end local v0    # "i":I
    .end local v8    # "res":[I
    :cond_2
    iget-object v10, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    iget-object v12, p0, Lbtools/router/RoutingEngine;->extract:[Ljava/lang/Object;

    invoke-virtual {v10, v12}, Lbtools/util/SortedHeap;->getExtract([Ljava/lang/Object;)I

    move-result v9

    .line 1257
    .local v9, "size":I
    mul-int/lit8 v10, v9, 0x2

    new-array v7, v10, [I

    .line 1258
    .restart local v7    # "res":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_2
    if-ge v0, v9, :cond_3

    .line 1260
    iget-object v10, p0, Lbtools/router/RoutingEngine;->extract:[Ljava/lang/Object;

    aget-object v6, v10, v0

    check-cast v6, Lbtools/router/OsmPath;

    .line 1261
    .local v6, "p":Lbtools/router/OsmPath;
    iget-object v10, p0, Lbtools/router/RoutingEngine;->extract:[Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v12, v10, v0

    .line 1262
    invoke-virtual {v6}, Lbtools/router/OsmPath;->getTargetNode()Lbtools/mapaccess/OsmNode;

    move-result-object v4

    .line 1263
    .local v4, "n":Lbtools/mapaccess/OsmNode;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget v10, v4, Lbtools/mapaccess/OsmNode;->ilon:I

    aput v10, v7, v3

    .line 1264
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    iget v10, v4, Lbtools/mapaccess/OsmNode;->ilat:I

    aput v10, v7, v2

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1266
    .end local v4    # "n":Lbtools/mapaccess/OsmNode;
    .end local v6    # "p":Lbtools/router/OsmPath;
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    .end local v7    # "res":[I
    .restart local v8    # "res":[I
    goto :goto_1
.end method

.method public getPathPeak()I
    .locals 2

    .prologue
    .line 1228
    iget-object v1, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    monitor-enter v1

    .line 1230
    :try_start_0
    iget-object v0, p0, Lbtools/router/RoutingEngine;->openSet:Lbtools/util/SortedHeap;

    invoke-virtual {v0}, Lbtools/util/SortedHeap;->getPeakSize()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlainAscend()I
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lbtools/router/RoutingEngine;->foundTrack:Lbtools/router/OsmTrack;

    iget v0, v0, Lbtools/router/OsmTrack;->plainAscend:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Lbtools/router/RoutingEngine;->finished:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lbtools/router/RoutingEngine;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lbtools/router/RoutingEngine;->doRun(J)V

    .line 144
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/router/RoutingEngine;->terminated:Z

    .line 1318
    return-void
.end method
