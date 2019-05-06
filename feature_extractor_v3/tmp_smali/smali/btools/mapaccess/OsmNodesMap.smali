.class public final Lbtools/mapaccess/OsmNodesMap;
.super Ljava/lang/Object;
.source "OsmNodesMap.java"


# instance fields
.field private abUnifier:Lbtools/util/ByteArrayUnifier;

.field private hmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lbtools/mapaccess/OsmNode;",
            "Lbtools/mapaccess/OsmNode;",
            ">;"
        }
    .end annotation
.end field

.field private testKey:Lbtools/mapaccess/OsmNode;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->hmap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lbtools/util/ByteArrayUnifier;

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbtools/util/ByteArrayUnifier;-><init>(IZ)V

    iput-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->abUnifier:Lbtools/util/ByteArrayUnifier;

    .line 18
    new-instance v0, Lbtools/mapaccess/OsmNode;

    invoke-direct {v0}, Lbtools/mapaccess/OsmNode;-><init>()V

    iput-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->testKey:Lbtools/mapaccess/OsmNode;

    return-void
.end method


# virtual methods
.method public get(II)Lbtools/mapaccess/OsmNode;
    .locals 2
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->testKey:Lbtools/mapaccess/OsmNode;

    iput p1, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 32
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->testKey:Lbtools/mapaccess/OsmNode;

    iput p2, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 33
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->hmap:Ljava/util/HashMap;

    iget-object v1, p0, Lbtools/mapaccess/OsmNodesMap;->testKey:Lbtools/mapaccess/OsmNode;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/mapaccess/OsmNode;

    return-object v0
.end method

.method public getByteArrayUnifier()Lbtools/util/ByteArrayUnifier;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->abUnifier:Lbtools/util/ByteArrayUnifier;

    return-object v0
.end method

.method public put(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;
    .locals 1
    .param p1, "node"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 48
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->hmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/mapaccess/OsmNode;

    return-object v0
.end method

.method public remove(Lbtools/mapaccess/OsmNode;)V
    .locals 1
    .param p1, "node"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 39
    iget-object v0, p0, Lbtools/mapaccess/OsmNodesMap;->hmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
