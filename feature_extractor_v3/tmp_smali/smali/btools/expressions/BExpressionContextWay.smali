.class public final Lbtools/expressions/BExpressionContextWay;
.super Lbtools/expressions/BExpressionContext;
.source "BExpressionContextWay.java"

# interfaces
.implements Lbtools/codec/TagValueValidator;


# static fields
.field private static buildInVariables:[Ljava/lang/String;


# instance fields
.field private decodeForbidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "costfactor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "turncost"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uphillcostfactor"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "downhillcostfactor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "initialcost"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nodeaccessgranted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "initialclassifier"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "trafficsourcedensity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "istrafficbackbone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "priorityclassifier"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "classifiermask"

    aput-object v2, v0, v1

    sput-object v0, Lbtools/expressions/BExpressionContextWay;->buildInVariables:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILbtools/expressions/BExpressionMetaData;)V
    .locals 1
    .param p1, "hashSize"    # I
    .param p2, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    .line 47
    const-string v0, "way"

    invoke-direct {p0, v0, p1, p2}, Lbtools/expressions/BExpressionContext;-><init>(Ljava/lang/String;ILbtools/expressions/BExpressionMetaData;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/expressions/BExpressionContextWay;->decodeForbidden:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lbtools/expressions/BExpressionMetaData;)V
    .locals 1
    .param p1, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    .line 37
    const-string v0, "way"

    invoke-direct {p0, v0, p1}, Lbtools/expressions/BExpressionContext;-><init>(Ljava/lang/String;Lbtools/expressions/BExpressionMetaData;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/expressions/BExpressionContextWay;->decodeForbidden:Z

    .line 38
    return-void
.end method


# virtual methods
.method public accessType([B)I
    .locals 5
    .param p1, "description"    # [B

    .prologue
    const v4, 0x461c3c00    # 9999.0f

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, v2, p1}, Lbtools/expressions/BExpressionContextWay;->evaluate(Z[B)V

    .line 54
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContextWay;->getCostfactor()F

    move-result v0

    .line 55
    .local v0, "minCostFactor":F
    cmpl-float v3, v0, v4

    if-ltz v3, :cond_0

    .line 57
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContextWay;->setInverseVars()V

    .line 58
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContextWay;->getCostfactor()F

    move-result v1

    .line 59
    .local v1, "reverseCostFactor":F
    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    .line 61
    move v0, v1

    .line 64
    .end local v1    # "reverseCostFactor":F
    :cond_0
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    const/4 v2, 0x2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-boolean v3, p0, Lbtools/expressions/BExpressionContextWay;->decodeForbidden:Z

    if-eqz v3, :cond_1

    const v3, 0x461c4000    # 10000.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected getBuildInVariableNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lbtools/expressions/BExpressionContextWay;->buildInVariables:[Ljava/lang/String;

    return-object v0
.end method

.method public getClassifierMask()F
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getCostfactor()F
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getDownhillCostfactor()F
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getInitialClassifier()F
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getInitialcost()F
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getIsTrafficBackbone()F
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getNodeAccessGranted()F
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getPriorityClassifier()F
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getTrafficSourceDensity()F
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getTurncost()F
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getUphillCostfactor()F
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextWay;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public setDecodeForbidden(Z)V
    .locals 0
    .param p1, "decodeForbidden"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lbtools/expressions/BExpressionContextWay;->decodeForbidden:Z

    .line 71
    return-void
.end method
