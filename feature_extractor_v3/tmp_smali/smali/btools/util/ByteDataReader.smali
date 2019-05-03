.class public Lbtools/util/ByteDataReader;
.super Ljava/lang/Object;
.source "ByteDataReader.java"


# instance fields
.field protected ab:[B

.field protected aboffset:I

.field protected aboffsetEnd:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbtools/util/ByteDataReader;->ab:[B

    .line 18
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lbtools/util/ByteDataReader;->aboffsetEnd:I

    .line 19
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "byteArray"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbtools/util/ByteDataReader;->ab:[B

    .line 24
    iput p2, p0, Lbtools/util/ByteDataReader;->aboffset:I

    .line 25
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lbtools/util/ByteDataReader;->aboffsetEnd:I

    .line 26
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    array-length v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final getEndPointer()I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lbtools/util/ByteDataReader;->readVarLengthUnsigned()I

    move-result v0

    .line 85
    .local v0, "size":I
    iget v1, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final hasMoreData()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lbtools/util/ByteDataReader;->aboffset:I

    iget v1, p0, Lbtools/util/ByteDataReader;->aboffsetEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readBoolean()Z
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 61
    .local v0, "i0":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v2, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 67
    .local v0, "i0":I
    int-to-byte v1, v0

    return v1
.end method

.method public final readDataUntil(I)[B
    .locals 3
    .param p1, "endPointer"    # I

    .prologue
    .line 90
    iget v2, p0, Lbtools/util/ByteDataReader;->aboffset:I

    sub-int v1, p1, v2

    .line 91
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-array v0, v1, [B

    .line 96
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lbtools/util/ByteDataReader;->readFully([B)V

    goto :goto_0
.end method

.method public final readFully([B)V
    .locals 4
    .param p1, "ta"    # [B

    .prologue
    .line 135
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v1, p0, Lbtools/util/ByteDataReader;->aboffset:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v0, p0, Lbtools/util/ByteDataReader;->aboffset:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/util/ByteDataReader;->aboffset:I

    .line 137
    return-void
.end method

.method public final readInt()I
    .locals 7

    .prologue
    .line 38
    iget-object v4, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 39
    .local v3, "i3":I
    iget-object v4, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 40
    .local v2, "i2":I
    iget-object v4, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 41
    .local v1, "i1":I
    iget-object v4, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 42
    .local v0, "i0":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4
.end method

.method public final readLong()J
    .locals 22

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 48
    .local v16, "i7":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v14, v0

    .line 49
    .local v14, "i6":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v12, v0

    .line 50
    .local v12, "i5":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v10, v0

    .line 51
    .local v10, "i4":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v8, v0

    .line 52
    .local v8, "i3":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v6, v0

    .line 53
    .local v6, "i2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v4, v0

    .line 54
    .local v4, "i1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/ByteDataReader;->ab:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/ByteDataReader;->aboffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v2, v0

    .line 55
    .local v2, "i0":J
    const/16 v18, 0x38

    shl-long v18, v16, v18

    const/16 v20, 0x30

    shl-long v20, v14, v20

    add-long v18, v18, v20

    const/16 v20, 0x28

    shl-long v20, v12, v20

    add-long v18, v18, v20

    const/16 v20, 0x20

    shl-long v20, v10, v20

    add-long v18, v18, v20

    const/16 v20, 0x18

    shl-long v20, v8, v20

    add-long v18, v18, v20

    const/16 v20, 0x10

    shl-long v20, v6, v20

    add-long v18, v18, v20

    const/16 v20, 0x8

    shl-long v20, v4, v20

    add-long v18, v18, v20

    add-long v18, v18, v2

    return-wide v18
.end method

.method public final readShort()S
    .locals 5

    .prologue
    .line 72
    iget-object v2, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v3, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 73
    .local v1, "i1":I
    iget-object v2, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v3, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 74
    .local v0, "i0":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    int-to-short v2, v2

    return v2
.end method

.method public final readVarBytes()[B
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lbtools/util/ByteDataReader;->readVarLengthUnsigned()I

    move-result v1

    .line 103
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-array v0, v1, [B

    .line 108
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lbtools/util/ByteDataReader;->readFully([B)V

    goto :goto_0
.end method

.method public final readVarLengthSigned()I
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lbtools/util/ByteDataReader;->readVarLengthUnsigned()I

    move-result v0

    .line 115
    .local v0, "v":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    shr-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    goto :goto_0
.end method

.method public final readVarLengthUnsigned()I
    .locals 6

    .prologue
    .line 121
    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v0, v3, v4

    .local v0, "b":B
    and-int/lit8 v1, v0, 0x7f

    .line 122
    .local v1, "v":I
    if-ltz v0, :cond_0

    move v2, v1

    .line 130
    .end local v1    # "v":I
    .local v2, "v":I
    :goto_0
    return v2

    .line 123
    .end local v2    # "v":I
    .restart local v1    # "v":I
    :cond_0
    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v0, v3, v4

    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 124
    if-ltz v0, :cond_1

    move v2, v1

    .end local v1    # "v":I
    .restart local v2    # "v":I
    goto :goto_0

    .line 125
    .end local v2    # "v":I
    .restart local v1    # "v":I
    :cond_1
    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v0, v3, v4

    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 126
    if-ltz v0, :cond_2

    move v2, v1

    .end local v1    # "v":I
    .restart local v2    # "v":I
    goto :goto_0

    .line 127
    .end local v2    # "v":I
    .restart local v1    # "v":I
    :cond_2
    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v0, v3, v4

    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 128
    if-ltz v0, :cond_3

    move v2, v1

    .end local v1    # "v":I
    .restart local v2    # "v":I
    goto :goto_0

    .line 129
    .end local v2    # "v":I
    .restart local v1    # "v":I
    :cond_3
    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    iget v4, p0, Lbtools/util/ByteDataReader;->aboffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbtools/util/ByteDataReader;->aboffset:I

    aget-byte v0, v3, v4

    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v1, v3

    move v2, v1

    .line 130
    .end local v1    # "v":I
    .restart local v2    # "v":I
    goto :goto_0
.end method

.method public final reset([B)V
    .locals 2
    .param p1, "byteArray"    # [B

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object p1, p0, Lbtools/util/ByteDataReader;->ab:[B

    .line 31
    iput v0, p0, Lbtools/util/ByteDataReader;->aboffset:I

    .line 32
    iget-object v1, p0, Lbtools/util/ByteDataReader;->ab:[B

    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lbtools/util/ByteDataReader;->aboffsetEnd:I

    .line 33
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lbtools/util/ByteDataReader;->ab:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lbtools/util/ByteDataReader;->ab:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez v0, :cond_0

    const-string v2, " "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbtools/util/ByteDataReader;->ab:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ", "

    goto :goto_1

    .line 149
    :cond_1
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
