.class public Lbtools/util/FrozenLongMap;
.super Lbtools/util/CompactLongMap;
.source "FrozenLongMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lbtools/util/CompactLongMap",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private faid:[J

.field private flv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation
.end field

.field private p2size:I

.field private size:I


# direct methods
.method public constructor <init>(Lbtools/util/CompactLongMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbtools/util/CompactLongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    .local p1, "map":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    invoke-direct {p0}, Lbtools/util/CompactLongMap;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/FrozenLongMap;->size:I

    .line 22
    invoke-virtual {p1}, Lbtools/util/CompactLongMap;->size()I

    move-result v0

    iput v0, p0, Lbtools/util/FrozenLongMap;->size:I

    .line 24
    iget v0, p0, Lbtools/util/FrozenLongMap;->size:I

    new-array v0, v0, [J

    iput-object v0, p0, Lbtools/util/FrozenLongMap;->faid:[J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lbtools/util/FrozenLongMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lbtools/util/FrozenLongMap;->faid:[J

    iget-object v1, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lbtools/util/CompactLongMap;->moveToFrozenArrays([JLjava/util/ArrayList;)V

    .line 29
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lbtools/util/FrozenLongMap;->p2size:I

    .line 30
    :goto_0
    iget v0, p0, Lbtools/util/FrozenLongMap;->p2size:I

    iget v1, p0, Lbtools/util/FrozenLongMap;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lbtools/util/FrozenLongMap;->p2size:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/util/FrozenLongMap;->p2size:I

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected contains(JZ)Z
    .locals 9
    .param p1, "id"    # J
    .param p3, "doPut"    # Z

    .prologue
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    const/4 v4, 0x0

    .line 75
    iget v5, p0, Lbtools/util/FrozenLongMap;->size:I

    if-nez v5, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v4

    .line 79
    :cond_1
    iget-object v0, p0, Lbtools/util/FrozenLongMap;->faid:[J

    .line 80
    .local v0, "a":[J
    iget v3, p0, Lbtools/util/FrozenLongMap;->p2size:I

    .line 81
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 83
    .local v1, "n":I
    :goto_1
    if-lez v3, :cond_3

    .line 85
    add-int v2, v1, v3

    .line 86
    .local v2, "nn":I
    iget v5, p0, Lbtools/util/FrozenLongMap;->size:I

    if-ge v2, v5, :cond_2

    aget-wide v6, v0, v2

    cmp-long v5, v6, p1

    if-gtz v5, :cond_2

    .line 88
    move v1, v2

    .line 90
    :cond_2
    shr-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_1

    .line 92
    .end local v2    # "nn":I
    :cond_3
    aget-wide v6, v0, v1

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 94
    iget-object v4, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lbtools/util/FrozenLongMap;->value_out:Ljava/lang/Object;

    .line 95
    if-eqz p3, :cond_4

    .line 97
    iget-object v4, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    iget-object v5, p0, Lbtools/util/FrozenLongMap;->value_in:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public fastPut(JLjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot put on FrozenLongIntMap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 9
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    const/4 v4, 0x0

    .line 110
    iget v5, p0, Lbtools/util/FrozenLongMap;->size:I

    if-nez v5, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v4

    .line 114
    :cond_1
    iget-object v0, p0, Lbtools/util/FrozenLongMap;->faid:[J

    .line 115
    .local v0, "a":[J
    iget v3, p0, Lbtools/util/FrozenLongMap;->p2size:I

    .line 116
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 118
    .local v1, "n":I
    :goto_1
    if-lez v3, :cond_3

    .line 120
    add-int v2, v1, v3

    .line 121
    .local v2, "nn":I
    iget v5, p0, Lbtools/util/FrozenLongMap;->size:I

    if-ge v2, v5, :cond_2

    aget-wide v6, v0, v2

    cmp-long v5, v6, p1

    if-gtz v5, :cond_2

    .line 123
    move v1, v2

    .line 125
    :cond_2
    shr-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_1

    .line 127
    .end local v2    # "nn":I
    :cond_3
    aget-wide v6, v0, v1

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 129
    iget-object v4, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getKeyArray()[J
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    iget-object v0, p0, Lbtools/util/FrozenLongMap;->faid:[J

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    iget-object v0, p0, Lbtools/util/FrozenLongMap;->flv:Ljava/util/ArrayList;

    return-object v0
.end method

.method public put(JLjava/lang/Object;)Z
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    :try_start_0
    iput-object p3, p0, Lbtools/util/FrozenLongMap;->value_in:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lbtools/util/FrozenLongMap;->contains(JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object v2, p0, Lbtools/util/FrozenLongMap;->value_in:Ljava/lang/Object;

    .line 48
    iput-object v2, p0, Lbtools/util/FrozenLongMap;->value_out:Ljava/lang/Object;

    .line 41
    return v1

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot only put on existing key in FrozenLongIntMap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lbtools/util/FrozenLongMap;->value_in:Ljava/lang/Object;

    .line 48
    iput-object v2, p0, Lbtools/util/FrozenLongMap;->value_out:Ljava/lang/Object;

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lbtools/util/FrozenLongMap;, "Lbtools/util/FrozenLongMap<TV;>;"
    iget v0, p0, Lbtools/util/FrozenLongMap;->size:I

    return v0
.end method
