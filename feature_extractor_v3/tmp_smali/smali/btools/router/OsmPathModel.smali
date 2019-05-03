.class abstract Lbtools/router/OsmPathModel;
.super Ljava/lang/Object;
.source "OsmPathModel.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createPath()Lbtools/router/OsmPath;
.end method

.method public abstract createPrePath()Lbtools/router/OsmPrePath;
.end method

.method public abstract init(Lbtools/expressions/BExpressionContextWay;Lbtools/expressions/BExpressionContextNode;)V
.end method
