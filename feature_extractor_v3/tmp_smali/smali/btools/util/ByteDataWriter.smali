.class public Lbtools/util/ByteDataWriter;
.super Lbtools/util/ByteDataReader;
.source "ByteDataWriter.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "byteArray"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lbtools/util/ByteDataReader;-><init>([B)V

    .line 14
    return-void
.end method


# virtual methods
.method public final injectSize(I)V
    .locals 7
    .param p1, "sizeoffset"    # I

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "size":I
    iget v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 114
    .local v0, "datasize":I
    move v2, v0

    .line 117
    .local v2, "v":I
    :cond_0
    shr-int/lit8 v2, v2, 0x7

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 120
    if-nez v2, :cond_0

    .line 121
    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 123
    iget-object v3, p0, Lbtools/util/ByteDataWriter;->ab:[B

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lbtools/util/ByteDataWriter;->ab:[B

    add-int v6, p1, v1

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_1
    iput p1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    .line 126
    invoke-virtual {p0, v0}, Lbtools/util/ByteDataWriter;->writeVarLengthUnsigned(I)V

    .line 127
    add-int v3, p1, v1

    add-int/2addr v3, v0

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    .line 128
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    return v0
.end method

.method public final toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    new-array v0, v1, [B

    .line 93
    .local v0, "c":[B
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-object v0
.end method

.method public final write([B)V
    .locals 4
    .param p1, "sa"    # [B

    .prologue
    .line 54
    const/4 v0, 0x0

    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    .line 56
    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "sa"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    .line 62
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z

    .prologue
    .line 38
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 39
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 44
    return-void
.end method

.method public final writeInt(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 19
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 20
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 21
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    return-void
.end method

.method public final writeLong(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 26
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 27
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 28
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 29
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 30
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 31
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 32
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 33
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 34
    return-void
.end method

.method public final writeModeAndDesc(Z[B)V
    .locals 5
    .param p1, "isReverse"    # Z
    .param p2, "sa"    # [B

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p2, :cond_1

    move v0, v3

    .line 81
    .local v0, "len":I
    :goto_0
    shl-int/lit8 v4, v0, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    or-int v1, v4, v2

    .line 82
    .local v1, "sizecode":I
    invoke-virtual {p0, v1}, Lbtools/util/ByteDataWriter;->writeVarLengthUnsigned(I)V

    .line 83
    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p0, p2, v3, v0}, Lbtools/util/ByteDataWriter;->write([BII)V

    .line 87
    :cond_0
    return-void

    .line 80
    .end local v0    # "len":I
    .end local v1    # "sizecode":I
    :cond_1
    array-length v0, p2

    goto :goto_0

    .restart local v0    # "len":I
    :cond_2
    move v2, v3

    .line 81
    goto :goto_1
.end method

.method public final writeShort(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 49
    iget-object v0, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 50
    return-void
.end method

.method public final writeSizePlaceHolder()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    return v0
.end method

.method public final writeVarBytes([B)V
    .locals 2
    .param p1, "sa"    # [B

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lbtools/util/ByteDataWriter;->writeVarLengthUnsigned(I)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    array-length v0, p1

    .line 73
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lbtools/util/ByteDataWriter;->writeVarLengthUnsigned(I)V

    .line 74
    invoke-virtual {p0, p1, v1, v0}, Lbtools/util/ByteDataWriter;->write([BII)V

    goto :goto_0
.end method

.method public final writeVarLengthSigned(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 132
    if-gez p1, :cond_0

    neg-int v0, p1

    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lbtools/util/ByteDataWriter;->writeVarLengthUnsigned(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    shl-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public final writeVarLengthUnsigned(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 137
    and-int/lit8 v0, p1, 0x7f

    .line 138
    .local v0, "i7":I
    ushr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    .line 140
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 170
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 145
    and-int/lit8 v0, p1, 0x7f

    .line 146
    ushr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    .line 148
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 153
    and-int/lit8 v0, p1, 0x7f

    .line 154
    ushr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_2

    .line 156
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 161
    and-int/lit8 v0, p1, 0x7f

    .line 162
    ushr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_3

    .line 164
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_0

    .line 167
    :cond_3
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    or-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 169
    iget-object v1, p0, Lbtools/util/ByteDataWriter;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataWriter;->aboffset:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    goto :goto_0
.end method
