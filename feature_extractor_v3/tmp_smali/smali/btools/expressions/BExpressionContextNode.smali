.class public final Lbtools/expressions/BExpressionContextNode;
.super Lbtools/expressions/BExpressionContext;
.source "BExpressionContextNode.java"


# static fields
.field private static buildInVariables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "initialcost"

    aput-object v2, v0, v1

    sput-object v0, Lbtools/expressions/BExpressionContextNode;->buildInVariables:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILbtools/expressions/BExpressionMetaData;)V
    .locals 1
    .param p1, "hashSize"    # I
    .param p2, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    .line 36
    const-string v0, "node"

    invoke-direct {p0, v0, p1, p2}, Lbtools/expressions/BExpressionContext;-><init>(Ljava/lang/String;ILbtools/expressions/BExpressionMetaData;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lbtools/expressions/BExpressionMetaData;)V
    .locals 1
    .param p1, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    .line 26
    const-string v0, "node"

    invoke-direct {p0, v0, p1}, Lbtools/expressions/BExpressionContext;-><init>(Ljava/lang/String;Lbtools/expressions/BExpressionMetaData;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getBuildInVariableNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbtools/expressions/BExpressionContextNode;->buildInVariables:[Ljava/lang/String;

    return-object v0
.end method

.method public getInitialcost()F
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContextNode;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method
