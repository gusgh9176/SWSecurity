.class public final Lbtools/expressions/CacheNode;
.super Lbtools/util/LruMapNode;
.source "CacheNode.java"


# instance fields
.field ab:[B

.field crc:I

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
    .line 22
    move-object v0, p1

    check-cast v0, Lbtools/expressions/CacheNode;

    .line 23
    .local v0, "n":Lbtools/expressions/CacheNode;
    iget v1, p0, Lbtools/expressions/CacheNode;->crc:I

    iget v2, v0, Lbtools/expressions/CacheNode;->crc:I

    if-eq v1, v2, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1

    .line 27
    :cond_0
    iget-object v1, p0, Lbtools/expressions/CacheNode;->ab:[B

    if-nez v1, :cond_1

    .line 29
    const/4 v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lbtools/expressions/CacheNode;->ab:[B

    iget-object v2, v0, Lbtools/expressions/CacheNode;->ab:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lbtools/expressions/CacheNode;->crc:I

    return v0
.end method
