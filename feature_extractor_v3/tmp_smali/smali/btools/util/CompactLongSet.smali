.class public Lbtools/util/CompactLongSet;
.super Ljava/lang/Object;
.source "CompactLongSet.java"


# static fields
.field protected static final MAXLISTS:I = 0x1f


# instance fields
.field private _maxKeepExponent:I

.field private al:[[J

.field private pa:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lbtools/util/CompactLongSet;->size:I

    .line 13
    const/16 v0, 0xe

    iput v0, p0, Lbtools/util/CompactLongSet;->_maxKeepExponent:I

    .line 20
    new-array v0, v1, [I

    iput-object v0, p0, Lbtools/util/CompactLongSet;->pa:[I

    .line 23
    new-array v0, v1, [[J

    iput-object v0, p0, Lbtools/util/CompactLongSet;->al:[[J

    .line 24
    iget-object v0, p0, Lbtools/util/CompactLongSet;->al:[[J

    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-object v1, v0, v2

    .line 25
    return-void
.end method

.method private _add(J)V
    .locals 15
    .param p1, "id"    # J

    .prologue
    .line 58
    iget v11, p0, Lbtools/util/CompactLongSet;->size:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 60
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "cannot grow beyond size Integer.MAX_VALUE"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 64
    :cond_0
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput-wide p1, v11, v12

    .line 67
    iget v0, p0, Lbtools/util/CompactLongSet;->size:I

    add-int/lit8 v11, v0, 0x1

    iput v11, p0, Lbtools/util/CompactLongSet;->size:I

    .line 68
    .local v0, "bp":I
    const/4 v4, 0x1

    .line 69
    .local v4, "idx":I
    const/4 v9, 0x1

    .line 71
    .local v9, "n":I
    iget-object v11, p0, Lbtools/util/CompactLongSet;->pa:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 72
    iget-object v11, p0, Lbtools/util/CompactLongSet;->pa:[I

    const/4 v12, 0x1

    const/4 v13, 0x1

    aput v13, v11, v12

    move v5, v4

    .line 74
    .end local v4    # "idx":I
    .local v5, "idx":I
    :goto_0
    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 76
    shr-int/lit8 v0, v0, 0x1

    .line 77
    iget-object v11, p0, Lbtools/util/CompactLongSet;->pa:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v11, v5

    .line 78
    shl-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    goto :goto_0

    .line 82
    :cond_1
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v11, v11, v5

    if-nez v11, :cond_2

    .line 84
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    new-array v12, v9, [J

    aput-object v12, v11, v5

    .line 88
    :cond_2
    :goto_1
    if-lez v9, :cond_8

    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .local v6, "maxId":J
    const/4 v8, -0x1

    .line 93
    .local v8, "maxIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 95
    iget-object v11, p0, Lbtools/util/CompactLongSet;->pa:[I

    aget v10, v11, v1

    .line 96
    .local v10, "p":I
    if-lez v10, :cond_4

    .line 98
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v11, v11, v1

    add-int/lit8 v12, v10, -0x1

    aget-wide v2, v11, v12

    .line 99
    .local v2, "currentId":J
    if-ltz v8, :cond_3

    cmp-long v11, v2, v6

    if-lez v11, :cond_4

    .line 101
    :cond_3
    move v8, v1

    .line 102
    move-wide v6, v2

    .line 93
    .end local v2    # "currentId":J
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    .end local v10    # "p":I
    :cond_5
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v11, v11, v5

    array-length v11, v11

    if-ge v9, v11, :cond_6

    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v11, v11, v5

    aget-wide v12, v11, v9

    cmp-long v11, v6, v12

    if-nez v11, :cond_6

    .line 110
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate key found in late check: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 112
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 113
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v11, v11, v5

    aput-wide v6, v11, v9

    .line 115
    iget-object v11, p0, Lbtools/util/CompactLongSet;->pa:[I

    aget v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    aput v12, v11, v8

    goto :goto_1

    .line 119
    .end local v1    # "i":I
    .end local v5    # "idx":I
    .end local v6    # "maxId":J
    .end local v8    # "maxIdx":I
    .restart local v4    # "idx":I
    :goto_3
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    iget v11, p0, Lbtools/util/CompactLongSet;->_maxKeepExponent:I

    if-le v4, v11, :cond_7

    .line 121
    iget-object v11, p0, Lbtools/util/CompactLongSet;->al:[[J

    const/4 v12, 0x0

    aput-object v12, v11, v5

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3

    .line 123
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :cond_7
    return-void

    :cond_8
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3
.end method

.method private contains(IJ)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "id"    # J

    .prologue
    .line 154
    iget-object v4, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v0, v4, p1

    .line 155
    .local v0, "a":[J
    array-length v3, v0

    .line 156
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 158
    .local v1, "n":I
    :cond_0
    :goto_0
    shr-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 160
    add-int v2, v1, v3

    .line 161
    .local v2, "nn":I
    aget-wide v4, v0, v2

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    .line 163
    move v1, v2

    goto :goto_0

    .line 166
    .end local v2    # "nn":I
    :cond_1
    aget-wide v4, v0, v1

    cmp-long v4, v4, p2

    if-nez v4, :cond_2

    .line 168
    const/4 v4, 0x1

    .line 170
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(J)Z
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lbtools/util/CompactLongSet;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2}, Lbtools/util/CompactLongSet;->_add(J)V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 131
    iget v0, p0, Lbtools/util/CompactLongSet;->size:I

    .line 132
    .local v0, "bp":I
    const/4 v1, 0x1

    .line 134
    .local v1, "idx":I
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_0

    .line 139
    invoke-direct {p0, v1, p1, p2}, Lbtools/util/CompactLongSet;->contains(IJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :goto_1
    return v2

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 145
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fastAdd(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lbtools/util/CompactLongSet;->_add(J)V

    .line 54
    return-void
.end method

.method protected moveToFrozenArray([J)V
    .locals 13
    .param p1, "faid"    # [J

    .prologue
    .line 175
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v10, 0x1f

    if-ge v1, v10, :cond_0

    .line 177
    iget-object v10, p0, Lbtools/util/CompactLongSet;->pa:[I

    const/4 v11, 0x0

    aput v11, v10, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const/4 v9, 0x0

    .local v9, "ti":I
    :goto_1
    iget v10, p0, Lbtools/util/CompactLongSet;->size:I

    if-ge v9, v10, :cond_5

    .line 182
    iget v0, p0, Lbtools/util/CompactLongSet;->size:I

    .line 183
    .local v0, "bp":I
    const/4 v5, -0x1

    .line 184
    .local v5, "minIdx":I
    const-wide/16 v6, 0x0

    .line 185
    .local v6, "minId":J
    const/4 v4, 0x1

    .line 186
    .local v4, "idx":I
    :goto_2
    if-eqz v0, :cond_3

    .line 188
    and-int/lit8 v10, v0, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 190
    iget-object v10, p0, Lbtools/util/CompactLongSet;->pa:[I

    aget v8, v10, v4

    .line 191
    .local v8, "p":I
    iget-object v10, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v10, v10, v4

    array-length v10, v10

    if-ge v8, v10, :cond_2

    .line 193
    iget-object v10, p0, Lbtools/util/CompactLongSet;->al:[[J

    aget-object v10, v10, v4

    aget-wide v2, v10, v8

    .line 194
    .local v2, "currentId":J
    if-ltz v5, :cond_1

    cmp-long v10, v2, v6

    if-gez v10, :cond_2

    .line 196
    :cond_1
    move v5, v4

    .line 197
    move-wide v6, v2

    .line 201
    .end local v2    # "currentId":J
    .end local v8    # "p":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 202
    shr-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_3
    aput-wide v6, p1, v9

    .line 205
    iget-object v10, p0, Lbtools/util/CompactLongSet;->pa:[I

    aget v11, v10, v5

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v5

    .line 207
    if-lez v9, :cond_4

    add-int/lit8 v10, v9, -0x1

    aget-wide v10, p1, v10

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    .line 209
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "duplicate key found in late check: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "bp":I
    .end local v4    # "idx":I
    .end local v5    # "minIdx":I
    .end local v6    # "minId":J
    :cond_5
    const/4 v10, 0x0

    check-cast v10, [[J

    iput-object v10, p0, Lbtools/util/CompactLongSet;->al:[[J

    .line 215
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lbtools/util/CompactLongSet;->size:I

    return v0
.end method
