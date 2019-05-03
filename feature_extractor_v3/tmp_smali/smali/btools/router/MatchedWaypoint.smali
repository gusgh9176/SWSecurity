.class final Lbtools/router/MatchedWaypoint;
.super Ljava/lang/Object;
.source "MatchedWaypoint.java"


# instance fields
.field public crosspoint:Lbtools/router/OsmNodeNamed;

.field public hasUpdate:Z

.field public node1:Lbtools/mapaccess/OsmNode;

.field public node2:Lbtools/mapaccess/OsmNode;

.field public radius:D

.field public waypoint:Lbtools/router/OsmNodeNamed;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromStream(Ljava/io/DataInput;)Lbtools/router/MatchedWaypoint;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lbtools/router/MatchedWaypoint;

    invoke-direct {v0}, Lbtools/router/MatchedWaypoint;-><init>()V

    .line 39
    .local v0, "mwp":Lbtools/router/MatchedWaypoint;
    new-instance v1, Lbtools/mapaccess/OsmNode;

    invoke-direct {v1}, Lbtools/mapaccess/OsmNode;-><init>()V

    iput-object v1, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    .line 40
    new-instance v1, Lbtools/mapaccess/OsmNode;

    invoke-direct {v1}, Lbtools/mapaccess/OsmNode;-><init>()V

    iput-object v1, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    .line 41
    new-instance v1, Lbtools/router/OsmNodeNamed;

    invoke-direct {v1}, Lbtools/router/OsmNodeNamed;-><init>()V

    iput-object v1, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    .line 42
    new-instance v1, Lbtools/router/OsmNodeNamed;

    invoke-direct {v1}, Lbtools/router/OsmNodeNamed;-><init>()V

    iput-object v1, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    .line 44
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 45
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 46
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 47
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 48
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 49
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 50
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 51
    iget-object v1, v0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, v1, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 52
    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lbtools/router/MatchedWaypoint;->radius:D

    .line 53
    return-object v0
.end method


# virtual methods
.method public writeToStream(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 26
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->node1:Lbtools/mapaccess/OsmNode;

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 27
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->node2:Lbtools/mapaccess/OsmNode;

    iget v0, v0, Lbtools/mapaccess/OsmNode;->ilon:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->crosspoint:Lbtools/router/OsmNodeNamed;

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 31
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 33
    iget-wide v0, p0, Lbtools/router/MatchedWaypoint;->radius:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 34
    return-void
.end method
