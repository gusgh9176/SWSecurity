.class public abstract Lbtools/routingapp/CoordinateReader;
.super Ljava/lang/Object;
.source "CoordinateReader.java"


# static fields
.field protected static posnames:[Ljava/lang/String;


# instance fields
.field public allpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field private allpointsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbtools/router/OsmNodeNamed;",
            ">;>;"
        }
    .end annotation
.end field

.field public basedir:Ljava/lang/String;

.field public nogopoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field private nogosOnly:Z

.field private pointmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbtools/router/OsmNodeNamed;",
            ">;"
        }
    .end annotation
.end field

.field public rootdir:Ljava/lang/String;

.field public tracksdir:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "from"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "via1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "via2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "via3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "via4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "via5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "via6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "via7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "via8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "via9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "to"

    aput-object v2, v0, v1

    sput-object v0, Lbtools/routingapp/CoordinateReader;->posnames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "basedir"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static obtainValidReader(Ljava/lang/String;Ljava/lang/String;)Lbtools/routingapp/CoordinateReader;
    .locals 1
    .param p0, "basedir"    # Ljava/lang/String;
    .param p1, "segmentDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbtools/routingapp/CoordinateReader;->obtainValidReader(Ljava/lang/String;Ljava/lang/String;Z)Lbtools/routingapp/CoordinateReader;

    move-result-object v0

    return-object v0
.end method

.method public static obtainValidReader(Ljava/lang/String;Ljava/lang/String;Z)Lbtools/routingapp/CoordinateReader;
    .locals 16
    .param p0, "basedir"    # Ljava/lang/String;
    .param p1, "segmentDir"    # Ljava/lang/String;
    .param p2, "nogosOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v5, 0x0

    .line 159
    .local v5, "cor":Lbtools/routingapp/CoordinateReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v7, "rl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbtools/routingapp/CoordinateReader;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding standard maptool-base: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 162
    new-instance v9, Lbtools/routingapp/CoordinateReaderOsmAnd;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v9, Lbtools/routingapp/CoordinateReaderLocus;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lbtools/routingapp/CoordinateReaderLocus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v9, Lbtools/routingapp/CoordinateReaderOrux;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lbtools/routingapp/CoordinateReaderOrux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 168
    .local v8, "standardbase":Ljava/io/File;
    if-eqz v8, :cond_0

    .line 170
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "base2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding internal sd maptool-base: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 174
    new-instance v9, Lbtools/routingapp/CoordinateReaderOsmAnd;

    invoke-direct {v9, v3}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v9, Lbtools/routingapp/CoordinateReaderLocus;

    invoke-direct {v9, v3}, Lbtools/routingapp/CoordinateReaderLocus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v9, Lbtools/routingapp/CoordinateReaderOrux;

    invoke-direct {v9, v3}, Lbtools/routingapp/CoordinateReaderOrux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v3    # "base2":Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lbtools/router/RoutingHelper;->getAdditionalMaptoolDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 182
    .local v2, "additional":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "base3":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding maptool-base from storage-config: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 188
    new-instance v9, Lbtools/routingapp/CoordinateReaderOsmAnd;

    invoke-direct {v9, v4}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v9, Lbtools/routingapp/CoordinateReaderOsmAnd;

    const/4 v14, 0x1

    invoke-direct {v9, v4, v14}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v9, Lbtools/routingapp/CoordinateReaderLocus;

    invoke-direct {v9, v4}, Lbtools/routingapp/CoordinateReaderLocus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v9, Lbtools/routingapp/CoordinateReaderOrux;

    invoke-direct {v9, v4}, Lbtools/routingapp/CoordinateReaderOrux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v4    # "base3":Ljava/lang/String;
    :cond_1
    const-wide/16 v12, 0x0

    .line 195
    .local v12, "tmax":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbtools/routingapp/CoordinateReader;

    .line 197
    .local v6, "r":Lbtools/routingapp/CoordinateReader;
    invoke-static {}, Lbtools/routingapp/AppLogger;->isLogging()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 199
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reading timestamp at systime "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 202
    :cond_3
    invoke-virtual {v6}, Lbtools/routingapp/CoordinateReader;->getTimeStamp()J

    move-result-wide v10

    .line 204
    .local v10, "t":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_4

    .line 206
    invoke-static {}, Lbtools/routingapp/AppLogger;->isLogging()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 208
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found coordinate source at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v6, Lbtools/routingapp/CoordinateReader;->rootdir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with timestamp "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 212
    :cond_4
    cmp-long v14, v10, v12

    if-lez v14, :cond_2

    .line 214
    move-wide v12, v10

    .line 215
    move-object v5, v6

    goto :goto_0

    .line 218
    .end local v6    # "r":Lbtools/routingapp/CoordinateReader;
    .end local v10    # "t":J
    :cond_5
    if-nez v5, :cond_6

    .line 220
    new-instance v5, Lbtools/routingapp/CoordinateReaderNone;

    .end local v5    # "cor":Lbtools/routingapp/CoordinateReader;
    invoke-direct {v5}, Lbtools/routingapp/CoordinateReaderNone;-><init>()V

    .line 222
    .restart local v5    # "cor":Lbtools/routingapp/CoordinateReader;
    :cond_6
    move/from16 v0, p2

    iput-boolean v0, v5, Lbtools/routingapp/CoordinateReader;->nogosOnly:Z

    .line 223
    invoke-virtual {v5}, Lbtools/routingapp/CoordinateReader;->readFromTo()V

    .line 224
    return-object v5
