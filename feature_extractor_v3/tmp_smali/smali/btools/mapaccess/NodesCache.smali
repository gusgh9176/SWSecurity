.class public final Lbtools/mapaccess/NodesCache;
.super Ljava/lang/Object;
.source "NodesCache.java"


# instance fields
.field private cacheSum:J

.field private cacheSumClean:J

.field private currentFileName:Ljava/lang/String;

.field private dataBuffers:Lbtools/codec/DataBuffers;

.field private detailed:Z

.field private expCtxWay:Lbtools/expressions/BExpressionContextWay;

.field private fileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbtools/mapaccess/PhysicalFile;",
            ">;"
        }
    .end annotation
.end field

.field private fileRows:[[Lbtools/mapaccess/OsmFile;

.field public first_file_access_failed:Z

.field public first_file_access_name:Ljava/lang/String;

.field private forceSecondaryData:Z

.field private garbageCollectionEnabled:Z

.field private ghostCleaningDone:Z

.field private ghostSum:J

.field private ghostWakeup:J

.field private lookupMinorVersion:I

.field private lookupVersion:I

.field private maxmem:J

.field private nodesMap:Lbtools/mapaccess/OsmNodesMap;

.field private secondarySegmentsDir:Ljava/io/File;

.field private segmentDir:Ljava/io/File;

.field public waypointMatcher:Lbtools/codec/WaypointMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbtools/mapaccess/OsmNodesMap;Lbtools/expressions/BExpressionContextWay;ZJLbtools/mapaccess/NodesCache;Z)V
    .locals 15
    .param p1, "segmentDir"    # Ljava/lang/String;
    .param p2, "nodesMap"    # Lbtools/mapaccess/OsmNodesMap;
    .param p3, "ctxWay"    # Lbtools/expressions/BExpressionContextWay;
    .param p4, "forceSecondaryData"    # Z
    .param p5, "maxmem"    # J
    .param p7, "oldCache"    # Lbtools/mapaccess/NodesCache;
    .param p8, "detailed"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v4, 0x0

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->secondarySegmentsDir:Ljava/io/File;

    .line 36
    const/4 v4, 0x0

    iput-boolean v4, p0, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    .line 39
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    .line 43
    const/4 v4, 0x0

    iput-boolean v4, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    .line 44
    const/4 v4, 0x0

    iput-boolean v4, p0, Lbtools/mapaccess/NodesCache;->ghostCleaningDone:Z

    .line 47
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSumClean:J

    .line 48
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->ghostSum:J

    .line 49
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->ghostWakeup:J

    .line 58
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->segmentDir:Ljava/io/File;

    .line 59
    move-object/from16 v0, p2

    iput-object v0, p0, Lbtools/mapaccess/NodesCache;->nodesMap:Lbtools/mapaccess/OsmNodesMap;

    .line 60
    move-object/from16 v0, p3

    iput-object v0, p0, Lbtools/mapaccess/NodesCache;->expCtxWay:Lbtools/expressions/BExpressionContextWay;

    .line 61
    move-object/from16 v0, p3

    iget-object v4, v0, Lbtools/expressions/BExpressionContextWay;->meta:Lbtools/expressions/BExpressionMetaData;

    iget-short v4, v4, Lbtools/expressions/BExpressionMetaData;->lookupVersion:S

    iput v4, p0, Lbtools/mapaccess/NodesCache;->lookupVersion:I

    .line 62
    move-object/from16 v0, p3

    iget-object v4, v0, Lbtools/expressions/BExpressionContextWay;->meta:Lbtools/expressions/BExpressionMetaData;

    iget-short v4, v4, Lbtools/expressions/BExpressionMetaData;->lookupMinorVersion:S

    iput v4, p0, Lbtools/mapaccess/NodesCache;->lookupMinorVersion:I

    .line 63
    move/from16 v0, p4

    iput-boolean v0, p0, Lbtools/mapaccess/NodesCache;->forceSecondaryData:Z

    .line 64
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lbtools/mapaccess/NodesCache;->maxmem:J

    .line 65
    move/from16 v0, p8

    iput-boolean v0, p0, Lbtools/mapaccess/NodesCache;->detailed:Z

    .line 67
    if-eqz p3, :cond_0

    .line 69
    move-object/from16 v0, p3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lbtools/expressions/BExpressionContextWay;->setDecodeForbidden(Z)V

    .line 72
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    .line 73
    const/4 v4, 0x0

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lbtools/mapaccess/NodesCache;->segmentDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "segment directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_1
    if-eqz p7, :cond_6

    .line 80
    move-object/from16 v0, p7

    iget-object v4, v0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    .line 81
    move-object/from16 v0, p7

    iget-object v4, v0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    .line 82
    move-object/from16 v0, p7

    iget-object v4, v0, Lbtools/mapaccess/NodesCache;->secondarySegmentsDir:Ljava/io/File;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->secondarySegmentsDir:Ljava/io/File;

    .line 85
    move-object/from16 v0, p7

    iget-boolean v4, v0, Lbtools/mapaccess/NodesCache;->detailed:Z

    move/from16 v0, p8

    if-ne v4, v0, :cond_4

    .line 87
    move-object/from16 v0, p7

    iget-object v4, v0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    .line 88
    iget-object v6, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v2, v6, v5

    .line 90
    .local v2, "fileRow":[Lbtools/mapaccess/OsmFile;
    if-nez v2, :cond_3

    .line 88
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 92
    :cond_3
    array-length v8, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_2

    aget-object v3, v2, v4

    .line 94
    .local v3, "osmf":Lbtools/mapaccess/OsmFile;
    iget-wide v10, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual {v3}, Lbtools/mapaccess/OsmFile;->setGhostState()J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    .end local v2    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .end local v3    # "osmf":Lbtools/mapaccess/OsmFile;
    :cond_4
    const/16 v4, 0xb4

    new-array v4, v4, [[Lbtools/mapaccess/OsmFile;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    .line 110
    :cond_5
    :goto_2
    iget-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->ghostSum:J

    .line 111
    return-void

    .line 105
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    .line 106
    const/16 v4, 0xb4

    new-array v4, v4, [[Lbtools/mapaccess/OsmFile;

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    .line 107
    new-instance v4, Lbtools/codec/DataBuffers;

    invoke-direct {v4}, Lbtools/codec/DataBuffers;-><init>()V

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    .line 108
    invoke-static/range {p1 .. p1}, Lbtools/mapaccess/StorageConfigHelper;->getSecondarySegmentDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lbtools/mapaccess/NodesCache;->secondarySegmentsDir:Ljava/io/File;

    goto :goto_2
.end method

.method private checkEnableCacheCleaning()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 130
    iget-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    iget-wide v6, p0, Lbtools/mapaccess/NodesCache;->maxmem:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 165
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 137
    iget-object v3, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    aget-object v0, v3, v1

    .line 138
    .local v0, "fileRow":[Lbtools/mapaccess/OsmFile;
    if-nez v0, :cond_2

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 144
    .local v2, "osmf":Lbtools/mapaccess/OsmFile;
    iget-boolean v5, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lbtools/mapaccess/NodesCache;->ghostCleaningDone:Z

    if-nez v5, :cond_3

    .line 146
    iget-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual {v2}, Lbtools/mapaccess/OsmFile;->cleanGhosts()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    .line 142
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 150
    :cond_3
    iget-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual {v2}, Lbtools/mapaccess/OsmFile;->collectAll()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    goto :goto_3

    .line 155
    .end local v0    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .end local v2    # "osmf":Lbtools/mapaccess/OsmFile;
    :cond_4
    iget-boolean v3, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    if-eqz v3, :cond_5

    .line 157
    iput-boolean v10, p0, Lbtools/mapaccess/NodesCache;->ghostCleaningDone:Z

    .line 158
    iget-wide v4, p0, Lbtools/mapaccess/NodesCache;->maxmem:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->maxmem:J

    goto :goto_0

    .line 162
    :cond_5
    iget-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    iput-wide v4, p0, Lbtools/mapaccess/NodesCache;->cacheSumClean:J

    .line 163
    iput-boolean v10, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    goto :goto_0
.end method

.method private fileForSegment(II)Lbtools/mapaccess/OsmFile;
    .locals 17
    .param p1, "lonDegree"    # I
    .param p2, "latDegree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    rem-int/lit8 v7, p1, 0x5

    .line 261
    .local v7, "lonMod5":I
    rem-int/lit8 v5, p2, 0x5

    .line 263
    .local v5, "latMod5":I
    move/from16 v0, p1

    add-int/lit16 v14, v0, -0xb4

    sub-int v6, v14, v7

    .line 264
    .local v6, "lon":I
    if-gez v6, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "W"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    neg-int v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "slon":Ljava/lang/String;
    :goto_0
    add-int/lit8 v14, p2, -0x5a

    sub-int v4, v14, v5

    .line 267
    .local v4, "lat":I
    if-gez v4, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "S"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    neg-int v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 268
    .local v12, "slat":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "filenameBase":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".rd5"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/NodesCache;->currentFileName:Ljava/lang/String;

    .line 272
    const/4 v10, 0x0

    .line 273
    .local v10, "ra":Lbtools/mapaccess/PhysicalFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lbtools/mapaccess/NodesCache;->forceSecondaryData:Z

    if-nez v14, :cond_0

    .line 278
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->segmentDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".rd5"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v9, "primary":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 281
    move-object v2, v9

    .line 284
    .end local v9    # "primary":Ljava/io/File;
    :cond_0
    if-nez v2, :cond_1

    .line 286
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->secondarySegmentsDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".rd5"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v11, "secondary":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 289
    move-object v2, v11

    .line 292
    .end local v11    # "secondary":Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/NodesCache;->currentFileName:Ljava/lang/String;

    .line 295
    new-instance v10, Lbtools/mapaccess/PhysicalFile;

    .end local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    move-object/from16 v0, p0

    iget v15, v0, Lbtools/mapaccess/NodesCache;->lookupVersion:I

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/mapaccess/NodesCache;->lookupMinorVersion:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v2, v14, v15, v0}, Lbtools/mapaccess/PhysicalFile;-><init>(Ljava/io/File;Lbtools/codec/DataBuffers;II)V

    .line 297
    .restart local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    check-cast v10, Lbtools/mapaccess/PhysicalFile;

    .line 300
    .restart local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    new-instance v8, Lbtools/mapaccess/OsmFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v8, v10, v0, v1, v14}, Lbtools/mapaccess/OsmFile;-><init>(Lbtools/mapaccess/PhysicalFile;IILbtools/codec/DataBuffers;)V

    .line 302
    .local v8, "osmf":Lbtools/mapaccess/OsmFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/NodesCache;->currentFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/NodesCache;->first_file_access_name:Ljava/lang/String;

    .line 305
    iget-object v14, v8, Lbtools/mapaccess/OsmFile;->filename:Ljava/lang/String;

    if-nez v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lbtools/mapaccess/NodesCache;->first_file_access_failed:Z

    .line 308
    :cond_4
    return-object v8

    .line 264
    .end local v3    # "filenameBase":Ljava/lang/String;
    .end local v4    # "lat":I
    .end local v8    # "osmf":Lbtools/mapaccess/OsmFile;
    .end local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    .end local v12    # "slat":Ljava/lang/String;
    .end local v13    # "slon":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "E"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 267
    .restart local v4    # "lat":I
    .restart local v13    # "slon":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "N"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 305
    .restart local v3    # "filenameBase":Ljava/lang/String;
    .restart local v8    # "osmf":Lbtools/mapaccess/OsmFile;
    .restart local v10    # "ra":Lbtools/mapaccess/PhysicalFile;
    .restart local v12    # "slat":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto :goto_2
.end method


# virtual methods
.method public cleanNonVirgin()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v5, p0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 117
    .local v0, "fileRow":[Lbtools/mapaccess/OsmFile;
    if-nez v0, :cond_1

    .line 115
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 119
    :cond_1
    array-length v7, v0

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v1, v0, v2

    .line 121
    .local v1, "osmf":Lbtools/mapaccess/OsmFile;
    invoke-virtual {v1}, Lbtools/mapaccess/OsmFile;->cleanNonVirgin()V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .end local v1    # "osmf":Lbtools/mapaccess/OsmFile;
    :cond_2
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lbtools/mapaccess/NodesCache;->fileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/mapaccess/PhysicalFile;

    .line 317
    .local v0, "f":Lbtools/mapaccess/PhysicalFile;
    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    iget-object v2, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    goto :goto_0

    .line 325
    .end local v0    # "f":Lbtools/mapaccess/PhysicalFile;
    :cond_1
    return-void
.end method

.method public formatStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " noGhosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbtools/mapaccess/NodesCache;->ghostCleaningDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cacheSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cacheSumClean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/mapaccess/NodesCache;->cacheSumClean:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ghostSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/mapaccess/NodesCache;->ghostSum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ghostWakeup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/mapaccess/NodesCache;->ghostWakeup:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentFor(II)Lbtools/codec/MicroCache;
    .locals 17
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 177
    const v3, 0xf4240

    :try_start_0
    div-int v12, p1, v3

    .line 178
    .local v12, "lonDegree":I
    const v3, 0xf4240

    div-int v11, p2, v3

    .line 179
    .local v11, "latDegree":I
    const/4 v2, 0x0

    .line 180
    .local v2, "osmf":Lbtools/mapaccess/OsmFile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    aget-object v9, v3, v11

    .line 181
    .local v9, "fileRow":[Lbtools/mapaccess/OsmFile;
    if-nez v9, :cond_1

    const/4 v13, 0x0

    .line 182
    .local v13, "ndegrees":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_0

    .line 184
    aget-object v3, v9, v10

    iget v3, v3, Lbtools/mapaccess/OsmFile;->lonDegree:I

    if-ne v3, v12, :cond_2

    .line 186
    aget-object v2, v9, v10

    .line 190
    :cond_0
    if-nez v2, :cond_4

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lbtools/mapaccess/NodesCache;->fileForSegment(II)Lbtools/mapaccess/OsmFile;

    move-result-object v2

    .line 193
    add-int/lit8 v3, v13, 0x1

    new-array v14, v3, [Lbtools/mapaccess/OsmFile;

    .line 194
    .local v14, "newFileRow":[Lbtools/mapaccess/OsmFile;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v13, :cond_3

    .line 196
    aget-object v3, v9, v10

    aput-object v3, v14, v10

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 181
    .end local v10    # "i":I
    .end local v13    # "ndegrees":I
    .end local v14    # "newFileRow":[Lbtools/mapaccess/OsmFile;
    :cond_1
    array-length v13, v9

    goto :goto_0

    .line 182
    .restart local v10    # "i":I
    .restart local v13    # "ndegrees":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 198
    .restart local v14    # "newFileRow":[Lbtools/mapaccess/OsmFile;
    :cond_3
    aput-object v2, v14, v13

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/mapaccess/NodesCache;->fileRows:[[Lbtools/mapaccess/OsmFile;

    aput-object v14, v3, v11

    .line 201
    .end local v14    # "newFileRow":[Lbtools/mapaccess/OsmFile;
    :cond_4
    iget-object v3, v2, Lbtools/mapaccess/OsmFile;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lbtools/mapaccess/NodesCache;->currentFileName:Ljava/lang/String;

    .line 203
    invoke-virtual {v2}, Lbtools/mapaccess/OsmFile;->hasData()Z

    move-result v3

    if-nez v3, :cond_6

    .line 205
    const/16 v16, 0x0

    .line 221
    :cond_5
    :goto_3
    return-object v16

    .line 208
    :cond_6
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lbtools/mapaccess/OsmFile;->getMicroCache(II)Lbtools/codec/MicroCache;

    move-result-object v16

    .line 209
    .local v16, "segment":Lbtools/codec/MicroCache;
    if-nez v16, :cond_7

    .line 211
    invoke-direct/range {p0 .. p0}, Lbtools/mapaccess/NodesCache;->checkEnableCacheCleaning()V

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/mapaccess/NodesCache;->dataBuffers:Lbtools/codec/DataBuffers;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/mapaccess/NodesCache;->expCtxWay:Lbtools/expressions/BExpressionContextWay;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbtools/mapaccess/NodesCache;->waypointMatcher:Lbtools/codec/WaypointMatcher;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lbtools/mapaccess/OsmFile;->createMicroCache(IILbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;)Lbtools/codec/MicroCache;

    move-result-object v16

    .line 214
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual/range {v16 .. v16}, Lbtools/codec/MicroCache;->getDataSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/mapaccess/NodesCache;->cacheSum:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 223
    .end local v2    # "osmf":Lbtools/mapaccess/OsmFile;
    .end local v9    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .end local v10    # "i":I
    .end local v11    # "latDegree":I
    .end local v12    # "lonDegree":I
    .end local v13    # "ndegrees":I
    .end local v16    # "segment":Lbtools/codec/MicroCache;
    :catch_0
    move-exception v15

    .line 225
    .local v15, "re":Ljava/lang/RuntimeException;
    throw v15

    .line 216
    .end local v15    # "re":Ljava/lang/RuntimeException;
    .restart local v2    # "osmf":Lbtools/mapaccess/OsmFile;
    .restart local v9    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .restart local v10    # "i":I
    .restart local v11    # "latDegree":I
    .restart local v12    # "lonDegree":I
    .restart local v13    # "ndegrees":I
    .restart local v16    # "segment":Lbtools/codec/MicroCache;
    :cond_7
    :try_start_1
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lbtools/codec/MicroCache;->ghost:Z

    if-eqz v3, :cond_5

    .line 218
    invoke-virtual/range {v16 .. v16}, Lbtools/codec/MicroCache;->unGhost()V

    .line 219
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbtools/mapaccess/NodesCache;->ghostWakeup:J

    invoke-virtual/range {v16 .. v16}, Lbtools/codec/MicroCache;->getDataSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbtools/mapaccess/NodesCache;->ghostWakeup:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 227
    .end local v2    # "osmf":Lbtools/mapaccess/OsmFile;
    .end local v9    # "fileRow":[Lbtools/mapaccess/OsmFile;
    .end local v10    # "i":I
    .end local v11    # "latDegree":I
    .end local v12    # "lonDegree":I
    .end local v13    # "ndegrees":I
    .end local v16    # "segment":Lbtools/codec/MicroCache;
    :catch_1
    move-exception v8

    .line 229
    .local v8, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error reading datafile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/mapaccess/NodesCache;->currentFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public loadSegmentFor(II)I
    .locals 2
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2}, Lbtools/mapaccess/NodesCache;->getSegmentFor(II)Lbtools/codec/MicroCache;

    move-result-object v0

    .line 170
    .local v0, "mc":Lbtools/codec/MicroCache;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lbtools/codec/MicroCache;->getSize()I

    move-result v1

    goto :goto_0
.end method

.method public obtainNonHollowNode(Lbtools/mapaccess/OsmNode;)Z
    .locals 10
    .param p1, "node"    # Lbtools/mapaccess/OsmNode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p1}, Lbtools/mapaccess/OsmNode;->isHollow()Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v3

    .line 238
    :cond_1
    iget v5, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v6, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-virtual {p0, v5, v6}, Lbtools/mapaccess/NodesCache;->getSegmentFor(II)Lbtools/codec/MicroCache;

    move-result-object v2

    .line 239
    .local v2, "segment":Lbtools/codec/MicroCache;
    if-nez v2, :cond_2

    move v3, v4

    .line 241
    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p1}, Lbtools/mapaccess/OsmNode;->getIdFromPos()J

    move-result-wide v0

    .line 245
    .local v0, "id":J
    invoke-virtual {v2, v0, v1}, Lbtools/codec/MicroCache;->getAndClear(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    iget-object v5, p0, Lbtools/mapaccess/NodesCache;->nodesMap:Lbtools/mapaccess/OsmNodesMap;

    iget-object v6, p0, Lbtools/mapaccess/NodesCache;->expCtxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {p1, v2, v5, v6}, Lbtools/mapaccess/OsmNode;->parseNodeBody(Lbtools/codec/MicroCache;Lbtools/mapaccess/OsmNodesMap;Lbtools/util/IByteArrayUnifier;)V

    .line 250
    :cond_3
    iget-boolean v5, p0, Lbtools/mapaccess/NodesCache;->garbageCollectionEnabled:Z

    if-eqz v5, :cond_4

    .line 252
    iget-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    invoke-virtual {v2}, Lbtools/codec/MicroCache;->getSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Lbtools/codec/MicroCache;->collect(I)I

    move-result v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lbtools/mapaccess/NodesCache;->cacheSum:J

    .line 255
    :cond_4
    invoke-virtual {p1}, Lbtools/mapaccess/OsmNode;->isHollow()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method
