.class public final Lbtools/codec/StatCoderContext;
.super Lbtools/util/BitCoderContext;
.source "StatCoderContext.java"


# static fields
.field private static statsPerName:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private lastbitpos:J


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "ab"    # [B

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbtools/util/BitCoderContext;-><init>([B)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbtools/codec/StatCoderContext;->lastbitpos:J

    .line 15
    return-void
.end method

.method public static getBitReport()Ljava/lang/String;
    .locals 8

    .prologue
    .line 48
    sget-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    if-nez v3, :cond_0

    .line 50
    const-string v3, "<empty bit report>"

    .line 59
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 52
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "name":Ljava/lang/String;
    sget-object v4, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 56
    .local v2, "stats":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v6, v2, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v6, v2, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "stats":[J
    :cond_1
    const/4 v3, 0x0

    sput-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public assignBits(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Lbtools/codec/StatCoderContext;->getWritingBitPosition()J

    move-result-wide v0

    .line 26
    .local v0, "bitpos":J
    sget-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    if-nez v3, :cond_0

    .line 28
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    sput-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    .line 30
    :cond_0
    sget-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    invoke-virtual {v3, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 31
    .local v2, "stats":[J
    if-nez v2, :cond_1

    .line 33
    const/4 v3, 0x2

    new-array v2, v3, [J

    .line 34
    sget-object v3, Lbtools/codec/StatCoderContext;->statsPerName:Ljava/util/TreeMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget-wide v6, p0, Lbtools/codec/StatCoderContext;->lastbitpos:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 37
    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 38
    iput-wide v0, p0, Lbtools/codec/StatCoderContext;->lastbitpos:J

    .line 39
    return-void
.end method

.method public decodeNoisyDiff(I)I
    .locals 5
    .param p1, "noisybits"    # I

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "value":I
    if-lez p1, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lbtools/codec/StatCoderContext;->decodeBits(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v4, p1, -0x1

    shl-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 130
    :cond_0
    invoke-virtual {p0}, Lbtools/codec/StatCoderContext;->decodeVarBits()I

    move-result v2

    shl-int v0, v2, p1

    .line 131
    .local v0, "val2":I
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lbtools/codec/StatCoderContext;->decodeBit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    neg-int v0, v0

    .line 138
    :cond_1
    add-int v2, v1, v0

    return v2
.end method

.method public decodeNoisyNumber(I)I
    .locals 2
    .param p1, "noisybits"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lbtools/codec/StatCoderContext;->decodeBits(I)I

    move-result v0

    .line 92
    .local v0, "value":I
    invoke-virtual {p0}, Lbtools/codec/StatCoderContext;->decodeVarBits()I

    move-result v1

    shl-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1
.end method

.method public decodePredictedValue(I)I
    .locals 3
    .param p1, "predictor"    # I

    .prologue
    .line 168
    if-gez p1, :cond_0

    neg-int v1, p1

    .line 169
    .local v1, "p":I
    :goto_0
    const/4 v0, 0x0

    .line 170
    .local v0, "noisybits":I
    :goto_1
    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "noisybits":I
    .end local v1    # "p":I
    :cond_0
    move v1, p1

    .line 168
    goto :goto_0

    .line 175
    .restart local v0    # "noisybits":I
    .restart local v1    # "p":I
    :cond_1
    invoke-virtual {p0, v0}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v2

    add-int/2addr v2, p1

    return v2
.end method

.method public decodeSortedArray([IIIII)V
    .locals 12
    .param p1, "values"    # [I
    .param p2, "offset"    # I
    .param p3, "subsize"    # I
    .param p4, "nextbit"    # I
    .param p5, "value"    # I

    .prologue
    .line 254
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 256
    :goto_0
    if-eqz p4, :cond_1

    .line 258
    invoke-virtual {p0}, Lbtools/codec/StatCoderContext;->decodeBit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    or-int p5, p5, p4

    .line 262
    :cond_0
    shr-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 264
    :cond_1
    aput p5, p1, p2

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 267
    :cond_3
    if-nez p4, :cond_5

    move v11, p3

    .end local p3    # "subsize":I
    .local v11, "subsize":I
    move v10, p2

    .line 269
    .end local p2    # "offset":I
    .local v10, "offset":I
    :goto_2
    add-int/lit8 p3, v11, -0x1

    .end local v11    # "subsize":I
    .restart local p3    # "subsize":I
    if-lez v11, :cond_4

    .line 271
    add-int/lit8 p2, v10, 0x1

    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    aput p5, p1, v10

    move v11, p3

    .end local p3    # "subsize":I
    .restart local v11    # "subsize":I
    move v10, p2

    .end local p2    # "offset":I
    .restart local v10    # "offset":I
    goto :goto_2

    .end local v11    # "subsize":I
    .restart local p3    # "subsize":I
    :cond_4
    move p2, v10

    .line 273
    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {p0, p3}, Lbtools/codec/StatCoderContext;->decodeBounded(I)I

    move-result v3

    .line 277
    .local v3, "size1":I
    sub-int v7, p3, v3

    .line 279
    .local v7, "size2":I
    if-lez v3, :cond_6

    .line 281
    shr-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lbtools/codec/StatCoderContext;->decodeSortedArray([IIIII)V

    .line 283
    :cond_6
    if-lez v7, :cond_2

    .line 285
    add-int v6, p2, v3

    shr-int/lit8 v8, p4, 0x1

    or-int v9, p5, p4

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lbtools/codec/StatCoderContext;->decodeSortedArray([IIIII)V

    goto :goto_1
.end method

.method public encodeNoisyDiff(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "noisybits"    # I

    .prologue
    const/4 v2, 0x1

    .line 103
    if-lez p2, :cond_0

    .line 105
    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    add-int/2addr p1, v1

    .line 106
    const/4 v1, -0x1

    rsub-int/lit8 v3, p2, 0x20

    ushr-int v0, v1, v3

    .line 107
    .local v0, "mask":I
    and-int v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lbtools/codec/StatCoderContext;->encodeBounded(II)V

    .line 108
    shr-int/2addr p1, p2

    .line 110
    .end local v0    # "mask":I
    :cond_0
    if-gez p1, :cond_2

    neg-int v1, p1

    :goto_0
    invoke-virtual {p0, v1}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 111
    if-eqz p1, :cond_1

    .line 113
    if-gez p1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lbtools/codec/StatCoderContext;->encodeBit(Z)V

    .line 115
    :cond_1
    return-void

    :cond_2
    move v1, p1

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public encodeNoisyNumber(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "noisybits"    # I

    .prologue
    .line 70
    if-gez p1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encodeVarBits expects positive value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    if-lez p2, :cond_1

    .line 76
    const/4 v1, -0x1

    rsub-int/lit8 v2, p2, 0x20

    ushr-int v0, v1, v2

    .line 77
    .local v0, "mask":I
    and-int v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lbtools/codec/StatCoderContext;->encodeBounded(II)V

    .line 78
    shr-int/2addr p1, p2

    .line 80
    .end local v0    # "mask":I
    :cond_1
    invoke-virtual {p0, p1}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 81
    return-void
.end method

.method public encodePredictedValue(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "predictor"    # I

    .prologue
    .line 149
    if-gez p2, :cond_0

    neg-int v1, p2

    .line 150
    .local v1, "p":I
    :goto_0
    const/4 v0, 0x0

    .line 152
    .local v0, "noisybits":I
    :goto_1
    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "noisybits":I
    .end local v1    # "p":I
    :cond_0
    move v1, p2

    .line 149
    goto :goto_0

    .line 157
    .restart local v0    # "noisybits":I
    .restart local v1    # "p":I
    :cond_1
    sub-int v2, p1, p2

    invoke-virtual {p0, v2, v0}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 158
    return-void
.end method

.method public encodeSortedArray([IIIII)V
    .locals 12
    .param p1, "values"    # [I
    .param p2, "offset"    # I
    .param p3, "subsize"    # I
    .param p4, "nextbit"    # I
    .param p5, "mask"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 200
    :goto_0
    if-eqz p4, :cond_1

    .line 202
    aget v0, p1, p2

    and-int v0, v0, p4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lbtools/codec/StatCoderContext;->encodeBit(Z)V

    .line 203
    shr-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 206
    :cond_1
    if-nez p4, :cond_3

    .line 236
    :cond_2
    :goto_2
    return-void

    .line 211
    :cond_3
    aget v0, p1, p2

    and-int v10, p5, v0

    .line 212
    .local v10, "data":I
    or-int p5, p5, p4

    .line 215
    move v6, p2

    .line 216
    .local v6, "i":I
    add-int v11, p3, p2

    .line 217
    .local v11, "end":I
    :goto_3
    if-ge v6, v11, :cond_4

    .line 219
    aget v0, p1, v6

    and-int v0, v0, p5

    if-eq v0, v10, :cond_6

    .line 224
    :cond_4
    sub-int v3, v6, p2

    .line 225
    .local v3, "size1":I
    sub-int v7, p3, v3

    .line 227
    .local v7, "size2":I
    invoke-virtual {p0, p3, v3}, Lbtools/codec/StatCoderContext;->encodeBounded(II)V

    .line 228
    if-lez v3, :cond_5

    .line 230
    shr-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lbtools/codec/StatCoderContext;->encodeSortedArray([IIIII)V

    .line 232
    :cond_5
    if-lez v7, :cond_2

    .line 234
    shr-int/lit8 v8, p4, 0x1

    move-object v4, p0

    move-object v5, p1

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lbtools/codec/StatCoderContext;->encodeSortedArray([IIIII)V

    goto :goto_2

    .line 217
    .end local v3    # "size1":I
    .end local v7    # "size2":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method