.end method


# virtual methods
.method protected checkAddPoint(Ljava/lang/String;Lbtools/router/OsmNodeNamed;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "n"    # Lbtools/router/OsmNodeNamed;

    .prologue
    .line 104
    iget-object v3, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 106
    if-nez p1, :cond_0

    const-string p1, ""

    .line 107
    :cond_0
    iget-object v3, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 108
    .local v0, "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    .end local v0    # "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 111
    .restart local v0    # "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    iget-object v3, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x65

    if-ge v3, v4, :cond_2

    .line 115
    iget-object v3, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v0    # "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    :cond_2
    :goto_0
    return-void

    .line 120
    :cond_3
    const/4 v2, 0x0

    .line 121
    .local v2, "isKnown":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lbtools/routingapp/CoordinateReader;->posnames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 123
    sget-object v3, Lbtools/routingapp/CoordinateReader;->posnames:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    const/4 v2, 0x1

    .line 130
    :cond_4
    if-eqz v2, :cond_6

    .line 132
    iget-object v3, p0, Lbtools/routingapp/CoordinateReader;->pointmap:Ljava/util/HashMap;

    iget-object v4, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    iget-boolean v3, p0, Lbtools/routingapp/CoordinateReader;->nogosOnly:Z

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiple "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-positions!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_6
    iget-object v3, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    const-string v4, "nogo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p2, Lbtools/router/OsmNodeNamed;->isNogo:Z

    .line 143
    iget-object v3, p0, Lbtools/routingapp/CoordinateReader;->nogopoints:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract getTimeStamp()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTurnInstructionMode()I
.end method

.method public readAllPoints()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v5, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    .line 50
    invoke-virtual {p0}, Lbtools/routingapp/CoordinateReader;->readFromTo()V

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "category":Ljava/lang/String;
    iget-object v6, p0, Lbtools/routingapp/CoordinateReader;->allpointsMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 56
    .local v0, "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    const/16 v7, 0x65

    if-ge v6, v7, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmNodeNamed;

    .line 60
    .local v4, "wp":Lbtools/router/OsmNodeNamed;
    iget-object v7, v4, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    iget-object v7, p0, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v4    # "wp":Lbtools/router/OsmNodeNamed;
    :cond_2
    new-instance v3, Lbtools/router/OsmNodeNamed;

    invoke-direct {v3}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 69
    .local v3, "nocatHint":Lbtools/router/OsmNodeNamed;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<big category "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " supressed>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 70
    iget-object v6, p0, Lbtools/routingapp/CoordinateReader;->allpoints:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v0    # "cat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbtools/router/OsmNodeNamed;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "nocatHint":Lbtools/router/OsmNodeNamed;
    :cond_3
    return-void
.end method

.method public readFromTo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lbtools/routingapp/CoordinateReader;->pointmap:Ljava/util/HashMap;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbtools/routingapp/CoordinateReader;->waypoints:Ljava/util/List;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbtools/routingapp/CoordinateReader;->nogopoints:Ljava/util/List;

    .line 83
    invoke-virtual {p0}, Lbtools/routingapp/CoordinateReader;->readPointmap()V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "fromToMissing":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lbtools/routingapp/CoordinateReader;->posnames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 87
    sget-object v4, Lbtools/routingapp/CoordinateReader;->posnames:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 88
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lbtools/routingapp/CoordinateReader;->pointmap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmNodeNamed;

    .line 89
    .local v2, "n":Lbtools/router/OsmNodeNamed;
    if-eqz v2, :cond_1

    .line 91
    iget-object v4, p0, Lbtools/routingapp/CoordinateReader;->waypoints:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v4, "from"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 96
    :cond_2
    const-string v4, "to"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "n":Lbtools/router/OsmNodeNamed;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lbtools/routingapp/CoordinateReader;->waypoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 100
    :cond_4
    return-void
.end method

.method protected abstract readPointmap()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
