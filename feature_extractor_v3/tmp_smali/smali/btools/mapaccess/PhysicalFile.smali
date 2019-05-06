.class public final Lbtools/mapaccess/PhysicalFile;
.super Ljava/lang/Object;
.source "PhysicalFile.java"


# instance fields
.field public creationTime:J

.field public divisor:I

.field fileHeaderCrcs:[I

.field fileIndex:[J

.field private fileIndexCrc:I

.field fileName:Ljava/lang/String;

.field ra:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Lbtools/codec/DataBuffers;II)V
    .locals 18
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dataBuffers"    # Lbtools/codec/DataBuffers;
    .param p3, "lookupVersion"    # I
    .param p4, "lookupMinorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    .line 20
    const/16 v14, 0x19

    new-array v14, v14, [J

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileIndex:[J

    .line 28
    const/16 v14, 0x50

    move-object/from16 v0, p0

    iput v14, v0, Lbtools/mapaccess/PhysicalFile;->divisor:I

    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileName:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p2

    iget-object v6, v0, Lbtools/codec/DataBuffers;->iobuffer:[B

    .line 95
    .local v6, "iobuffer":[B
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v15, "r"

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    const/4 v15, 0x0

    const/16 v16, 0xc8

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 97
    const/4 v14, 0x0

    const/16 v15, 0xc8

    invoke-static {v6, v14, v15}, Lbtools/util/Crc32;->crc([BII)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lbtools/mapaccess/PhysicalFile;->fileIndexCrc:I

    .line 98
    new-instance v3, Lbtools/util/ByteDataReader;

    invoke-direct {v3, v6}, Lbtools/util/ByteDataReader;-><init>([B)V

    .line 99
    .local v3, "dis":Lbtools/util/ByteDataReader;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v14, 0x19

    if-ge v5, v14, :cond_1

    .line 101
    invoke-virtual {v3}, Lbtools/util/ByteDataReader;->readLong()J

    move-result-wide v10

    .line 102
    .local v10, "lv":J
    const/16 v14, 0x30

    shr-long v14, v10, v14

    long-to-int v14, v14

    int-to-short v7, v14

    .line 103
    .local v7, "readVersion":S
    if-nez v5, :cond_0

    const/4 v14, -0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_0

    move/from16 v0, p3

    if-eq v7, v0, :cond_0

    .line 105
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lookup version mismatch (old rd5?) lookups.dat="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileIndex:[J

    const-wide v16, 0xffffffffffffL

    and-long v16, v16, v10

    aput-wide v16, v14, v5

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v7    # "readVersion":S
    .end local v10    # "lv":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    .line 114
    .local v8, "len":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileIndex:[J

    const/16 v15, 0x18

    aget-wide v12, v14, v15

    .line 115
    .local v12, "pos":J
    const/16 v4, 0x70

    .line 117
    .local v4, "extraLen":I
    cmp-long v14, v8, v12

    if-nez v14, :cond_3

    .line 147
    :cond_2
    return-void

    .line 119
    :cond_3
    int-to-long v14, v4

    add-long/2addr v14, v12

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 121
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file of size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " too short, should be "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 124
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v14, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 126
    new-instance v3, Lbtools/util/ByteDataReader;

    .end local v3    # "dis":Lbtools/util/ByteDataReader;
    invoke-direct {v3, v6}, Lbtools/util/ByteDataReader;-><init>([B)V

    .line 127
    .restart local v3    # "dis":Lbtools/util/ByteDataReader;
    invoke-virtual {v3}, Lbtools/util/ByteDataReader;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lbtools/mapaccess/PhysicalFile;->creationTime:J

    .line 129
    invoke-virtual {v3}, Lbtools/util/ByteDataReader;->readInt()I

    move-result v2

    .line 130
    .local v2, "crcData":I
    move-object/from16 v0, p0

    iget v14, v0, Lbtools/mapaccess/PhysicalFile;->fileIndexCrc:I

    if-ne v2, v14, :cond_5

    .line 132
    const/16 v14, 0x50

    move-object/from16 v0, p0

    iput v14, v0, Lbtools/mapaccess/PhysicalFile;->divisor:I

    .line 142
    :goto_1
    const/16 v14, 0x19

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileHeaderCrcs:[I

    .line 143
    const/4 v5, 0x0

    :goto_2
    const/16 v14, 0x19

    if-ge v5, v14, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lbtools/mapaccess/PhysicalFile;->fileHeaderCrcs:[I

    invoke-virtual {v3}, Lbtools/util/ByteDataReader;->readInt()I

    move-result v15

    aput v15, v14, v5

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 134
    :cond_5
    xor-int/lit8 v14, v2, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lbtools/mapaccess/PhysicalFile;->fileIndexCrc:I

    if-ne v14, v15, :cond_6

    .line 136
    const/16 v14, 0x20

    move-object/from16 v0, p0

    iput v14, v0, Lbtools/mapaccess/PhysicalFile;->divisor:I

    goto :goto_1

    .line 140
    :cond_6
    new-instance v14, Ljava/io/IOException;

    const-string v15, "top index checksum error"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static checkFileIntegrity(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 51
    const/16 v16, 0x0

    .line 54
    .local v16, "pf":Lbtools/mapaccess/PhysicalFile;
    :try_start_0
    new-instance v5, Lbtools/codec/DataBuffers;

    invoke-direct {v5}, Lbtools/codec/DataBuffers;-><init>()V

    .line 55
    .local v5, "dataBuffers":Lbtools/codec/DataBuffers;
    new-instance v17, Lbtools/mapaccess/PhysicalFile;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v3, v4}, Lbtools/mapaccess/PhysicalFile;-><init>(Ljava/io/File;Lbtools/codec/DataBuffers;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    .local v17, "pf":Lbtools/mapaccess/PhysicalFile;
    :try_start_1
    move-object/from16 v0, v17

    iget v9, v0, Lbtools/mapaccess/PhysicalFile;->divisor:I

    .line 57
    .local v9, "div":I
    const/4 v14, 0x0

    .local v14, "lonDegree":I
    :goto_0
    const/4 v3, 0x5

    if-ge v14, v3, :cond_3

    .line 59
    const/4 v12, 0x0

    .local v12, "latDegree":I
    :goto_1
    const/4 v3, 0x5

    if-ge v12, v3, :cond_2

    .line 61
    new-instance v2, Lbtools/mapaccess/OsmFile;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v14, v12, v5}, Lbtools/mapaccess/OsmFile;-><init>(Lbtools/mapaccess/PhysicalFile;IILbtools/codec/DataBuffers;)V

    .line 62
    .local v2, "osmf":Lbtools/mapaccess/OsmFile;
    invoke-virtual {v2}, Lbtools/mapaccess/OsmFile;->hasData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const/4 v15, 0x0

    .local v15, "lonIdx":I
    :goto_2
    if-ge v15, v9, :cond_1

    .line 64
    const/4 v13, 0x0

    .local v13, "latIdx":I
    :goto_3
    if-ge v13, v9, :cond_0

    .line 65
    mul-int v3, v14, v9

    add-int/2addr v3, v15

    mul-int v4, v12, v9

    add-int/2addr v4, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v8, Lbtools/codec/MicroCache;->debug:Z

    invoke-virtual/range {v2 .. v8}, Lbtools/mapaccess/OsmFile;->createMicroCache(IILbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;Z)Lbtools/codec/MicroCache;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 63
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 59
    .end local v13    # "latIdx":I
    .end local v15    # "lonIdx":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "osmf":Lbtools/mapaccess/OsmFile;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 79
    .end local v12    # "latDegree":I
    :cond_3
    if-eqz v17, :cond_4

    .line 82
    :try_start_2
    move-object/from16 v0, v17

    iget-object v3, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 88
    :cond_4
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v16, v17

    .end local v5    # "dataBuffers":Lbtools/codec/DataBuffers;
    .end local v9    # "div":I
    .end local v14    # "lonDegree":I
    .end local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    :cond_5
    :goto_5
    return-object v3

    .line 69
    :catch_0
    move-exception v11

    .line 71
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 79
    if-eqz v16, :cond_5

    .line 82
    :try_start_4
    move-object/from16 v0, v16

    iget-object v4, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 84
    :catch_1
    move-exception v4

    goto :goto_5

    .line 73
    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v10

    .line 75
    .local v10, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 79
    if-eqz v16, :cond_5

    .line 82
    :try_start_6
    move-object/from16 v0, v16

    iget-object v4, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 84
    :catch_3
    move-exception v4

    goto :goto_5

    .line 79
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v16, :cond_6

    .line 82
    :try_start_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lbtools/mapaccess/PhysicalFile;->ra:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 86
    :cond_6
    :goto_9
    throw v3

    .line 84
    :catch_4
    move-exception v4

    goto :goto_9

    .line 79
    .end local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v5    # "dataBuffers":Lbtools/codec/DataBuffers;
    .restart local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    goto :goto_8

    .line 73
    .end local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    :catch_5
    move-exception v10

    move-object/from16 v16, v17

    .end local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    goto :goto_7

    .line 69
    .end local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    :catch_6
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    goto :goto_6

    .line 84
    .end local v16    # "pf":Lbtools/mapaccess/PhysicalFile;
    .restart local v9    # "div":I
    .restart local v14    # "lonDegree":I
    .restart local v17    # "pf":Lbtools/mapaccess/PhysicalFile;
    :catch_7
    move-exception v3

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Lbtools/codec/MicroCache;->debug:Z

    .line 34
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbtools/mapaccess/PhysicalFile;->checkFileIntegrity(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "************************************"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "************************************"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
