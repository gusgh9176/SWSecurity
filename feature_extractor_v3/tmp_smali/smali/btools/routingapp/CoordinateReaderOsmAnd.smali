.class public Lbtools/routingapp/CoordinateReaderOsmAnd;
.super Lbtools/routingapp/CoordinateReader;
.source "CoordinateReaderOsmAnd.java"


# instance fields
.field private osmandDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "basedir"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "basedir"    # Ljava/lang/String;
    .param p2, "shortPath"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lbtools/routingapp/CoordinateReader;-><init>(Ljava/lang/String;)V

    .line 25
    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    .line 28
    const-string v0, "/tracks"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->tracksdir:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->rootdir:Ljava/lang/String;

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/osmand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    .line 34
    const-string v0, "/osmand/tracks"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->tracksdir:Ljava/lang/String;

    .line 35
    const-string v0, "/osmand"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->rootdir:Ljava/lang/String;

    goto :goto_0
.end method

.method private _readPointmap(Ljava/lang/String;)V
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 79
    .local v8, "n":Lbtools/router/OsmNodeNamed;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 109
    return-void

    .line 82
    :cond_1
    const-string v9, "<wpt lat=\""

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "idx0":I
    const-string v9, "<name>"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 84
    .local v3, "idx10":I
    if-ltz v1, :cond_2

    .line 86
    new-instance v8, Lbtools/router/OsmNodeNamed;

    .end local v8    # "n":Lbtools/router/OsmNodeNamed;
    invoke-direct {v8}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 87
    .restart local v8    # "n":Lbtools/router/OsmNodeNamed;
    add-int/lit8 v1, v1, 0xa

    .line 88
    const/16 v9, 0x22

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 89
    .local v2, "idx1":I
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4056800000000000L    # 90.0

    add-double/2addr v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v8, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 90
    const-string v9, " lon=\""

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, "idx2":I
    if-ltz v5, :cond_0

    .line 92
    add-int/lit8 v5, v5, 0x6

    .line 93
    const/16 v9, 0x22

    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 94
    .local v6, "idx3":I
    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    add-double/2addr v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v8, Lbtools/router/OsmNodeNamed;->ilon:I

    goto :goto_0

    .line 97
    .end local v2    # "idx1":I
    .end local v5    # "idx2":I
    .end local v6    # "idx3":I
    :cond_2
    if-eqz v8, :cond_0

    if-ltz v3, :cond_0

    .line 99
    add-int/lit8 v3, v3, 0x6

    .line 100
    const-string v9, "</name>"

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 101
    .local v4, "idx11":I
    if-ltz v4, :cond_0

    .line 103
    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 104
    const-string v9, "(one-for-all)"

    invoke-virtual {p0, v9, v8}, Lbtools/routingapp/CoordinateReaderOsmAnd;->checkAddPoint(Ljava/lang/String;Lbtools/router/OsmNodeNamed;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/favourites_bak.gpx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 43
    .local v0, "t1":J
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/favourites.gpx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 44
    .local v2, "t2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .end local v0    # "t1":J
    :goto_0
    return-wide v0

    .restart local v0    # "t1":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getTurnInstructionMode()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    return v0
.end method

.method public readPointmap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/favourites_bak.gpx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbtools/routingapp/CoordinateReaderOsmAnd;->_readPointmap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbtools/routingapp/CoordinateReaderOsmAnd;->osmandDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/favourites.gpx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbtools/routingapp/CoordinateReaderOsmAnd;->_readPointmap(Ljava/lang/String;)V

    goto :goto_0
.end method
