.class public Lbtools/routingapp/BRouterWorker;
.super Ljava/lang/Object;
.source "BRouterWorker.java"


# instance fields
.field public baseDir:Ljava/lang/String;

.field public nogoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field public profileName:Ljava/lang/String;

.field public profilePath:Ljava/lang/String;

.field public rawTrackPath:Ljava/lang/String;

.field public segmentDir:Ljava/lang/String;

.field public waypoints:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readNogos(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 155
    const-string v5, "nogoLats"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 156
    .local v1, "lats":[D
    const-string v5, "nogoLons"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .line 157
    .local v2, "lons":[D
    const-string v5, "nogoRadi"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v4

    .line 159
    .local v4, "radi":[D
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 170
    :cond_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    array-length v5, v2

    if-ge v0, v5, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 163
    new-instance v3, Lbtools/router/OsmNodeNamed;

    invoke-direct {v3}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 164
    .local v3, "n":Lbtools/router/OsmNodeNamed;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nogo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v4, v0

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 165
    aget-wide v6, v2, v0

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v5, v6

    iput v5, v3, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 166
    aget-wide v6, v1, v0

    const-wide v8, 0x4056800000000000L    # 90.0

    add-double/2addr v6, v8

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v5, v6

    iput v5, v3, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 167
    const/4 v5, 0x1

    iput-boolean v5, v3, Lbtools/router/OsmNodeNamed;->isNogo:Z

    .line 168
    iget-object v5, p0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readPositions(Landroid/os/Bundle;)Ljava/util/List;
    .locals 14
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v4, "wplist":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    const-string v5, "lats"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 132
    .local v1, "lats":[D
    const-string v5, "lons"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .line 134
    .local v2, "lons":[D
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    if-eqz v2, :cond_0

    array-length v5, v2

    if-ge v5, v6, :cond_1

    .line 136
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "we need two lat/lon points at least!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 141
    new-instance v3, Lbtools/router/OsmNodeNamed;

    invoke-direct {v3}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 142
    .local v3, "n":Lbtools/router/OsmNodeNamed;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 143
    aget-wide v6, v2, v0

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v5, v6

    iput v5, v3, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 144
    aget-wide v6, v1, v0

    const-wide v8, 0x4056800000000000L    # 90.0

    add-double/2addr v6, v8

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v5, v6

    iput v5, v3, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 145
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "n":Lbtools/router/OsmNodeNamed;
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbtools/router/OsmNodeNamed;

    const-string v6, "from"

    iput-object v6, v5, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbtools/router/OsmNodeNamed;

    const-string v6, "to"

    iput-object v6, v5, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 150
    return-object v4
.end method

.method private writeTimeoutData(Lbtools/router/RoutingContext;)V
    .locals 4
    .param p1, "rc"    # Lbtools/router/RoutingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbtools/routingapp/BRouterWorker;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/brouter/modes/timeoutdata.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "timeoutFile":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 177
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lbtools/routingapp/BRouterWorker;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    iget-object v2, p1, Lbtools/router/RoutingContext;->rawTrackPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 180
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lbtools/routingapp/BRouterWorker;->waypoints:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lbtools/routingapp/BRouterWorker;->writeWPList(Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 182
    iget-object v2, p0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lbtools/routingapp/BRouterWorker;->writeWPList(Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 184
    return-void
.end method

.method private writeWPList(Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 3
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "wps":Ljava/util/List;, "Ljava/util/List<Lbtools/router/OsmNodeNamed;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmNodeNamed;

    .line 191
    .local v0, "wp":Lbtools/router/OsmNodeNamed;
    invoke-virtual {v0}, Lbtools/router/OsmNodeNamed;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 192
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v0    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_0
    return-void
.end method


# virtual methods
.method public getTrackFromParams(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 19
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v3, "pathToFileResult"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 31
    .local v14, "pathToFileResult":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 33
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 35
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    const-string v3, "file folder does not exists or can not be written!"

    .line 124
    .end local v8    # "dir":Ljava/io/File;
    .end local v10    # "f":Ljava/io/File;
    :goto_0
    return-object v3

    .line 40
    :cond_1
    const-wide/32 v12, 0xea60

    .line 41
    .local v12, "maxRunningTime":J
    const-string v3, "maxRunningTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 42
    .local v15, "sMaxRunningTime":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 44
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v12, v3

    .line 47
    :cond_2
    new-instance v7, Lbtools/router/RoutingContext;

    invoke-direct {v7}, Lbtools/router/RoutingContext;-><init>()V

    .line 48
    .local v7, "rc":Lbtools/router/RoutingContext;
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterWorker;->rawTrackPath:Ljava/lang/String;

    iput-object v3, v7, Lbtools/router/RoutingContext;->rawTrackPath:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterWorker;->profilePath:Ljava/lang/String;

    iput-object v3, v7, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    .line 51
    const-string v3, "turnInstructionFormat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 52
    .local v16, "tiFormat":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 54
    const-string v3, "osmand"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 56
    const/4 v3, 0x3

    iput v3, v7, Lbtools/router/RoutingContext;->turnInstructionMode:I

    .line 64
    :cond_3
    :goto_1
    const-string v3, "direction"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    const-string v3, "direction"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v7, Lbtools/router/RoutingContext;->startDirection:Ljava/lang/Integer;

    .line 69
    :cond_4
    invoke-direct/range {p0 .. p1}, Lbtools/routingapp/BRouterWorker;->readNogos(Landroid/os/Bundle;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    invoke-static {v3}, Lbtools/router/RoutingContext;->prepareNogoPoints(Ljava/util/List;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    iput-object v3, v7, Lbtools/router/RoutingContext;->nogopoints:Ljava/util/List;

    .line 73
    invoke-direct/range {p0 .. p1}, Lbtools/routingapp/BRouterWorker;->readPositions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lbtools/routingapp/BRouterWorker;->waypoints:Ljava/util/List;

    .line 75
    new-instance v2, Lbtools/router/RoutingEngine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/routingapp/BRouterWorker;->segmentDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbtools/routingapp/BRouterWorker;->waypoints:Ljava/util/List;

    invoke-direct/range {v2 .. v7}, Lbtools/router/RoutingEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lbtools/router/RoutingContext;)V

    .line 76
    .local v2, "cr":Lbtools/router/RoutingEngine;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lbtools/router/RoutingEngine;->quite:Z

    .line 77
    invoke-virtual {v2, v12, v13}, Lbtools/router/RoutingEngine;->doRun(J)V

    .line 81
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getFoundRawTrack()Lbtools/router/OsmTrack;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 85
    :try_start_0
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getFoundRawTrack()Lbtools/router/OsmTrack;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lbtools/routingapp/BRouterWorker;->rawTrackPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lbtools/router/OsmTrack;->writeBinary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 92
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 96
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lbtools/routingapp/BRouterWorker;->writeTimeoutData(Lbtools/router/RoutingContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 58
    .end local v2    # "cr":Lbtools/router/RoutingEngine;
    :cond_7
    const-string v3, "locus"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    const/4 v3, 0x2

    iput v3, v7, Lbtools/router/RoutingContext;->turnInstructionMode:I

    goto :goto_1

    .line 103
    .restart local v2    # "cr":Lbtools/router/RoutingEngine;
    :cond_8
    const-string v3, "trackFormat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "format":Ljava/lang/String;
    if-eqz v11, :cond_9

    const-string v3, "kml"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v18, 0x1

    .line 106
    .local v18, "writeKml":Z
    :goto_4
    invoke-virtual {v2}, Lbtools/router/RoutingEngine;->getFoundTrack()Lbtools/router/OsmTrack;

    move-result-object v17

    .line 107
    .local v17, "track":Lbtools/router/OsmTrack;
    if-eqz v17, :cond_c

    .line 109
    if-nez v14, :cond_b

    .line 111
    if-eqz v18, :cond_a

    invoke-virtual/range {v17 .. v17}, Lbtools/router/OsmTrack;->formatAsKml()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 104
    .end local v17    # "track":Lbtools/router/OsmTrack;
    .end local v18    # "writeKml":Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_4

    .line 112
    .restart local v17    # "track":Lbtools/router/OsmTrack;
    .restart local v18    # "writeKml":Z
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lbtools/router/OsmTrack;->formatAsGpx()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 116
    :cond_b
    if-eqz v18, :cond_d

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lbtools/router/OsmTrack;->writeKml(Ljava/lang/String;)V

    .line 124
    :cond_c
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 117
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lbtools/router/OsmTrack;->writeGpx(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 119
    :catch_0
    move-exception v9

    .line 121
    .local v9, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 98
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "format":Ljava/lang/String;
    .end local v17    # "track":Lbtools/router/OsmTrack;
    .end local v18    # "writeKml":Z
    :catch_1
    move-exception v3

    goto :goto_3

    .line 87
    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method
