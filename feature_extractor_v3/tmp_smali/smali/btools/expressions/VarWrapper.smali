.class public final Lbtools/expressions/VarWrapper;
.super Lbtools/util/LruMapNode;
.source "VarWrapper.java"


# instance fields
.field hash:I

.field vars:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lbtools/util/LruMapNode;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    move-object v0, p1

    check-cast v0, Lbtools/expressions/VarWrapper;

    .line 22
    .local v0, "n":Lbtools/expressions/VarWrapper;
    iget v1, p0, Lbtools/expressions/VarWrapper;->hash:I

    iget v2, v0, Lbtools/expressions/VarWrapper;->hash:I

    if-eq v1, v2, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lbtools/expressions/VarWrapper;->vars:[F

    iget-object v2, v0, Lbtools/expressions/VarWrapper;->vars:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lbtools/expressions/VarWrapper;->hash:I

    return v0
.end method
