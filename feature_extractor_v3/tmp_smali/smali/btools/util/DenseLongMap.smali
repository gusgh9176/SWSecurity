.class public Lbtools/util/DenseLongMap;
.super Ljava/lang/Object;
.source "DenseLongMap.java"


# instance fields
.field private bitplaneCount:[I

.field private blocklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private blocksize:I

.field private blocksizeBits:I

.field private blocksizeBitsMask:J

.field private getCount:J

.field private maxvalue:I

.field private putCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lbtools/util/DenseLongMap;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "blocksize"    # I

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/16 v3, 0x1c

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    .line 25
    const/16 v1, 0xfe

    iput v1, p0, Lbtools/util/DenseLongMap;->maxvalue:I

    .line 26
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lbtools/util/DenseLongMap;->bitplaneCount:[I

    .line 27
    iput-wide v4, p0, Lbtools/util/DenseLongMap;->putCount:J

    .line 28
    iput-wide v4, p0, Lbtools/util/DenseLongMap;->getCount:J

    .line 49
    const/4 v0, 0x4

    .line 50
    .local v0, "bits":I
    :goto_0
    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-eq v1, p1, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    if-ne v0, v3, :cond_1

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid blocksize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( expected 1 << bits with bits in (4..27) )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lbtools/util/DenseLongMap;->blocksizeBits:I

    .line 59
    iget v1, p0, Lbtools/util/DenseLongMap;->blocksizeBits:I

    shl-long v2, v6, v1

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lbtools/util/DenseLongMap;->blocksizeBitsMask:J

    .line 60
    iput p1, p0, Lbtools/util/DenseLongMap;->blocksize:I

    .line 61
    return-void
.end method

.method private expandBlock([BI)[B
    .locals 5
    .param p1, "block"    # [B
    .param p2, "valuebits"    # I

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lbtools/util/DenseLongMap;->bitplaneCount:[I

    aget v3, v2, p2

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p2

    .line 156
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2}, Lbtools/util/DenseLongMap;->sizeForBits(I)I

    move-result v2

    new-array v1, v2, [B

    .line 157
    .local v1, "newblock":[B
    const/4 v2, 0x1

    shl-int v0, v2, p2

    .line 158
    .local v0, "headersize":I
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    mul-int/lit8 v2, v0, 0x2

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    return-object v1
.end method

.method private sizeForBits(I)I
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 150
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lbtools/util/DenseLongMap;->blocksize:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInt(J)I
    .locals 15
    .param p1, "key"    # J

    .prologue
    .line 166
    iget-wide v10, p0, Lbtools/util/DenseLongMap;->getCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iput-wide v12, p0, Lbtools/util/DenseLongMap;->getCount:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 168
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "**** DenseLongMap stats ****"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "putCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lbtools/util/DenseLongMap;->putCount:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v5, v10, :cond_0

    .line 172
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-bitplanes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lbtools/util/DenseLongMap;->bitplaneCount:[I

    aget v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    :cond_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "****************************"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    .end local v5    # "i":I
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    .line 196
    const/4 v10, -0x1

    .line 232
    :goto_1
    return v10

    .line 198
    :cond_2
    iget v10, p0, Lbtools/util/DenseLongMap;->blocksizeBits:I

    shr-long v10, p1, v10

    long-to-int v3, v10

    .line 199
    .local v3, "blockn":I
    iget-wide v10, p0, Lbtools/util/DenseLongMap;->blocksizeBitsMask:J

    and-long v10, v10, p1

    long-to-int v7, v10

    .line 201
    .local v7, "offset":I
    iget-object v10, p0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    iget-object v10, p0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v1, v10

    .line 203
    .local v1, "block":[B
    :goto_2
    if-nez v1, :cond_4

    .line 205
    const/4 v10, -0x1

    goto :goto_1

    .line 201
    .end local v1    # "block":[B
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 209
    .restart local v1    # "block":[B
    :cond_4
    const/4 v9, 0x1

    .line 210
    .local v9, "valuebits":I
    :goto_3
    invoke-direct {p0, v9}, Lbtools/util/DenseLongMap;->sizeForBits(I)I

    move-result v10

    array-length v11, v1

    if-ge v10, v11, :cond_5

    .line 212
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 214
    :cond_5
    const/4 v10, 0x1

    shl-int v4, v10, v9

    .line 216
    .local v4, "headersize":I
    const/4 v10, 0x1

    and-int/lit8 v11, v7, 0x7

    shl-int v0, v10, v11

    .line 217
    .local v0, "bitmask":I
    const/4 v8, 0x1

    .line 218
    .local v8, "probebit":I
    shr-int/lit8 v10, v7, 0x3

    add-int v2, v10, v4

    .line 219
    .local v2, "blockidx":I
    const/4 v6, 0x0

    .line 221
    .local v6, "idx":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_7

    .line 223
    aget-byte v10, v1, v2

    and-int/2addr v10, v0

    if-eqz v10, :cond_6

    .line 225
    or-int/2addr v6, v8

    .line 227
    :cond_6
    shl-int/lit8 v8, v8, 0x1

    .line 228
    iget v10, p0, Lbtools/util/DenseLongMap;->blocksize:I

    add-int/2addr v2, v10

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 232
    :cond_7
    aget-byte v10, v1, v6

    add-int/lit16 v10, v10, 0x100

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v10, v10, -0x1

    goto :goto_1
.end method

.method public put(JI)V
    .locals 19
    .param p1, "key"    # J
    .param p3, "value"    # I

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/util/DenseLongMap;->putCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lbtools/util/DenseLongMap;->putCount:J

    .line 69
    if-ltz p3, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lbtools/util/DenseLongMap;->maxvalue:I

    move/from16 v0, p3

    if-le v0, v14, :cond_1

    .line 71
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "value out of range (0.."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/DenseLongMap;->maxvalue:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lbtools/util/DenseLongMap;->blocksizeBits:I

    shr-long v14, p1, v14

    long-to-int v5, v14

    .line 75
    .local v5, "blockn":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lbtools/util/DenseLongMap;->blocksizeBitsMask:J

    and-long v14, v14, p1

    long-to-int v10, v14

    .line 77
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move-object v3, v14

    .line 79
    .local v3, "block":[B
    :goto_0
    const/4 v13, 0x1

    .line 80
    .local v13, "valuebits":I
    if-nez v3, :cond_8

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lbtools/util/DenseLongMap;->sizeForBits(I)I

    move-result v14

    new-array v3, v14, [B

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->bitplaneCount:[I

    const/4 v15, 0x0

    aget v16, v14, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 85
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v15, v5, 0x1

    if-ge v14, v15, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v3    # "block":[B
    .end local v13    # "valuebits":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    .restart local v3    # "block":[B
    .restart local v13    # "valuebits":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    const/4 v14, 0x1

    shl-int v6, v14, v13

    .line 101
    .local v6, "headersize":I
    add-int/lit8 v14, p3, 0x1

    int-to-byte v12, v14

    .line 104
    .local v12, "v":B
    const/4 v8, 0x1

    .line 105
    .local v8, "idx":I
    :goto_2
    if-ge v8, v6, :cond_6

    .line 107
    aget-byte v14, v3, v8

    if-nez v14, :cond_5

    .line 109
    aput-byte v12, v3, v8

    .line 111
    :cond_5
    aget-byte v14, v3, v8

    if-ne v14, v12, :cond_9

    .line 117
    :cond_6
    if-ne v8, v6, :cond_7

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lbtools/util/DenseLongMap;->expandBlock([BI)[B

    move-result-object v3

    .line 120
    aput-byte v12, v3, v8

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/util/DenseLongMap;->blocklist:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v13, v13, 0x1

    .line 123
    const/4 v14, 0x1

    shl-int v6, v14, v13

    .line 126
    :cond_7
    const/4 v14, 0x1

    and-int/lit8 v15, v10, 0x7

    shl-int v2, v14, v15

    .line 127
    .local v2, "bitmask":I
    xor-int/lit16 v9, v2, 0xff

    .line 128
    .local v9, "invmask":I
    const/4 v11, 0x1

    .line 129
    .local v11, "probebit":I
    shr-int/lit8 v14, v10, 0x3

    add-int v4, v14, v6

    .line 131
    .local v4, "blockidx":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v13, :cond_b

    .line 133
    and-int v14, v8, v11

    if-eqz v14, :cond_a

    .line 135
    aget-byte v14, v3, v4

    or-int/2addr v14, v2

    int-to-byte v14, v14

    aput-byte v14, v3, v4

    .line 141
    :goto_4
    shl-int/lit8 v11, v11, 0x1

    .line 142
    move-object/from16 v0, p0

    iget v14, v0, Lbtools/util/DenseLongMap;->blocksize:I

    add-int/2addr v4, v14

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 94
    .end local v2    # "bitmask":I
    .end local v4    # "blockidx":I
    .end local v6    # "headersize":I
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v9    # "invmask":I
    .end local v11    # "probebit":I
    .end local v12    # "v":B
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lbtools/util/DenseLongMap;->sizeForBits(I)I

    move-result v14

    array-length v15, v3

    if-ge v14, v15, :cond_4

    .line 96
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 115
    .restart local v6    # "headersize":I
    .restart local v8    # "idx":I
    .restart local v12    # "v":B
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 139
    .restart local v2    # "bitmask":I
    .restart local v4    # "blockidx":I
    .restart local v7    # "i":I
    .restart local v9    # "invmask":I
    .restart local v11    # "probebit":I
    :cond_a
    aget-byte v14, v3, v4

    and-int/2addr v14, v9

    int-to-byte v14, v14

    aput-byte v14, v3, v4

    goto :goto_4

    .line 144
    :cond_b
    return-void
.end method
