.class public Lbtools/util/TinyDenseLongMap;
.super Lbtools/util/DenseLongMap;
.source "TinyDenseLongMap.java"


# static fields
.field protected static final MAXLISTS:I = 0x1f


# instance fields
.field private _maxKeepExponent:I

.field private al:[[J

.field private pa:[I

.field private size:I

.field private vla:[[B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lbtools/util/DenseLongMap;-><init>()V

    .line 16
    iput v2, p0, Lbtools/util/TinyDenseLongMap;->size:I

    .line 17
    const/16 v0, 0xe

    iput v0, p0, Lbtools/util/TinyDenseLongMap;->_maxKeepExponent:I

    .line 26
    new-array v0, v3, [I

    iput-object v0, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    .line 29
    new-array v0, v3, [[J

    iput-object v0, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    .line 30
    iget-object v0, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    new-array v1, v4, [J

    aput-object v1, v0, v2

    .line 33
    new-array v0, v3, [[B

    iput-object v0, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    .line 34
    iget-object v0, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    new-array v1, v4, [B

    aput-object v1, v0, v2

    .line 35
    return-void
.end method

.method private _add(J)Z
    .locals 15
    .param p1, "id"    # J

    .prologue
    .line 84
    iget v11, p0, Lbtools/util/TinyDenseLongMap;->size:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 86
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "cannot grow beyond size Integer.MAX_VALUE"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 90
    :cond_0
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput-wide p1, v11, v12

    .line 93
    iget v0, p0, Lbtools/util/TinyDenseLongMap;->size:I

    add-int/lit8 v11, v0, 0x1

    iput v11, p0, Lbtools/util/TinyDenseLongMap;->size:I

    .line 94
    .local v0, "bp":I
    const/4 v4, 0x1

    .line 95
    .local v4, "idx":I
    const/4 v9, 0x1

    .line 97
    .local v9, "n":I
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 98
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    const/4 v12, 0x1

    const/4 v13, 0x1

    aput v13, v11, v12

    move v5, v4

    .line 100
    .end local v4    # "idx":I
    .local v5, "idx":I
    :goto_0
    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 102
    shr-int/lit8 v0, v0, 0x1

    .line 103
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v11, v5

    .line 104
    shl-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    goto :goto_0

    .line 108
    :cond_1
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v11, v11, v5

    if-nez v11, :cond_2

    .line 110
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    new-array v12, v9, [J

    aput-object v12, v11, v5

    .line 111
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    new-array v12, v9, [B

    aput-object v12, v11, v5

    .line 115
    :cond_2
    :goto_1
    if-lez v9, :cond_8

    .line 117
    const-wide/16 v6, 0x0

    .line 118
    .local v6, "maxId":J
    const/4 v8, -0x1

    .line 120
    .local v8, "maxIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 122
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    aget v10, v11, v1

    .line 123
    .local v10, "p":I
    if-lez v10, :cond_4

    .line 125
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v11, v11, v1

    add-int/lit8 v12, v10, -0x1

    aget-wide v2, v11, v12

    .line 126
    .local v2, "currentId":J
    if-ltz v8, :cond_3

    cmp-long v11, v2, v6

    if-lez v11, :cond_4

    .line 128
    :cond_3
    move v8, v1

    .line 129
    move-wide v6, v2

    .line 120
    .end local v2    # "currentId":J
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    .end local v10    # "p":I
    :cond_5
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v11, v11, v5

    array-length v11, v11

    if-ge v9, v11, :cond_6

    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v11, v11, v5

    aget-wide v12, v11, v9

    cmp-long v11, v6, v12

    if-nez v11, :cond_6

    .line 137
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

    .line 139
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 140
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v11, v11, v5

    aput-wide v6, v11, v9

    .line 141
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    aget-object v11, v11, v5

    iget-object v12, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    aget-object v12, v12, v8

    iget-object v13, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    aget v13, v13, v8

    add-int/lit8 v13, v13, -0x1

    aget-byte v12, v12, v13

    aput-byte v12, v11, v9

    .line 143
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->pa:[I

    aget v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    aput v12, v11, v8

    goto :goto_1

    .line 147
    .end local v1    # "i":I
    .end local v5    # "idx":I
    .end local v6    # "maxId":J
    .end local v8    # "maxIdx":I
    .restart local v4    # "idx":I
    :goto_3
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    iget v11, p0, Lbtools/util/TinyDenseLongMap;->_maxKeepExponent:I

    if-le v4, v11, :cond_7

    .line 149
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    const/4 v12, 0x0

    aput-object v12, v11, v5

    .line 150
    iget-object v11, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    const/4 v12, 0x0

    aput-object v12, v11, v5

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3

    .line 153
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :cond_7
    const/4 v11, 0x0

    return v11

    :cond_8
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3
.end method

.method private contains(IJ[B)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "id"    # J
    .param p4, "rv"    # [B

    .prologue
    .line 183
    iget-object v4, p0, Lbtools/util/TinyDenseLongMap;->al:[[J

    aget-object v0, v4, p1

    .line 184
    .local v0, "a":[J
    array-length v3, v0

    .line 185
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 187
    .local v1, "n":I
    :cond_0
    :goto_0
    shr-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 189
    add-int v2, v1, v3

    .line 190
    .local v2, "nn":I
    aget-wide v4, v0, v2

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    .line 192
    move v1, v2

    goto :goto_0

    .line 195
    .end local v2    # "nn":I
    :cond_1
    aget-wide v4, v0, v1

    cmp-long v4, v4, p2

    if-nez v4, :cond_3

    .line 197
    if-eqz p4, :cond_2

    .line 199
    invoke-direct {p0, p4, p1, v1}, Lbtools/util/TinyDenseLongMap;->fillReturnValue([BII)V

    .line 201
    :cond_2
    const/4 v4, 0x1

    .line 203
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private contains(J[B)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "rv"    # [B

    .prologue
    const/4 v2, 0x1

    .line 160
    iget v0, p0, Lbtools/util/TinyDenseLongMap;->size:I

    .line 161
    .local v0, "bp":I
    const/4 v1, 0x1

    .line 163
    .local v1, "idx":I
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_0

    .line 168
    invoke-direct {p0, v1, p1, p2, p3}, Lbtools/util/TinyDenseLongMap;->contains(IJ[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :goto_1
    return v2

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 174
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private fillReturnValue([BII)V
    .locals 2
    .param p1, "rv"    # [B
    .param p2, "idx"    # I
    .param p3, "p"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    iget-object v1, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    aget-object v1, v1, p2

    aget-byte v1, v1, p3

    aput-byte v1, p1, v0

    .line 43
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    aget-object v0, v0, p2

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, v0, p3

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getInt(J)I
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 73
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 74
    .local v0, "rv":[B
    invoke-direct {p0, p1, p2, v0}, Lbtools/util/TinyDenseLongMap;->contains(J[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public put(JI)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 53
    .local v0, "rv":[B
    const/4 v1, 0x1

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lbtools/util/TinyDenseLongMap;->contains(J[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lbtools/util/TinyDenseLongMap;->vla:[[B

    aget-object v1, v1, v3

    int-to-byte v2, p3

    aput-byte v2, v1, v3

    .line 60
    invoke-direct {p0, p1, p2}, Lbtools/util/TinyDenseLongMap;->_add(J)Z

    goto :goto_0
.end method
