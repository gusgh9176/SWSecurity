.class public Lbtools/util/FrozenLongSet;
.super Lbtools/util/CompactLongSet;
.source "FrozenLongSet.java"


# instance fields
.field private faid:[J

.field private p2size:I

.field private size:I


# direct methods
.method public constructor <init>(Lbtools/util/CompactLongSet;)V
    .locals 2
    .param p1, "set"    # Lbtools/util/CompactLongSet;

    .prologue
    .line 17
    invoke-direct {p0}, Lbtools/util/CompactLongSet;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/FrozenLongSet;->size:I

    .line 18
    invoke-virtual {p1}, Lbtools/util/CompactLongSet;->size()I

    move-result v0

    iput v0, p0, Lbtools/util/FrozenLongSet;->size:I

    .line 20
    iget v0, p0, Lbtools/util/FrozenLongSet;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lbtools/util/FrozenLongSet;->faid:[J

    .line 22
    iget-object v0, p0, Lbtools/util/FrozenLongSet;->faid:[J

    invoke-virtual {p1, v0}, Lbtools/util/CompactLongSet;->moveToFrozenArray([J)V

    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lbtools/util/FrozenLongSet;->p2size:I

    .line 25
    :goto_0
    iget v0, p0, Lbtools/util/FrozenLongSet;->p2size:I

    iget v1, p0, Lbtools/util/FrozenLongSet;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lbtools/util/FrozenLongSet;->p2size:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/util/FrozenLongSet;->p2size:I

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public add(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot add on FrozenLongSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(J)Z
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 57
    iget v5, p0, Lbtools/util/FrozenLongSet;->size:I

    if-nez v5, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v4

    .line 61
    :cond_1
    iget-object v0, p0, Lbtools/util/FrozenLongSet;->faid:[J

    .line 62
    .local v0, "a":[J
    iget v3, p0, Lbtools/util/FrozenLongSet;->p2size:I

    .line 63
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 65
    .local v1, "n":I
    :goto_1
    if-lez v3, :cond_3

    .line 67
    add-int v2, v1, v3

    .line 68
    .local v2, "nn":I
    iget v5, p0, Lbtools/util/FrozenLongSet;->size:I

    if-ge v2, v5, :cond_2

    aget-wide v6, v0, v2

    cmp-long v5, v6, p1

    if-gtz v5, :cond_2

    .line 70
    move v1, v2

    .line 72
    :cond_2
    shr-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 74
    .end local v2    # "nn":I
    :cond_3
    aget-wide v6, v0, v1

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 76
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public fastAdd(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot add on FrozenLongSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lbtools/util/FrozenLongSet;->size:I

    return v0
.end method
