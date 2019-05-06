.class public Lbtools/routingapp/CoordinateReaderLocus;
.super Lbtools/routingapp/CoordinateReader;
.source "CoordinateReaderLocus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "basedir"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lbtools/routingapp/CoordinateReader;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "/Locus/mapItems"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderLocus;->tracksdir:Ljava/lang/String;

    .line 18
    const-string v0, "/Locus"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderLocus;->rootdir:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private _readPointmap(Ljava/lang/String;)V
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 46
    invoke-static {p1, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 48
    .local v2, "myDataBase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SELECT c.name, w.name, w.longitude, w.latitude FROM waypoints w, categories c where w.parent_id = c._id"

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v3, Lbtools/router/OsmNodeNamed;

    invoke-direct {v3}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 52
    .local v3, "n":Lbtools/router/OsmNodeNamed;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "category":Ljava/lang/String;
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 54
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v3, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 55
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    add-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v3, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 56
    invoke-virtual {p0, v1, v3}, Lbtools/routingapp/CoordinateReaderLocus;->checkAddPoint(Ljava/lang/String;Lbtools/router/OsmNodeNamed;)V

    goto :goto_0

    .line 58
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "n":Lbtools/router/OsmNodeNamed;
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbtools/routingapp/CoordinateReaderLocus;->basedir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Locus/data/database/waypoints.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 25
    .local v0, "t1":J
    return-wide v0
.end method

.method public getTurnInstructionMode()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    return v0
.end method

.method public readPointmap()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbtools/routingapp/CoordinateReaderLocus;->basedir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Locus/data/database/waypoints.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbtools/routingapp/CoordinateReaderLocus;->_readPointmap(Ljava/lang/String;)V

    .line 42
    return-void
.end method
