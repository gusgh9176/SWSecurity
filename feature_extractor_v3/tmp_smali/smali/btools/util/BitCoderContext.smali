.class public Lbtools/util/BitCoderContext;
.super Ljava/lang/Object;
.source "BitCoderContext.java"


# instance fields
.field private ab:[B

.field private b:I

.field private bits:I

.field private bm:I

.field private idx:I

.field private idxMax:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "ab"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->idx:I

    .line 9
    const/16 v0, 0x100

    iput v0, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 15
    iput-object p1, p0, Lbtools/util/BitCoderContext;->ab:[B

    .line 16
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->idxMax:I

    .line 17
    return-void
.end method

.method private fillBuffer()V
    .locals 3

    .prologue
    .line 177
    :goto_0
    iget v0, p0, Lbtools/util/BitCoderContext;->bits:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 179
    iget v0, p0, Lbtools/util/BitCoderContext;->idx:I

    iget v1, p0, Lbtools/util/BitCoderContext;->idxMax:I

    if-ge v0, v1, :cond_0

    .line 181
    iget v0, p0, Lbtools/util/BitCoderContext;->b:I

    iget-object v1, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v2, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lbtools/util/BitCoderContext;->bits:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lbtools/util/BitCoderContext;->b:I

    .line 183
    :cond_0
    iget v0, p0, Lbtools/util/BitCoderContext;->bits:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lbtools/util/BitCoderContext;->bits:I

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method


# virtual methods
.method public final copyBitsTo([BI)V
    .locals 7
    .param p1, "dst"    # [B
    .param p2, "bitcount"    # I

    .prologue
    const/16 v6, 0x8

    .line 225
    const/4 v0, 0x0

    .local v0, "dstIdx":I
    move v1, v0

    .line 228
    .end local v0    # "dstIdx":I
    .local v1, "dstIdx":I
    :goto_0
    if-le p2, v6, :cond_1

    .line 230
    iget v3, p0, Lbtools/util/BitCoderContext;->bits:I

    if-ge v3, v6, :cond_0

    .line 232
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    iget-object v4, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v5, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lbtools/util/BitCoderContext;->bits:I

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lbtools/util/BitCoderContext;->b:I

    .line 238
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "dstIdx":I
    .restart local v0    # "dstIdx":I
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 239
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/lit8 v3, v3, 0x8

    iput v3, p0, Lbtools/util/BitCoderContext;->b:I

    .line 240
    add-int/lit8 p2, p2, -0x8

    move v1, v0

    .end local v0    # "dstIdx":I
    .restart local v1    # "dstIdx":I
    goto :goto_0

    .line 236
    :cond_0
    iget v3, p0, Lbtools/util/BitCoderContext;->bits:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lbtools/util/BitCoderContext;->bits:I

    goto :goto_1

    .line 244
    :cond_1
    iget v3, p0, Lbtools/util/BitCoderContext;->bits:I

    if-ge v3, p2, :cond_2

    .line 246
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    iget-object v4, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v5, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lbtools/util/BitCoderContext;->bits:I

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lbtools/util/BitCoderContext;->b:I

    .line 247
    iget v3, p0, Lbtools/util/BitCoderContext;->bits:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 250
    :cond_2
    const/16 v3, 0xff

    rsub-int/lit8 v4, p2, 0x8

    ushr-int v2, v3, v4

    .line 251
    .local v2, "mask":I
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    and-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 252
    iget v3, p0, Lbtools/util/BitCoderContext;->bits:I

    sub-int/2addr v3, p2

    iput v3, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 253
    iget v3, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/2addr v3, p2

    iput v3, p0, Lbtools/util/BitCoderContext;->b:I

    .line 257
    return-void
.end method

.method public final decodeBit()Z
    .locals 3

    .prologue
    .line 100
    iget v1, p0, Lbtools/util/BitCoderContext;->bits:I

    if-nez v1, :cond_0

    .line 102
    const/16 v1, 0x8

    iput v1, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 103
    iget-object v1, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v2, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lbtools/util/BitCoderContext;->b:I

    .line 105
    :cond_0
    iget v1, p0, Lbtools/util/BitCoderContext;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 106
    .local v0, "value":Z
    :goto_0
    iget v1, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/BitCoderContext;->b:I

    .line 107
    iget v1, p0, Lbtools/util/BitCoderContext;->bits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 108
    return v0

    .line 105
    .end local v0    # "value":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final decodeBits(I)I
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 167
    :cond_0
    invoke-direct {p0}, Lbtools/util/BitCoderContext;->fillBuffer()V

    .line 168
    const/4 v2, -0x1

    rsub-int/lit8 v3, p1, 0x20

    ushr-int v0, v2, v3

    .line 169
    .local v0, "mask":I
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    and-int v1, v2, v0

    .line 170
    .local v1, "value":I
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/2addr v2, p1

    iput v2, p0, Lbtools/util/BitCoderContext;->b:I

    .line 171
    iget v2, p0, Lbtools/util/BitCoderContext;->bits:I

    sub-int/2addr v2, p1

    iput v2, p0, Lbtools/util/BitCoderContext;->bits:I

    goto :goto_0
.end method

.method public final decodeBounded(I)I
    .locals 4
    .param p1, "max"    # I

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "value":I
    const/4 v0, 0x1

    .line 145
    .local v0, "im":I
    :goto_0
    or-int v2, v1, v0

    if-gt v2, p1, :cond_2

    .line 147
    iget v2, p0, Lbtools/util/BitCoderContext;->bits:I

    if-nez v2, :cond_0

    .line 149
    const/16 v2, 0x8

    iput v2, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 150
    iget-object v2, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v3, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lbtools/util/BitCoderContext;->b:I

    .line 152
    :cond_0
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 153
    or-int/2addr v1, v0

    .line 154
    :cond_1
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/BitCoderContext;->b:I

    .line 155
    iget v2, p0, Lbtools/util/BitCoderContext;->bits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 156
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    return v1
.end method

.method public final decodeVarBits()I
    .locals 4

    .prologue
    .line 72
    const/4 v1, 0x1

    .line 73
    .local v1, "range":I
    const/4 v0, 0x1

    .line 74
    .local v0, "cnt":I
    invoke-direct {p0}, Lbtools/util/BitCoderContext;->fillBuffer()V

    .line 75
    :goto_0
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 77
    shl-int/lit8 v2, v1, 0x1

    or-int/lit8 v1, v2, 0x1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget v2, p0, Lbtools/util/BitCoderContext;->b:I

    ushr-int/2addr v2, v0

    iput v2, p0, Lbtools/util/BitCoderContext;->b:I

    .line 81
    iget v2, p0, Lbtools/util/BitCoderContext;->bits:I

    sub-int/2addr v2, v0

    iput v2, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 82
    ushr-int/lit8 v3, v1, 0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lbtools/util/BitCoderContext;->decodeBits(I)I

    move-result v2

    :goto_1
    add-int/2addr v2, v3

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final decodeVarBits2()I
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "range":I
    :goto_0
    invoke-virtual {p0}, Lbtools/util/BitCoderContext;->decodeBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lbtools/util/BitCoderContext;->decodeBounded(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final encodeBit(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 88
    iget v0, p0, Lbtools/util/BitCoderContext;->bm:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 91
    iget-object v0, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v1, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/BitCoderContext;->idx:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v1, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v2, v0, v1

    iget v3, p0, Lbtools/util/BitCoderContext;->bm:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    :cond_1
    iget v0, p0, Lbtools/util/BitCoderContext;->bm:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 96
    return-void
.end method

.method public final encodeBounded(II)V
    .locals 5
    .param p1, "max"    # I
    .param p2, "value"    # I

    .prologue
    .line 119
    const/4 v0, 0x1

    .line 120
    .local v0, "im":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 122
    iget v1, p0, Lbtools/util/BitCoderContext;->bm:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 125
    iget-object v1, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v2, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/BitCoderContext;->idx:I

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 127
    :cond_0
    and-int v1, p2, v0

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v2, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v3, v1, v2

    iget v4, p0, Lbtools/util/BitCoderContext;->bm:I

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 130
    sub-int/2addr p1, v0

    .line 132
    :cond_1
    iget v1, p0, Lbtools/util/BitCoderContext;->bm:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 133
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    return-void
.end method

.method public final encodeVarBits(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "range":I
    :goto_0
    if-le p1, v0, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbtools/util/BitCoderContext;->encodeBit(Z)V

    .line 50
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr p1, v1

    .line 51
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbtools/util/BitCoderContext;->encodeBit(Z)V

    .line 54
    invoke-virtual {p0, v0, p1}, Lbtools/util/BitCoderContext;->encodeBounded(II)V

    .line 55
    return-void
.end method

.method public final getEncodedLength()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lbtools/util/BitCoderContext;->idx:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getReadingBitPosition()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lbtools/util/BitCoderContext;->idx:I

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lbtools/util/BitCoderContext;->bits:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getWritingBitPosition()J
    .locals 6

    .prologue
    .line 200
    iget v3, p0, Lbtools/util/BitCoderContext;->idx:I

    shl-int/lit8 v3, v3, 0x3

    int-to-long v0, v3

    .line 201
    .local v0, "bitpos":J
    iget v2, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 202
    .local v2, "m":I
    :goto_0
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 204
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 205
    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->idx:I

    .line 29
    const/16 v0, 0x100

    iput v0, p0, Lbtools/util/BitCoderContext;->bm:I

    .line 30
    iput v1, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 31
    iput v1, p0, Lbtools/util/BitCoderContext;->b:I

    .line 32
    return-void
.end method

.method public final reset([B)V
    .locals 1
    .param p1, "ab"    # [B

    .prologue
    .line 21
    iput-object p1, p0, Lbtools/util/BitCoderContext;->ab:[B

    .line 22
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbtools/util/BitCoderContext;->idxMax:I

    .line 23
    invoke-virtual {p0}, Lbtools/util/BitCoderContext;->reset()V

    .line 24
    return-void
.end method

.method public final setReadingBitPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 217
    ushr-int/lit8 v0, p1, 0x3

    iput v0, p0, Lbtools/util/BitCoderContext;->idx:I

    .line 218
    iget v0, p0, Lbtools/util/BitCoderContext;->idx:I

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x8

    sub-int/2addr v0, p1

    iput v0, p0, Lbtools/util/BitCoderContext;->bits:I

    .line 219
    iget-object v0, p0, Lbtools/util/BitCoderContext;->ab:[B

    iget v1, p0, Lbtools/util/BitCoderContext;->idx:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lbtools/util/BitCoderContext;->b:I

    .line 220
    iget v0, p0, Lbtools/util/BitCoderContext;->b:I

    iget v1, p0, Lbtools/util/BitCoderContext;->bits:I

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    iput v0, p0, Lbtools/util/BitCoderContext;->b:I

    .line 221
    return-void
.end method
