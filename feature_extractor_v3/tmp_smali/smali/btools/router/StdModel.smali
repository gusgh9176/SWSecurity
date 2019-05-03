.class final Lbtools/router/StdModel;
.super Lbtools/router/OsmPathModel;
.source "StdModel.java"


# instance fields
.field protected ctxNode:Lbtools/expressions/BExpressionContextNode;

.field protected ctxWay:Lbtools/expressions/BExpressionContextWay;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lbtools/router/OsmPathModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createPath()Lbtools/router/OsmPath;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lbtools/router/StdPath;

    invoke-direct {v0}, Lbtools/router/StdPath;-><init>()V

    return-object v0
.end method

.method public createPrePath()Lbtools/router/OsmPrePath;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lbtools/expressions/BExpressionContextWay;Lbtools/expressions/BExpressionContextNode;)V
    .locals 1
    .param p1, "expctxWay"    # Lbtools/expressions/BExpressionContextWay;
    .param p2, "expctxNode"    # Lbtools/expressions/BExpressionContextNode;

    .prologue
    .line 32
    iput-object p1, p0, Lbtools/router/StdModel;->ctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 33
    iput-object p2, p0, Lbtools/router/StdModel;->ctxNode:Lbtools/expressions/BExpressionContextNode;

    .line 35
    move-object v0, p1

    .line 37
    .local v0, "expctxGlobal":Lbtools/expressions/BExpressionContext;
    return-void
.end method
