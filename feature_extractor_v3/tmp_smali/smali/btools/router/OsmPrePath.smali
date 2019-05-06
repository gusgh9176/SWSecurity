.class public abstract Lbtools/router/OsmPrePath;
.super Ljava/lang/Object;
.source "OsmPrePath.java"


# instance fields
.field protected link:Lbtools/mapaccess/OsmLink;

.field public next:Lbtools/router/OsmPrePath;

.field protected sourceNode:Lbtools/mapaccess/OsmNode;

.field protected targetNode:Lbtools/mapaccess/OsmNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lbtools/router/OsmPath;Lbtools/mapaccess/OsmLink;Lbtools/router/RoutingContext;)V
    .locals 1
    .param p1, "origin"    # Lbtools/router/OsmPath;
    .param p2, "link"    # Lbtools/mapaccess/OsmLink;
    .param p3, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 22
    iput-object p2, p0, Lbtools/router/OsmPrePath;->link:Lbtools/mapaccess/OsmLink;

    .line 23
    invoke-virtual {p1}, Lbtools/router/OsmPath;->getTargetNode()Lbtools/mapaccess/OsmNode;

    move-result-object v0

    iput-object v0, p0, Lbtools/router/OsmPrePath;->sourceNode:Lbtools/mapaccess/OsmNode;

    .line 24
    iget-object v0, p0, Lbtools/router/OsmPrePath;->sourceNode:Lbtools/mapaccess/OsmNode;

    invoke-virtual {p2, v0}, Lbtools/mapaccess/OsmLink;->getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;

    move-result-object v0

    iput-object v0, p0, Lbtools/router/OsmPrePath;->targetNode:Lbtools/mapaccess/OsmNode;

    .line 25
    invoke-virtual {p0, p1, p3}, Lbtools/router/OsmPrePath;->initPrePath(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)V

    .line 26
    return-void
.end method

.method protected abstract initPrePath(Lbtools/router/OsmPath;Lbtools/router/RoutingContext;)V
.end method
