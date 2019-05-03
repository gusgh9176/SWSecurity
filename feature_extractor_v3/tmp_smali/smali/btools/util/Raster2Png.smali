.class public Lbtools/util/Raster2Png;
.super Lbtools/util/ByteDataWriter;
.source "Raster2Png.java"


# static fields
.field public static final FILTER_NONE:I

.field protected static final IDAT:[B

.field protected static final IEND:[B

.field protected static final IHDR:[B


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected height:I

.field protected imagePixels:[I

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbtools/util/Raster2Png;->IHDR:[B

    .line 18
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lbtools/util/Raster2Png;->IDAT:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lbtools/util/Raster2Png;->IEND:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    .line 18
    :array_1
    .array-data 1
        0x49t
        0x44t
        0x41t
        0x54t
    .end array-data

    .line 21
    :array_2
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbtools/util/ByteDataWriter;-><init>([B)V

    .line 29
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    .line 34
    return-void
.end method

.method private getPixels(II[I)V
    .locals 6
    .param p1, "startRow"    # I
    .param p2, "nRows"    # I
    .param p3, "pixels"    # [I

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 163
    add-int v2, v0, p1

    .line 164
    .local v2, "ir":I
    const/4 v1, 0x0

    .local v1, "ic":I
    :goto_1
    iget v3, p0, Lbtools/util/Raster2Png;->width:I

    if-ge v1, v3, :cond_0

    .line 166
    iget v3, p0, Lbtools/util/Raster2Png;->width:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lbtools/util/Raster2Png;->imagePixels:[I

    iget v5, p0, Lbtools/util/Raster2Png;->width:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, p3, v3

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "ic":I
    .end local v2    # "ir":I
    :cond_1
    return-void
.end method


# virtual methods
.method public pngEncode(II[I)[B
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imagePixels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iput p1, p0, Lbtools/util/Raster2Png;->width:I

    .line 42
    iput p2, p0, Lbtools/util/Raster2Png;->height:I

    .line 43
    iput-object p3, p0, Lbtools/util/Raster2Png;->imagePixels:[I

    .line 46
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit16 v1, v1, 0xc8

    new-array v1, v1, [B

    iput-object v1, p0, Lbtools/util/Raster2Png;->ab:[B

    .line 48
    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 50
    .local v0, "pngIdBytes":[B
    invoke-virtual {p0, v0}, Lbtools/util/Raster2Png;->write([B)V

    .line 51
    invoke-virtual {p0}, Lbtools/util/Raster2Png;->writeHeader()V

    .line 52
    invoke-virtual {p0}, Lbtools/util/Raster2Png;->writeImageData()V

    .line 53
    invoke-virtual {p0}, Lbtools/util/Raster2Png;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 48
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method protected writeHeader()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 61
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 62
    iget v0, p0, Lbtools/util/Raster2Png;->aboffset:I

    .line 63
    .local v0, "startPos":I
    sget-object v1, Lbtools/util/Raster2Png;->IHDR:[B

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->write([B)V

    .line 64
    iget v1, p0, Lbtools/util/Raster2Png;->width:I

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 65
    iget v1, p0, Lbtools/util/Raster2Png;->height:I

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 66
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeByte(I)V

    .line 67
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeByte(I)V

    .line 68
    invoke-virtual {p0, v2}, Lbtools/util/Raster2Png;->writeByte(I)V

    .line 69
    invoke-virtual {p0, v2}, Lbtools/util/Raster2Png;->writeByte(I)V

    .line 70
    invoke-virtual {p0, v2}, Lbtools/util/Raster2Png;->writeByte(I)V

    .line 71
    iget-object v1, p0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 72
    iget-object v1, p0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p0, Lbtools/util/Raster2Png;->ab:[B

    iget v3, p0, Lbtools/util/Raster2Png;->aboffset:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    iget-object v1, p0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 74
    return-void
.end method

.method protected writeImageData()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget v10, v0, Lbtools/util/Raster2Png;->height:I

    .line 84
    .local v10, "rowsLeft":I
    const/4 v15, 0x0

    .line 93
    .local v15, "startRow":I
    const/4 v2, 0x3

    .line 95
    .local v2, "bytesPerPixel":I
    new-instance v14, Ljava/util/zip/Deflater;

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 96
    .local v14, "scrunch":Ljava/util/zip/Deflater;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    .local v8, "outBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v8, v14}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 99
    .local v3, "compBytes":Ljava/util/zip/DeflaterOutputStream;
    :goto_0
    if-lez v10, :cond_2

    .line 101
    const/16 v16, 0x7fff

    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/Raster2Png;->width:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x4

    div-int v16, v16, v17

    move/from16 v0, v16

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 102
    .local v7, "nRows":I
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 104
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/Raster2Png;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v7

    move/from16 v0, v16

    new-array v9, v0, [I

    .line 106
    .local v9, "pixels":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7, v9}, Lbtools/util/Raster2Png;->getPixels(II[I)V

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/Raster2Png;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v7

    mul-int v16, v16, v2

    add-int v16, v16, v7

    move/from16 v0, v16

    new-array v11, v0, [B

    .line 113
    .local v11, "scanLines":[B
    const/4 v12, 0x0

    .line 114
    .local v12, "scanPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/Raster2Png;->width:I

    move/from16 v16, v0

    mul-int v16, v16, v7

    move/from16 v0, v16

    if-ge v5, v0, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/util/Raster2Png;->width:I

    move/from16 v16, v0

    rem-int v16, v5, v16

    if-nez v16, :cond_0

    .line 118
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "scanPos":I
    .local v13, "scanPos":I
    const/16 v16, 0x0

    aput-byte v16, v11, v12

    move v12, v13

    .line 120
    .end local v13    # "scanPos":I
    .restart local v12    # "scanPos":I
    :cond_0
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "scanPos":I
    .restart local v13    # "scanPos":I
    aget v16, v9, v5

    shr-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v11, v12

    .line 121
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "scanPos":I
    .restart local v12    # "scanPos":I
    aget v16, v9, v5

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v11, v13

    .line 122
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "scanPos":I
    .restart local v13    # "scanPos":I
    aget v16, v9, v5

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v11, v12

    .line 114
    add-int/lit8 v5, v5, 0x1

    move v12, v13

    .end local v13    # "scanPos":I
    .restart local v12    # "scanPos":I
    goto :goto_1

    .line 128
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v11, v0, v12}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 130
    add-int/2addr v15, v7

    .line 131
    sub-int/2addr v10, v7

    .line 132
    goto/16 :goto_0

    .line 133
    .end local v5    # "i":I
    .end local v7    # "nRows":I
    .end local v9    # "pixels":[I
    .end local v11    # "scanLines":[B
    .end local v12    # "scanPos":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 138
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 139
    .local v4, "compressedLines":[B
    array-length v6, v4

    .line 141
    .local v6, "nCompressed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->reset()V

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 143
    sget-object v16, Lbtools/util/Raster2Png;->IDAT:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/util/Raster2Png;->write([B)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    sget-object v17, Lbtools/util/Raster2Png;->IDAT:[B

    invoke-virtual/range {v16 .. v17}, Ljava/util/zip/CRC32;->update([B)V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbtools/util/Raster2Png;->write([B)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1, v6}, Ljava/util/zip/CRC32;->update([BII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 149
    invoke-virtual {v14}, Ljava/util/zip/Deflater;->finish()V

    .line 152
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 153
    sget-object v16, Lbtools/util/Raster2Png;->IEND:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/util/Raster2Png;->write([B)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->reset()V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    sget-object v17, Lbtools/util/Raster2Png;->IEND:[B

    invoke-virtual/range {v16 .. v17}, Ljava/util/zip/CRC32;->update([B)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/util/Raster2Png;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/util/Raster2Png;->writeInt(I)V

    .line 157
    return-void
.end method
