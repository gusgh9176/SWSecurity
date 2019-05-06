.class final Lbtools/mapaccess/OsmFile;
.super Ljava/lang/Object;
.source "OsmFile.java"


# instance fields
.field private cellsize:I

.field private divisor:I

.field private fileOffset:J

.field public filename:Ljava/lang/String;

.field private indexsize:I

.field private is:Ljava/io/RandomAccessFile;

.field public latDegree:I

.field public lonDegree:I

.field private microCaches:[Lbtools/codec/MicroCache;

.field private ncaches:I

.field private posIdx:[I


# direct methods
.method public constructor <init>(Lbtools/mapaccess/PhysicalFile;IILbtools/codec/DataBuffers;)V
    .locals 14
    .param p1, "rafile"    # Lbtools/mapaccess/PhysicalFile;
    .param p2, "lonDegree"    # I
    .param p3, "latDegree"    # I
    .param p4, "dataBuffers"    # Lbtools/codec/DataBuffers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v10, 0x0

    iput-object v10, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    .line 39
    move/from16 v0, p2

    iput v0, p0, Lbtools/mapaccess/OsmFile;->lonDegree:I

    .line 40
    move/from16 v0, p3

    iput v0, p0, Lbtools/mapaccess/OsmFile;->latDegree:I

    .line 41
    rem-int/lit8 v8, p2, 0x5

    .line 42
    .local v8, "lonMod5":I
    rem-int/lit8 v7, p3, 0x5

    .line 43
    .local v7, "latMod5":I
    mul-int/lit8 v10, v8, 0x5

    add-int v9, v10, v7

    .line 45
    .local v9, "tileIndex":I
    if-eqz p1, :cond_0

    .line 47
    iget v10, p1, Lbtools/mapaccess/PhysicalFile;->divisor:I

    iput v10, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    .line 49
    const v10, 0xf4240

    iget v11, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    div-int/2addr v10, v11

    iput v10, p0, Lbtools/mapaccess/OsmFile;->cellsize:I

    .line 50
    iget v10, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v11, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    mul-int/2addr v10, v11

    iput v10, p0, Lbtools/mapaccess/OsmFile;->ncaches:I

    .line 51
    iget v10, p0, Lbtools/mapaccess/OsmFile;->ncaches:I

    mul-int/lit8 v10, v10, 0x4

    iput v10, p0, Lbtools/mapaccess/OsmFile;->indexsize:I

    .line 53
    move-object/from16 v0, p4

    iget-object v6, v0, Lbtools/codec/DataBuffers;->iobuffer:[B

    .line 54
    .local v6, "iobuffer":[B
    iget-object v10, p1, Lbtools/mapaccess/PhysicalFile;->fileName:Ljava/lang/String;

    iput-object v10, p0, Lbtools/mapaccess/OsmFile;->filename:Ljava/lang/String;

    .line 56
    iget-object v5, p1, Lbtools/mapaccess/PhysicalFile;->fileIndex:[J

    .line 57
    .local v5, "index":[J
    if-lez v9, :cond_1

    add-int/lit8 v10, v9, -0x1

    aget-wide v10, v5, v10

    :goto_0
    iput-wide v10, p0, Lbtools/mapaccess/OsmFile;->fileOffset:J

    .line 58
    iget-wide v10, p0, Lbtools/mapaccess/OsmFile;->fileOffset:J

    aget-wide v12, v5, v9

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 82
    .end local v5    # "index":[J
    .end local v6    # "iobuffer":[B
    :cond_0
    return-void

    .line 57
    .restart local v5    # "index":[J
    .restart local v6    # "iobuffer":[B
    :cond_1
    const-wide/16 v10, 0xc8

    goto :goto_0

    .line 61
    :cond_2
    iget-object v10, p1, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    iput-object v10, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    .line 62
    iget v10, p0, Lbtools/mapaccess/OsmFile;->ncaches:I

    new-array v10, v10, [I

    iput-object v10, p0, Lbtools/mapaccess/OsmFile;->posIdx:[I

    .line 63
    iget v10, p0, Lbtools/mapaccess/OsmFile;->ncaches:I

    new-array v10, v10, [Lbtools/codec/MicroCache;

    iput-object v10, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    .line 64
    iget-object v10, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    iget-wide v12, p0, Lbtools/mapaccess/OsmFile;->fileOffset:J

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    iget-object v10, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    iget v12, p0, Lbtools/mapaccess/OsmFile;->indexsize:I

    invoke-virtual {v10, v6, v11, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 67
    iget-object v10, p1, Lbtools/mapaccess/PhysicalFile;->fileHeaderCrcs:[I

    if-eqz v10, :cond_3

    .line 69
    const/4 v10, 0x0

    iget v11, p0, Lbtools/mapaccess/OsmFile;->indexsize:I

    invoke-static {v6, v10, v11}, Lbtools/util/Crc32;->crc([BII)I

    move-result v3

    .line 70
    .local v3, "headerCrc":I
    iget-object v10, p1, Lbtools/mapaccess/PhysicalFile;->fileHeaderCrcs:[I

    aget v10, v10, v9

    if-eq v10, v3, :cond_3

    .line 72
    new-instance v10, Ljava/io/IOException;

    const-string v11, "sub index checksum error"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 76
    .end local v3    # "headerCrc":I
    :cond_3
    new-instance v2, Lbtools/util/ByteDataReader;

    invoke-direct {v2, v6}, Lbtools/util/ByteDataReader;-><init>([B)V

    .line 77
    .local v2, "dis":Lbtools/util/ByteDataReader;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lbtools/mapaccess/OsmFile;->ncaches:I

    if-ge v4, v10, :cond_0

    .line 79
    iget-object v10, p0, Lbtools/mapaccess/OsmFile;->posIdx:[I

    invoke-virtual {v2}, Lbtools/util/ByteDataReader;->readInt()I

    move-result v11

    aput v11, v10, v4

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getPosIdx(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lbtools/mapaccess/OsmFile;->indexsize:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbtools/mapaccess/OsmFile;->posIdx:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method cleanGhosts()J
    .locals 7

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    .line 206
    .local v0, "deleted":J
    iget-object v5, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 207
    .local v4, "nc":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 209
    iget-object v5, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aget-object v3, v5, v2

    .line 210
    .local v3, "mc":Lbtools/codec/MicroCache;
    if-nez v3, :cond_2

    .line 207
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "i":I
    .end local v3    # "mc":Lbtools/codec/MicroCache;
    .end local v4    # "nc":I
    :cond_1
    iget-object v5, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    array-length v4, v5

    goto :goto_0

    .line 212
    .restart local v2    # "i":I
    .restart local v3    # "mc":Lbtools/codec/MicroCache;
    .restart local v4    # "nc":I
    :cond_2
    iget-boolean v5, v3, Lbtools/codec/MicroCache;->ghost:Z

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    goto :goto_2

    .line 217
    .end local v3    # "mc":Lbtools/codec/MicroCache;
    :cond_3
    return-wide v0
.end method

.method cleanNonVirgin()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 223
    .local v2, "nc":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 225
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aget-object v1, v3, v0

    .line 226
    .local v1, "mc":Lbtools/codec/MicroCache;
    if-nez v1, :cond_2

    .line 223
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    .end local v1    # "mc":Lbtools/codec/MicroCache;
    .end local v2    # "nc":I
    :cond_1
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    array-length v2, v3

    goto :goto_0

    .line 228
    .restart local v0    # "i":I
    .restart local v1    # "mc":Lbtools/codec/MicroCache;
    .restart local v2    # "nc":I
    :cond_2
    iget-boolean v3, v1, Lbtools/codec/MicroCache;->virgin:Z

    if-nez v3, :cond_0

    .line 230
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_2

    .line 233
    .end local v1    # "mc":Lbtools/codec/MicroCache;
    :cond_3
    return-void
.end method

.method collectAll()J
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 188
    const-wide/16 v0, 0x0

    .line 189
    .local v0, "deleted":J
    iget-object v6, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    if-nez v6, :cond_1

    move v4, v5

    .line 190
    .local v4, "nc":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 192
    iget-object v6, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aget-object v3, v6, v2

    .line 193
    .local v3, "mc":Lbtools/codec/MicroCache;
    if-nez v3, :cond_2

    .line 190
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v2    # "i":I
    .end local v3    # "mc":Lbtools/codec/MicroCache;
    .end local v4    # "nc":I
    :cond_1
    iget-object v6, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    array-length v4, v6

    goto :goto_0

    .line 195
    .restart local v2    # "i":I
    .restart local v3    # "mc":Lbtools/codec/MicroCache;
    .restart local v4    # "nc":I
    :cond_2
    iget-boolean v6, v3, Lbtools/codec/MicroCache;->ghost:Z

    if-nez v6, :cond_0

    .line 197
    invoke-virtual {v3, v5}, Lbtools/codec/MicroCache;->collect(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    goto :goto_2

    .line 200
    .end local v3    # "mc":Lbtools/codec/MicroCache;
    :cond_3
    return-wide v0
.end method

.method public createMicroCache(IILbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;)Lbtools/codec/MicroCache;
    .locals 9
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I
    .param p3, "dataBuffers"    # Lbtools/codec/DataBuffers;
    .param p4, "wayValidator"    # Lbtools/codec/TagValueValidator;
    .param p5, "waypointMatcher"    # Lbtools/codec/WaypointMatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lbtools/mapaccess/OsmFile;->cellsize:I

    div-int v1, p1, v0

    .line 101
    .local v1, "lonIdx":I
    iget v0, p0, Lbtools/mapaccess/OsmFile;->cellsize:I

    div-int v2, p2, v0

    .line 102
    .local v2, "latIdx":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbtools/mapaccess/OsmFile;->createMicroCache(IILbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;Z)Lbtools/codec/MicroCache;

    move-result-object v7

    .line 103
    .local v7, "segment":Lbtools/codec/MicroCache;
    iget v0, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v3, p0, Lbtools/mapaccess/OsmFile;->latDegree:I

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    iget v3, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    mul-int/2addr v0, v3

    iget v3, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v4, p0, Lbtools/mapaccess/OsmFile;->lonDegree:I

    mul-int/2addr v3, v4

    sub-int v3, v1, v3

    add-int v8, v0, v3

    .line 104
    .local v8, "subIdx":I
    iget-object v0, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aput-object v7, v0, v8

    .line 105
    return-object v7
.end method

.method public createMicroCache(IILbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;Z)Lbtools/codec/MicroCache;
    .locals 12
    .param p1, "lonIdx"    # I
    .param p2, "latIdx"    # I
    .param p3, "dataBuffers"    # Lbtools/codec/DataBuffers;
    .param p4, "wayValidator"    # Lbtools/codec/TagValueValidator;
    .param p5, "waypointMatcher"    # Lbtools/codec/WaypointMatcher;
    .param p6, "reallyDecode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v1, p0, Lbtools/mapaccess/OsmFile;->latDegree:I

    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    iget v1, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    mul-int/2addr v0, v1

    iget v1, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v2, p0, Lbtools/mapaccess/OsmFile;->lonDegree:I

    mul-int/2addr v1, v2

    sub-int v1, p1, v1

    add-int v11, v0, v1

    .line 134
    .local v11, "subIdx":I
    iget-object v7, p3, Lbtools/codec/DataBuffers;->iobuffer:[B

    .line 135
    .local v7, "ab":[B
    invoke-virtual {p0, v11, v7}, Lbtools/mapaccess/OsmFile;->getDataInputForSubIdx(I[B)I

    move-result v8

    .line 137
    .local v8, "asize":I
    if-nez v8, :cond_0

    .line 139
    invoke-static {}, Lbtools/codec/MicroCache;->emptyCache()Lbtools/codec/MicroCache;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 141
    :cond_0
    array-length v0, v7

    if-le v8, v0, :cond_1

    .line 143
    new-array v7, v8, [B

    .line 144
    invoke-virtual {p0, v11, v7}, Lbtools/mapaccess/OsmFile;->getDataInputForSubIdx(I[B)I

    move-result v8

    .line 145
    new-instance p3, Lbtools/codec/DataBuffers;

    .end local p3    # "dataBuffers":Lbtools/codec/DataBuffers;
    invoke-direct {p3, v7}, Lbtools/codec/DataBuffers;-><init>([B)V

    .line 150
    .restart local p3    # "dataBuffers":Lbtools/codec/DataBuffers;
    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v8, -0x4

    invoke-static {v7, v0, v1}, Lbtools/util/Crc32;->crc([BII)I

    move-result v9

    .line 151
    .local v9, "crcData":I
    new-instance v0, Lbtools/util/ByteDataReader;

    add-int/lit8 v1, v8, -0x4

    invoke-direct {v0, v7, v1}, Lbtools/util/ByteDataReader;-><init>([BI)V

    invoke-virtual {v0}, Lbtools/util/ByteDataReader;->readInt()I

    move-result v10

    .line 152
    .local v10, "crcFooter":I
    if-ne v9, v10, :cond_2

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "old, unsupported data-format"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    xor-int/lit8 v0, v9, 0x2

    if-ne v0, v10, :cond_4

    .line 158
    if-eqz p6, :cond_3

    new-instance v0, Lbtools/codec/MicroCache2;

    iget v4, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    move-object v1, p3

    move v2, p1

    move v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lbtools/codec/MicroCache2;-><init>(Lbtools/codec/DataBuffers;IIILbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "checkum error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataInputForSubIdx(I[B)I
    .locals 8
    .param p1, "subIdx"    # I
    .param p2, "iobuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lbtools/mapaccess/OsmFile;->getPosIdx(I)I

    move-result v2

    .line 116
    .local v2, "startPos":I
    invoke-direct {p0, p1}, Lbtools/mapaccess/OsmFile;->getPosIdx(I)I

    move-result v0

    .line 117
    .local v0, "endPos":I
    sub-int v1, v0, v2

    .line 118
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 120
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lbtools/mapaccess/OsmFile;->fileOffset:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 121
    array-length v3, p2

    if-gt v1, v3, :cond_0

    .line 123
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->is:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 126
    :cond_0
    return v1
.end method

.method public getMicroCache(II)Lbtools/codec/MicroCache;
    .locals 6
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 91
    iget v3, p0, Lbtools/mapaccess/OsmFile;->cellsize:I

    div-int v1, p1, v3

    .line 92
    .local v1, "lonIdx":I
    iget v3, p0, Lbtools/mapaccess/OsmFile;->cellsize:I

    div-int v0, p2, v3

    .line 93
    .local v0, "latIdx":I
    iget v3, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v4, p0, Lbtools/mapaccess/OsmFile;->latDegree:I

    mul-int/2addr v3, v4

    sub-int v3, v0, v3

    iget v4, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    mul-int/2addr v3, v4

    iget v4, p0, Lbtools/mapaccess/OsmFile;->divisor:I

    iget v5, p0, Lbtools/mapaccess/OsmFile;->lonDegree:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    add-int v2, v3, v4

    .line 94
    .local v2, "subIdx":I
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aget-object v3, v3, v2

    return-object v3
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setGhostState()J
    .locals 8

    .prologue
    .line 166
    const-wide/16 v4, 0x0

    .line 167
    .local v4, "sum":J
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 168
    .local v2, "nc":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 170
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    aget-object v1, v3, v0

    .line 171
    .local v1, "mc":Lbtools/codec/MicroCache;
    if-nez v1, :cond_1

    .line 168
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "i":I
    .end local v1    # "mc":Lbtools/codec/MicroCache;
    .end local v2    # "nc":I
    :cond_0
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    array-length v2, v3

    goto :goto_0

    .line 173
    .restart local v0    # "i":I
    .restart local v1    # "mc":Lbtools/codec/MicroCache;
    .restart local v2    # "nc":I
    :cond_1
    iget-boolean v3, v1, Lbtools/codec/MicroCache;->virgin:Z

    if-eqz v3, :cond_2

    .line 175
    const/4 v3, 0x1

    iput-boolean v3, v1, Lbtools/codec/MicroCache;->ghost:Z

    .line 176
    invoke-virtual {v1}, Lbtools/codec/MicroCache;->getDataSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    goto :goto_2

    .line 180
    :cond_2
    iget-object v3, p0, Lbtools/mapaccess/OsmFile;->microCaches:[Lbtools/codec/MicroCache;

    const/4 v6, 0x0

    aput-object v6, v3, v0

    goto :goto_2

    .line 183
    .end local v1    # "mc":Lbtools/codec/MicroCache;
    :cond_3
    return-wide v4
.end method
