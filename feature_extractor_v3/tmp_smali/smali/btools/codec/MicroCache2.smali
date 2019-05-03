.class public final Lbtools/codec/MicroCache2;
.super Lbtools/codec/MicroCache;
.source "MicroCache2.java"


# instance fields
.field private cellsize:I

.field private latBase:I

.field private lonBase:I


# direct methods
.method public constructor <init>(I[BIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "databuffer"    # [B
    .param p3, "lonIdx"    # I
    .param p4, "latIdx"    # I
    .param p5, "divisor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p2}, Lbtools/codec/MicroCache;-><init>([B)V

    .line 22
    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/codec/MicroCache2;->faid:[I

    .line 23
    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/codec/MicroCache2;->fapos:[I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lbtools/codec/MicroCache2;->size:I

    .line 25
    const v0, 0xf4240

    div-int/2addr v0, p5

    iput v0, p0, Lbtools/codec/MicroCache2;->cellsize:I

    .line 26
    iget v0, p0, Lbtools/codec/MicroCache2;->cellsize:I

    mul-int/2addr v0, p3

    iput v0, p0, Lbtools/codec/MicroCache2;->lonBase:I

    .line 27
    iget v0, p0, Lbtools/codec/MicroCache2;->cellsize:I

    mul-int/2addr v0, p4

    iput v0, p0, Lbtools/codec/MicroCache2;->latBase:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lbtools/codec/DataBuffers;IIILbtools/codec/TagValueValidator;Lbtools/codec/WaypointMatcher;)V
    .locals 61
    .param p1, "dataBuffers"    # Lbtools/codec/DataBuffers;
    .param p2, "lonIdx"    # I
    .param p3, "latIdx"    # I
    .param p4, "divisor"    # I
    .param p5, "wayValidator"    # Lbtools/codec/TagValueValidator;
    .param p6, "waypointMatcher"    # Lbtools/codec/WaypointMatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbtools/codec/MicroCache;-><init>([B)V

    .line 40
    const v5, 0xf4240

    div-int v5, v5, p4

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->cellsize:I

    .line 41
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->cellsize:I

    mul-int v5, v5, p2

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->lonBase:I

    .line 42
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->cellsize:I

    mul-int v5, v5, p3

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->latBase:I

    .line 44
    new-instance v4, Lbtools/codec/StatCoderContext;

    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/codec/DataBuffers;->iobuffer:[B

    invoke-direct {v4, v5}, Lbtools/codec/StatCoderContext;-><init>([B)V

    .line 46
    .local v4, "bc":Lbtools/codec/StatCoderContext;
    new-instance v59, Lbtools/codec/TagValueCoder;

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v4, v1, v2}, Lbtools/codec/TagValueCoder;-><init>(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)V

    .line 47
    .local v59, "wayTagCoder":Lbtools/codec/TagValueCoder;
    new-instance v46, Lbtools/codec/TagValueCoder;

    const/4 v5, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lbtools/codec/TagValueCoder;-><init>(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)V

    .line 48
    .local v46, "nodeTagCoder":Lbtools/codec/TagValueCoder;
    new-instance v45, Lbtools/codec/NoisyDiffCoder;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lbtools/codec/NoisyDiffCoder;-><init>(Lbtools/codec/StatCoderContext;)V

    .line 49
    .local v45, "nodeIdxDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v43, Lbtools/codec/NoisyDiffCoder;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lbtools/codec/NoisyDiffCoder;-><init>(Lbtools/codec/StatCoderContext;)V

    .line 50
    .local v43, "nodeEleDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v23, Lbtools/codec/NoisyDiffCoder;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lbtools/codec/NoisyDiffCoder;-><init>(Lbtools/codec/StatCoderContext;)V

    .line 51
    .local v23, "extLonDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v22, Lbtools/codec/NoisyDiffCoder;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lbtools/codec/NoisyDiffCoder;-><init>(Lbtools/codec/StatCoderContext;)V

    .line 52
    .local v22, "extLatDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v56, Lbtools/codec/NoisyDiffCoder;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lbtools/codec/NoisyDiffCoder;-><init>(Lbtools/codec/StatCoderContext;)V

    .line 54
    .local v56, "transEleDiff":Lbtools/codec/NoisyDiffCoder;
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyNumber(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->size:I

    .line 55
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lbtools/codec/DataBuffers;->ibuf2:[I

    array-length v6, v6

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    new-array v5, v5, [I

    :goto_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    .line 56
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lbtools/codec/DataBuffers;->ibuf3:[I

    array-length v6, v6

    if-le v5, v6, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    new-array v5, v5, [I

    :goto_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    .line 60
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lbtools/codec/DataBuffers;->alon:[I

    array-length v6, v6

    if-le v5, v6, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    new-array v12, v5, [I

    .line 61
    .local v12, "alon":[I
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lbtools/codec/DataBuffers;->alat:[I

    array-length v6, v6

    if-le v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    new-array v11, v5, [I

    .line 63
    .local v11, "alat":[I
    :goto_3
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** decoding cache of size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for lonIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " latIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->size:I

    const/high16 v8, 0x20000000

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lbtools/codec/StatCoderContext;->decodeSortedArray([IIIII)V

    .line 67
    const/16 v41, 0x0

    .local v41, "n":I
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v0, v41

    if-ge v0, v5, :cond_5

    .line 69
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    aget v5, v5, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->expandId(I)J

    move-result-wide v30

    .line 70
    .local v30, "id64":J
    const/16 v5, 0x20

    shr-long v6, v30, v5

    long-to-int v5, v6

    aput v5, v12, v41

    .line 71
    const-wide/16 v6, -0x1

    and-long v6, v6, v30

    long-to-int v5, v6

    aput v5, v11, v41

    .line 67
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 55
    .end local v11    # "alat":[I
    .end local v12    # "alon":[I
    .end local v30    # "id64":J
    .end local v41    # "n":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/codec/DataBuffers;->ibuf2:[I

    goto/16 :goto_0

    .line 56
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/codec/DataBuffers;->ibuf3:[I

    goto/16 :goto_1

    .line 60
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lbtools/codec/DataBuffers;->alon:[I

    goto/16 :goto_2

    .line 61
    .restart local v12    # "alon":[I
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lbtools/codec/DataBuffers;->alat:[I

    goto/16 :goto_3

    .line 74
    .restart local v11    # "alat":[I
    .restart local v41    # "n":I
    :cond_5
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyNumber(I)I

    move-result v42

    .line 75
    .local v42, "netdatasize":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/codec/DataBuffers;->bbuf1:[B

    array-length v5, v5

    move/from16 v0, v42

    if-le v0, v5, :cond_10

    move/from16 v0, v42

    new-array v5, v0, [B

    :goto_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->ab:[B

    .line 76
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    .line 78
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    add-int/lit8 v5, v5, 0x1f

    shr-int/lit8 v5, v5, 0x5

    new-array v0, v5, [I

    move-object/from16 v58, v0

    .line 80
    .local v58, "validBits":[I
    const/16 v27, 0x0

    .line 82
    .local v27, "finaldatasize":I
    new-instance v48, Lbtools/codec/LinkedListContainer;

    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lbtools/codec/DataBuffers;->ibuf1:[I

    move-object/from16 v0, v48

    invoke-direct {v0, v5, v6}, Lbtools/codec/LinkedListContainer;-><init>(I[I)V

    .line 84
    .local v48, "reverseLinks":Lbtools/codec/LinkedListContainer;
    const/16 v50, 0x0

    .line 85
    .local v50, "selev":I
    const/16 v41, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v0, v41

    if-ge v0, v5, :cond_1c

    .line 87
    aget v34, v12, v41

    .line 88
    .local v34, "ilon":I
    aget v32, v11, v41

    .line 91
    .local v32, "ilat":I
    const/16 v55, 0x0

    .line 94
    .local v55, "trExceptions":S
    :cond_6
    :goto_7
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->decodeVarBits()I

    move-result v26

    .line 95
    .local v26, "featureId":I
    if-nez v26, :cond_11

    .line 119
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeBoolean(Z)V

    .line 121
    invoke-virtual/range {v43 .. v43}, Lbtools/codec/NoisyDiffCoder;->decodeSignedValue()I

    move-result v5

    add-int v50, v50, v5

    .line 122
    move/from16 v0, v50

    int-to-short v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeShort(I)V

    .line 123
    invoke-virtual/range {v46 .. v46}, Lbtools/codec/TagValueCoder;->decodeTagValueSet()Lbtools/codec/TagValueWrapper;

    move-result-object v47

    .line 124
    .local v47, "nodeTags":Lbtools/codec/TagValueWrapper;
    if-nez v47, :cond_14

    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeVarBytes([B)V

    .line 126
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyNumber(I)I

    move-result v39

    .line 127
    .local v39, "links":I
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_7

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***   decoding node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with links="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_7
    const/16 v38, 0x0

    .local v38, "li":I
    :goto_9
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1b

    .line 130
    const/16 v52, 0x0

    .line 131
    .local v52, "sizeoffset":I
    invoke-virtual/range {v45 .. v45}, Lbtools/codec/NoisyDiffCoder;->decodeSignedValue()I

    move-result v5

    add-int v44, v41, v5

    .line 136
    .local v44, "nodeIdx":I
    const/16 v36, 0x0

    .line 137
    .local v36, "isReverse":Z
    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_15

    .line 139
    aget v5, v12, v44

    sub-int v19, v5, v34

    .line 140
    .local v19, "dlon_remaining":I
    aget v5, v11, v44

    sub-int v17, v5, v32

    .line 148
    .local v17, "dlat_remaining":I
    :goto_a
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_8

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***     decoding link to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v7, v34, v19

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v7, v32, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " extern="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v44

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    const/4 v5, 0x1

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_8
    invoke-virtual/range {v59 .. v59}, Lbtools/codec/TagValueCoder;->decodeTagValueSet()Lbtools/codec/TagValueWrapper;

    move-result-object v60

    .line 152
    .local v60, "wayTags":Lbtools/codec/TagValueWrapper;
    if-eqz v60, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/codec/MicroCache2;->aboffset:I

    move/from16 v53, v0

    .line 155
    .local v53, "startPointer":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->writeSizePlaceHolder()I

    move-result v52

    .line 157
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 158
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 160
    shr-int/lit8 v5, v41, 0x5

    aget v6, v58, v5

    const/4 v7, 0x1

    shl-int v7, v7, v41

    or-int/2addr v6, v7

    aput v6, v58, v5

    .line 161
    move/from16 v0, v44

    move/from16 v1, v41

    if-eq v0, v1, :cond_9

    .line 163
    move-object/from16 v0, v48

    move/from16 v1, v44

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lbtools/codec/LinkedListContainer;->addDataElement(II)V

    .line 164
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v5, v53

    add-int v27, v27, v5

    .line 165
    shr-int/lit8 v5, v44, 0x5

    aget v6, v58, v5

    const/4 v7, 0x1

    shl-int v7, v7, v44

    or-int/2addr v6, v7

    aput v6, v58, v5

    .line 167
    :cond_9
    move-object/from16 v0, v60

    iget-object v5, v0, Lbtools/codec/TagValueWrapper;->data:[B

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v5}, Lbtools/codec/MicroCache2;->writeModeAndDesc(Z[B)V

    .line 170
    .end local v53    # "startPointer":I
    :cond_a
    if-nez v36, :cond_19

    .line 172
    if-eqz v60, :cond_b

    move-object/from16 v0, v60

    iget v5, v0, Lbtools/codec/TagValueWrapper;->accessType:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_17

    :cond_b
    const/16 v40, 0x0

    .line 173
    .local v40, "matcher":Lbtools/codec/WaypointMatcher;
    :goto_c
    if-eqz v40, :cond_c

    move-object/from16 v0, v60

    iget-object v5, v0, Lbtools/codec/TagValueWrapper;->data:[B

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-interface {v0, v1, v2, v5}, Lbtools/codec/WaypointMatcher;->startNode(II[B)V

    .line 174
    :cond_c
    add-int v35, v34, v19

    .line 175
    .local v35, "ilontarget":I
    add-int v33, v32, v17

    .line 177
    .local v33, "ilattarget":I
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->decodeVarBits()I

    move-result v57

    .line 178
    .local v57, "transcount":I
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_d

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***       decoding geometry with count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    :cond_d
    add-int/lit8 v15, v57, 0x1

    .line 180
    .local v15, "count":I
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_d
    move/from16 v0, v29

    move/from16 v1, v57

    if-ge v0, v1, :cond_18

    .line 182
    div-int v5, v19, v15

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodePredictedValue(I)I

    move-result v18

    .line 183
    .local v18, "dlon":I
    div-int v5, v17, v15

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodePredictedValue(I)I

    move-result v16

    .line 184
    .local v16, "dlat":I
    sub-int v19, v19, v18

    .line 185
    sub-int v17, v17, v16

    .line 186
    add-int/lit8 v15, v15, -0x1

    .line 187
    invoke-virtual/range {v56 .. v56}, Lbtools/codec/NoisyDiffCoder;->decodeSignedValue()I

    move-result v20

    .line 188
    .local v20, "elediff":I
    if-eqz v60, :cond_e

    .line 190
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 192
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 195
    :cond_e
    if-eqz v40, :cond_f

    sub-int v5, v35, v19

    sub-int v6, v33, v17

    move-object/from16 v0, v40

    invoke-interface {v0, v5, v6}, Lbtools/codec/WaypointMatcher;->transferNode(II)V

    .line 180
    :cond_f
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 75
    .end local v15    # "count":I
    .end local v16    # "dlat":I
    .end local v17    # "dlat_remaining":I
    .end local v18    # "dlon":I
    .end local v19    # "dlon_remaining":I
    .end local v20    # "elediff":I
    .end local v26    # "featureId":I
    .end local v27    # "finaldatasize":I
    .end local v29    # "i":I
    .end local v32    # "ilat":I
    .end local v33    # "ilattarget":I
    .end local v34    # "ilon":I
    .end local v35    # "ilontarget":I
    .end local v36    # "isReverse":Z
    .end local v38    # "li":I
    .end local v39    # "links":I
    .end local v40    # "matcher":Lbtools/codec/WaypointMatcher;
    .end local v44    # "nodeIdx":I
    .end local v47    # "nodeTags":Lbtools/codec/TagValueWrapper;
    .end local v48    # "reverseLinks":Lbtools/codec/LinkedListContainer;
    .end local v50    # "selev":I
    .end local v52    # "sizeoffset":I
    .end local v55    # "trExceptions":S
    .end local v57    # "transcount":I
    .end local v58    # "validBits":[I
    .end local v60    # "wayTags":Lbtools/codec/TagValueWrapper;
    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Lbtools/codec/DataBuffers;->bbuf1:[B

    goto/16 :goto_5

    .line 96
    .restart local v26    # "featureId":I
    .restart local v27    # "finaldatasize":I
    .restart local v32    # "ilat":I
    .restart local v34    # "ilon":I
    .restart local v48    # "reverseLinks":Lbtools/codec/LinkedListContainer;
    .restart local v50    # "selev":I
    .restart local v55    # "trExceptions":S
    .restart local v58    # "validBits":[I
    :cond_11
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyNumber(I)I

    move-result v13

    .line 98
    .local v13, "bitsize":I
    const/4 v5, 0x2

    move/from16 v0, v26

    if-ne v0, v5, :cond_12

    .line 100
    const/16 v5, 0x3ff

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeBounded(I)I

    move-result v5

    int-to-short v0, v5

    move/from16 v55, v0

    goto/16 :goto_7

    .line 102
    :cond_12
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_13

    .line 104
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeBoolean(Z)V

    .line 105
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->writeShort(I)V

    .line 106
    const/16 v55, 0x0

    .line 108
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->decodeBit()Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeBoolean(Z)V

    .line 109
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v5

    add-int v5, v5, v34

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeInt(I)V

    .line 110
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v5

    add-int v5, v5, v32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeInt(I)V

    .line 111
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v5

    add-int v5, v5, v34

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeInt(I)V

    .line 112
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v5

    add-int v5, v5, v32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeInt(I)V

    goto/16 :goto_7

    .line 116
    :cond_13
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_e
    move/from16 v0, v29

    if-ge v0, v13, :cond_6

    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->decodeBit()Z

    add-int/lit8 v29, v29, 0x1

    goto :goto_e

    .line 124
    .end local v13    # "bitsize":I
    .end local v29    # "i":I
    .restart local v47    # "nodeTags":Lbtools/codec/TagValueWrapper;
    :cond_14
    move-object/from16 v0, v47

    iget-object v5, v0, Lbtools/codec/TagValueWrapper;->data:[B

    goto/16 :goto_8

    .line 144
    .restart local v36    # "isReverse":Z
    .restart local v38    # "li":I
    .restart local v39    # "links":I
    .restart local v44    # "nodeIdx":I
    .restart local v52    # "sizeoffset":I
    :cond_15
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->decodeBit()Z

    move-result v36

    .line 145
    invoke-virtual/range {v23 .. v23}, Lbtools/codec/NoisyDiffCoder;->decodeSignedValue()I

    move-result v19

    .line 146
    .restart local v19    # "dlon_remaining":I
    invoke-virtual/range {v22 .. v22}, Lbtools/codec/NoisyDiffCoder;->decodeSignedValue()I

    move-result v17

    .restart local v17    # "dlat_remaining":I
    goto/16 :goto_a

    .line 148
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_b

    .restart local v60    # "wayTags":Lbtools/codec/TagValueWrapper;
    :cond_17
    move-object/from16 v40, p6

    .line 172
    goto/16 :goto_c

    .line 197
    .restart local v15    # "count":I
    .restart local v29    # "i":I
    .restart local v33    # "ilattarget":I
    .restart local v35    # "ilontarget":I
    .restart local v40    # "matcher":Lbtools/codec/WaypointMatcher;
    .restart local v57    # "transcount":I
    :cond_18
    if-eqz v40, :cond_19

    move-object/from16 v0, v40

    move/from16 v1, v35

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lbtools/codec/WaypointMatcher;->endNode(II)V

    .line 199
    .end local v15    # "count":I
    .end local v29    # "i":I
    .end local v33    # "ilattarget":I
    .end local v35    # "ilontarget":I
    .end local v40    # "matcher":Lbtools/codec/WaypointMatcher;
    .end local v57    # "transcount":I
    :cond_19
    if-eqz v60, :cond_1a

    .line 201
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->injectSize(I)V

    .line 128
    :cond_1a
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 204
    .end local v17    # "dlat_remaining":I
    .end local v19    # "dlon_remaining":I
    .end local v36    # "isReverse":Z
    .end local v44    # "nodeIdx":I
    .end local v52    # "sizeoffset":I
    .end local v60    # "wayTags":Lbtools/codec/TagValueWrapper;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/codec/MicroCache2;->aboffset:I

    aput v6, v5, v41

    .line 85
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    .line 208
    .end local v26    # "featureId":I
    .end local v32    # "ilat":I
    .end local v34    # "ilon":I
    .end local v38    # "li":I
    .end local v39    # "links":I
    .end local v47    # "nodeTags":Lbtools/codec/TagValueWrapper;
    .end local v55    # "trExceptions":S
    :cond_1c
    const/16 v28, 0x0

    .line 209
    .local v28, "finalsize":I
    const/16 v54, 0x0

    .line 210
    .local v54, "startpos":I
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v0, v29

    if-ge v0, v5, :cond_1e

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    aget v21, v5, v29

    .line 213
    .local v21, "endpos":I
    shr-int/lit8 v5, v29, 0x5

    aget v5, v58, v5

    const/4 v6, 0x1

    shl-int v6, v6, v29

    and-int/2addr v5, v6

    if-eqz v5, :cond_1d

    .line 215
    sub-int v5, v21, v54

    add-int v27, v27, v5

    .line 216
    add-int/lit8 v28, v28, 0x1

    .line 218
    :cond_1d
    move/from16 v54, v21

    .line 210
    add-int/lit8 v29, v29, 0x1

    goto :goto_f

    .line 221
    .end local v21    # "endpos":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lbtools/codec/MicroCache2;->ab:[B

    .line 222
    .local v10, "abOld":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/codec/MicroCache2;->faid:[I

    move-object/from16 v24, v0

    .line 223
    .local v24, "faidOld":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/codec/MicroCache2;->fapos:[I

    move-object/from16 v25, v0

    .line 224
    .local v25, "faposOld":[I
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v51, v0

    .line 225
    .local v51, "sizeOld":I
    move/from16 v0, v27

    new-array v5, v0, [B

    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->ab:[B

    .line 226
    move/from16 v0, v28

    new-array v5, v0, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    .line 227
    move/from16 v0, v28

    new-array v5, v0, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    .line 228
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    .line 229
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->size:I

    .line 231
    const/16 v54, 0x0

    .line 232
    const/16 v41, 0x0

    :goto_10
    move/from16 v0, v41

    move/from16 v1, v51

    if-ge v0, v1, :cond_23

    .line 234
    aget v21, v25, v41

    .line 235
    .restart local v21    # "endpos":I
    shr-int/lit8 v5, v41, 0x5

    aget v5, v58, v5

    const/4 v6, 0x1

    shl-int v6, v6, v41

    and-int/2addr v5, v6

    if-eqz v5, :cond_22

    .line 237
    sub-int v37, v21, v54

    .line 238
    .local v37, "len":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->ab:[B

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/codec/MicroCache2;->aboffset:I

    move/from16 v0, v54

    move/from16 v1, v37

    invoke-static {v10, v0, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_1f

    .line 240
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** copied "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->aboffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_1f
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    add-int v5, v5, v37

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    .line 243
    move-object/from16 v0, v48

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lbtools/codec/LinkedListContainer;->initList(I)I

    move-result v14

    .line 244
    .local v14, "cnt":I
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_20

    .line 245
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** appending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reverse links for node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_20
    const/16 v49, 0x0

    .local v49, "ri":I
    :goto_11
    move/from16 v0, v49

    if-ge v0, v14, :cond_21

    .line 249
    invoke-virtual/range {v48 .. v48}, Lbtools/codec/LinkedListContainer;->getDataElement()I

    move-result v44

    .line 250
    .restart local v44    # "nodeIdx":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->writeSizePlaceHolder()I

    move-result v52

    .line 251
    .restart local v52    # "sizeoffset":I
    aget v5, v12, v44

    aget v6, v12, v41

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 252
    aget v5, v11, v44

    aget v6, v11, v41

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->writeVarLengthSigned(I)V

    .line 253
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lbtools/codec/MicroCache2;->writeModeAndDesc(Z[B)V

    .line 254
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->injectSize(I)V

    .line 247
    add-int/lit8 v49, v49, 0x1

    goto :goto_11

    .line 256
    .end local v44    # "nodeIdx":I
    .end local v52    # "sizeoffset":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/codec/MicroCache2;->size:I

    aget v7, v24, v41

    aput v7, v5, v6

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->aboffset:I

    aput v7, v5, v6

    .line 258
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->size:I

    .line 260
    .end local v14    # "cnt":I
    .end local v37    # "len":I
    .end local v49    # "ri":I
    :cond_22
    move/from16 v54, v21

    .line 232
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_10

    .line 262
    .end local v21    # "endpos":I
    :cond_23
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->init(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public encodeMicroCache([B)I
    .locals 58
    .param p1, "buffer"    # [B

    .prologue
    .line 312
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v27, "idMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v41, 0x0

    .local v41, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v0, v41

    if-ge v0, v5, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    aget v5, v5, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->expandId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v41, v41, 0x1

    goto :goto_0

    .line 318
    :cond_0
    new-instance v40, Lbtools/codec/IntegerFifo3Pass;

    const/16 v5, 0x100

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Lbtools/codec/IntegerFifo3Pass;-><init>(I)V

    .line 319
    .local v40, "linkCounts":Lbtools/codec/IntegerFifo3Pass;
    new-instance v54, Lbtools/codec/IntegerFifo3Pass;

    const/16 v5, 0x100

    move-object/from16 v0, v54

    invoke-direct {v0, v5}, Lbtools/codec/IntegerFifo3Pass;-><init>(I)V

    .line 320
    .local v54, "transCounts":Lbtools/codec/IntegerFifo3Pass;
    new-instance v50, Lbtools/codec/IntegerFifo3Pass;

    const/16 v5, 0x10

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lbtools/codec/IntegerFifo3Pass;-><init>(I)V

    .line 322
    .local v50, "restrictionBits":Lbtools/codec/IntegerFifo3Pass;
    new-instance v57, Lbtools/codec/TagValueCoder;

    invoke-direct/range {v57 .. v57}, Lbtools/codec/TagValueCoder;-><init>()V

    .line 323
    .local v57, "wayTagCoder":Lbtools/codec/TagValueCoder;
    new-instance v47, Lbtools/codec/TagValueCoder;

    invoke-direct/range {v47 .. v47}, Lbtools/codec/TagValueCoder;-><init>()V

    .line 324
    .local v47, "nodeTagCoder":Lbtools/codec/TagValueCoder;
    new-instance v46, Lbtools/codec/NoisyDiffCoder;

    invoke-direct/range {v46 .. v46}, Lbtools/codec/NoisyDiffCoder;-><init>()V

    .line 325
    .local v46, "nodeIdxDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v44, Lbtools/codec/NoisyDiffCoder;

    invoke-direct/range {v44 .. v44}, Lbtools/codec/NoisyDiffCoder;-><init>()V

    .line 326
    .local v44, "nodeEleDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v25, Lbtools/codec/NoisyDiffCoder;

    invoke-direct/range {v25 .. v25}, Lbtools/codec/NoisyDiffCoder;-><init>()V

    .line 327
    .local v25, "extLonDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v24, Lbtools/codec/NoisyDiffCoder;

    invoke-direct/range {v24 .. v24}, Lbtools/codec/NoisyDiffCoder;-><init>()V

    .line 328
    .local v24, "extLatDiff":Lbtools/codec/NoisyDiffCoder;
    new-instance v55, Lbtools/codec/NoisyDiffCoder;

    invoke-direct/range {v55 .. v55}, Lbtools/codec/NoisyDiffCoder;-><init>()V

    .line 330
    .local v55, "transEleDiff":Lbtools/codec/NoisyDiffCoder;
    const/16 v42, 0x0

    .line 332
    .local v42, "netdatasize":I
    const/16 v48, 0x1

    .line 334
    .local v48, "pass":I
    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v48

    if-ne v0, v5, :cond_b

    const/16 v21, 0x1

    .line 335
    .local v21, "dostats":Z
    :goto_2
    sget-boolean v5, Lbtools/codec/MicroCache2;->debug:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x3

    move/from16 v0, v48

    if-ne v0, v5, :cond_c

    const/16 v20, 0x1

    .line 337
    .local v20, "dodebug":Z
    :goto_3
    const/4 v5, 0x3

    move/from16 v0, v48

    if-ge v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    move-object/from16 v0, p0

    iget v6, v0, Lbtools/codec/MicroCache2;->size:I

    add-int/lit8 v6, v6, -0x1

    aget v42, v5, v6

    .line 339
    :cond_1
    new-instance v4, Lbtools/codec/StatCoderContext;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lbtools/codec/StatCoderContext;-><init>([B)V

    .line 341
    .local v4, "bc":Lbtools/codec/StatCoderContext;
    invoke-virtual/range {v40 .. v40}, Lbtools/codec/IntegerFifo3Pass;->init()V

    .line 342
    invoke-virtual/range {v54 .. v54}, Lbtools/codec/IntegerFifo3Pass;->init()V

    .line 343
    invoke-virtual/range {v50 .. v50}, Lbtools/codec/IntegerFifo3Pass;->init()V

    .line 345
    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lbtools/codec/TagValueCoder;->encodeDictionary(Lbtools/util/BitCoderContext;)V

    .line 346
    if-eqz v21, :cond_2

    const-string v5, "wayTagDictionary"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 347
    :cond_2
    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lbtools/codec/TagValueCoder;->encodeDictionary(Lbtools/util/BitCoderContext;)V

    .line 348
    if-eqz v21, :cond_3

    const-string v5, "nodeTagDictionary"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 349
    :cond_3
    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lbtools/codec/NoisyDiffCoder;->encodeDictionary(Lbtools/codec/StatCoderContext;)V

    .line 350
    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lbtools/codec/NoisyDiffCoder;->encodeDictionary(Lbtools/codec/StatCoderContext;)V

    .line 351
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lbtools/codec/NoisyDiffCoder;->encodeDictionary(Lbtools/codec/StatCoderContext;)V

    .line 352
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lbtools/codec/NoisyDiffCoder;->encodeDictionary(Lbtools/codec/StatCoderContext;)V

    .line 353
    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lbtools/codec/NoisyDiffCoder;->encodeDictionary(Lbtools/codec/StatCoderContext;)V

    .line 354
    if-eqz v21, :cond_4

    const-string v5, "noisebits"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 355
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyNumber(II)V

    .line 356
    if-eqz v21, :cond_5

    const-string v5, "nodecount"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 357
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->size:I

    const/high16 v8, 0x20000000

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lbtools/codec/StatCoderContext;->encodeSortedArray([IIIII)V

    .line 358
    if-eqz v21, :cond_6

    const-string v5, "node-positions"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 359
    :cond_6
    const/16 v5, 0xa

    move/from16 v0, v42

    invoke-virtual {v4, v0, v5}, Lbtools/codec/StatCoderContext;->encodeNoisyNumber(II)V

    .line 360
    if-eqz v21, :cond_7

    const-string v5, "netdatasize"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 361
    :cond_7
    if-eqz v20, :cond_8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** encoding cache of size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    :cond_8
    const/16 v37, 0x0

    .line 364
    .local v37, "lastSelev":I
    const/16 v41, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->size:I

    move/from16 v0, v41

    if-ge v0, v5, :cond_27

    .line 366
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->startPos(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    .line 367
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->fapos:[I

    aget v5, v5, v41

    move-object/from16 v0, p0

    iput v5, v0, Lbtools/codec/MicroCache2;->aboffsetEnd:I

    .line 368
    if-eqz v20, :cond_9

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** encoding node "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->aboffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lbtools/codec/MicroCache2;->aboffsetEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lbtools/codec/MicroCache2;->faid:[I

    aget v5, v5, v41

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbtools/codec/MicroCache2;->expandId(I)J

    move-result-wide v28

    .line 371
    .local v28, "id64":J
    const/16 v5, 0x20

    shr-long v6, v28, v5

    long-to-int v0, v6

    move/from16 v33, v0

    .line 372
    .local v33, "ilon":I
    const-wide/16 v6, -0x1

    and-long v6, v6, v28

    long-to-int v0, v6

    move/from16 v31, v0

    .line 375
    .local v31, "ilat":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 377
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readShort()S

    move-result v23

    .line 378
    .local v23, "exceptions":S
    if-eqz v23, :cond_a

    .line 380
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 381
    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyNumber(II)V

    .line 382
    const/16 v5, 0x3ff

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0x3ff

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeBounded(II)V

    .line 384
    :cond_a
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 385
    invoke-virtual/range {v50 .. v50}, Lbtools/codec/IntegerFifo3Pass;->getNext()I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyNumber(II)V

    .line 386
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->getWritingBitPosition()J

    move-result-wide v10

    .line 387
    .local v10, "b0":J
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->encodeBit(Z)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v5

    sub-int v5, v5, v33

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v5

    sub-int v5, v5, v31

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v5

    sub-int v5, v5, v33

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readInt()I

    move-result v5

    sub-int v5, v5, v31

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 392
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->getWritingBitPosition()J

    move-result-wide v6

    sub-long/2addr v6, v10

    long-to-int v5, v6

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Lbtools/codec/IntegerFifo3Pass;->add(I)V

    goto :goto_5

    .line 334
    .end local v4    # "bc":Lbtools/codec/StatCoderContext;
    .end local v10    # "b0":J
    .end local v20    # "dodebug":Z
    .end local v21    # "dostats":Z
    .end local v23    # "exceptions":S
    .end local v28    # "id64":J
    .end local v31    # "ilat":I
    .end local v33    # "ilon":I
    .end local v37    # "lastSelev":I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 335
    .restart local v21    # "dostats":Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v4    # "bc":Lbtools/codec/StatCoderContext;
    .restart local v20    # "dodebug":Z
    .restart local v28    # "id64":J
    .restart local v31    # "ilat":I
    .restart local v33    # "ilon":I
    .restart local v37    # "lastSelev":I
    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 396
    if-eqz v21, :cond_e

    const-string v5, "extradata"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 398
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readShort()S

    move-result v51

    .line 399
    .local v51, "selev":I
    sub-int v5, v51, v37

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 400
    if-eqz v21, :cond_f

    const-string v5, "nodeele"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 401
    :cond_f
    move/from16 v37, v51

    .line 402
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readVarBytes()[B

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lbtools/codec/TagValueCoder;->encodeTagValueSet([B)V

    .line 403
    if-eqz v21, :cond_10

    const-string v5, "nodeTagIdx"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 404
    :cond_10
    invoke-virtual/range {v40 .. v40}, Lbtools/codec/IntegerFifo3Pass;->getNext()I

    move-result v43

    .line 405
    .local v43, "nlinks":I
    if-eqz v20, :cond_11

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** nlinks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    :cond_11
    const/4 v5, 0x1

    move/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lbtools/codec/StatCoderContext;->encodeNoisyNumber(II)V

    .line 407
    if-eqz v21, :cond_12

    const-string v5, "link-counts"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 409
    :cond_12
    const/16 v43, 0x0

    .line 410
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lbtools/codec/MicroCache2;->aboffset:I

    move/from16 v53, v0

    .line 414
    .local v53, "startPointer":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->getEndPointer()I

    move-result v22

    .line 416
    .local v22, "endPointer":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readVarLengthSigned()I

    move-result v5

    add-int v34, v33, v5

    .line 417
    .local v34, "ilonlink":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readVarLengthSigned()I

    move-result v5

    add-int v32, v31, v5

    .line 419
    .local v32, "ilatlink":I
    invoke-virtual/range {p0 .. p0}, Lbtools/codec/MicroCache2;->readVarLengthUnsigned()I

    move-result v52

    .line 420
    .local v52, "sizecode":I
    and-int/lit8 v5, v52, 0x1

    if-eqz v5, :cond_16

    const/16 v36, 0x1

    .line 421
    .local v36, "isReverse":Z
    :goto_7
    shr-int/lit8 v14, v52, 0x1

    .line 422
    .local v14, "descSize":I
    const/4 v15, 0x0

    .line 423
    .local v15, "description":[B
    if-lez v14, :cond_14

    .line 425
    new-array v15, v14, [B

    .line 426
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbtools/codec/MicroCache2;->readFully([B)V

    .line 429
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lbtools/codec/MicroCache2;->isInternal(II)Z

    move-result v35

    .line 430
    .local v35, "isInternal":Z
    if-eqz v36, :cond_17

    if-eqz v35, :cond_17

    .line 432
    if-eqz v20, :cond_15

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** NOT encoding link reverse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " internal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    :cond_15
    move-object/from16 v0, p0

    iget v5, v0, Lbtools/codec/MicroCache2;->aboffset:I

    sub-int v5, v5, v53

    sub-int v42, v42, v5

    .line 434
    goto :goto_6

    .line 420
    .end local v14    # "descSize":I
    .end local v15    # "description":[B
    .end local v35    # "isInternal":Z
    .end local v36    # "isReverse":Z
    :cond_16
    const/16 v36, 0x0

    goto :goto_7

    .line 436
    .restart local v14    # "descSize":I
    .restart local v15    # "description":[B
    .restart local v35    # "isInternal":Z
    .restart local v36    # "isReverse":Z
    :cond_17
    if-eqz v20, :cond_18

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** encoding link reverse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " internal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_18
    add-int/lit8 v43, v43, 0x1

    .line 439
    if-eqz v35, :cond_23

    .line 441
    move/from16 v0, v34

    int-to-long v6, v0

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    move/from16 v0, v32

    int-to-long v8, v0

    or-long v38, v6, v8

    .line 442
    .local v38, "link64":J
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 443
    .local v30, "idx":Ljava/lang/Integer;
    if-nez v30, :cond_19

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ups: internal not found?"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    :cond_19
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v45

    .line 445
    .local v45, "nodeIdx":I
    if-eqz v20, :cond_1a

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** target nodeIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    :cond_1a
    move/from16 v0, v45

    move/from16 v1, v41

    if-ne v0, v1, :cond_1b

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ups: self ref?"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    :cond_1b
    sub-int v5, v45, v41

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 448
    if-eqz v21, :cond_1c

    const-string v5, "nodeIdx"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 458
    .end local v30    # "idx":Ljava/lang/Integer;
    .end local v38    # "link64":J
    .end local v45    # "nodeIdx":I
    :cond_1c
    :goto_8
    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Lbtools/codec/TagValueCoder;->encodeTagValueSet([B)V

    .line 459
    if-eqz v21, :cond_1d

    const-string v5, "wayDescIdx"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 461
    :cond_1d
    if-nez v36, :cond_13

    .line 463
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lbtools/codec/MicroCache2;->readDataUntil(I)[B

    move-result-object v26

    .line 465
    .local v26, "geometry":[B
    invoke-virtual/range {v54 .. v54}, Lbtools/codec/IntegerFifo3Pass;->getNext()I

    move-result v12

    .line 466
    .local v12, "count":I
    if-eqz v20, :cond_1e

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** encoding geometry with count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    :cond_1e
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "count":I
    .local v13, "count":I
    invoke-virtual {v4, v12}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 468
    if-eqz v21, :cond_1f

    const-string v5, "transcount"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 469
    :cond_1f
    const/16 v56, 0x0

    .line 470
    .local v56, "transcount":I
    if-eqz v26, :cond_24

    .line 472
    sub-int v19, v34, v33

    .line 473
    .local v19, "dlon_remaining":I
    sub-int v17, v32, v31

    .line 475
    .local v17, "dlat_remaining":I
    new-instance v49, Lbtools/util/ByteDataReader;

    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lbtools/util/ByteDataReader;-><init>([B)V

    .local v49, "r":Lbtools/util/ByteDataReader;
    move v12, v13

    .line 476
    .end local v13    # "count":I
    .restart local v12    # "count":I
    :cond_20
    :goto_9
    invoke-virtual/range {v49 .. v49}, Lbtools/util/ByteDataReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 478
    add-int/lit8 v56, v56, 0x1

    .line 480
    invoke-virtual/range {v49 .. v49}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v18

    .line 481
    .local v18, "dlon":I
    invoke-virtual/range {v49 .. v49}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v16

    .line 482
    .local v16, "dlat":I
    div-int v5, v19, v12

    move/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lbtools/codec/StatCoderContext;->encodePredictedValue(II)V

    .line 483
    div-int v5, v17, v12

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Lbtools/codec/StatCoderContext;->encodePredictedValue(II)V

    .line 484
    sub-int v19, v19, v18

    .line 485
    sub-int v17, v17, v16

    .line 486
    const/4 v5, 0x1

    if-le v12, v5, :cond_21

    add-int/lit8 v12, v12, -0x1

    .line 487
    :cond_21
    if-eqz v21, :cond_22

    const-string v5, "transpos"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    .line 488
    :cond_22
    invoke-virtual/range {v49 .. v49}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v5

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 489
    if-eqz v21, :cond_20

    const-string v5, "transele"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    goto :goto_9

    .line 452
    .end local v12    # "count":I
    .end local v16    # "dlat":I
    .end local v17    # "dlat_remaining":I
    .end local v18    # "dlon":I
    .end local v19    # "dlon_remaining":I
    .end local v26    # "geometry":[B
    .end local v49    # "r":Lbtools/util/ByteDataReader;
    .end local v56    # "transcount":I
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 453
    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lbtools/codec/StatCoderContext;->encodeBit(Z)V

    .line 454
    sub-int v5, v34, v33

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 455
    sub-int v5, v32, v31

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lbtools/codec/NoisyDiffCoder;->encodeSignedValue(I)V

    .line 456
    if-eqz v21, :cond_1c

    const-string v5, "externalNode"

    invoke-virtual {v4, v5}, Lbtools/codec/StatCoderContext;->assignBits(Ljava/lang/String;)V

    goto/16 :goto_8

    .restart local v13    # "count":I
    .restart local v26    # "geometry":[B
    .restart local v56    # "transcount":I
    :cond_24
    move v12, v13

    .line 492
    .end local v13    # "count":I
    .restart local v12    # "count":I
    :cond_25
    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lbtools/codec/IntegerFifo3Pass;->add(I)V

    goto/16 :goto_6

    .line 495
    .end local v12    # "count":I
    .end local v14    # "descSize":I
    .end local v15    # "description":[B
    .end local v22    # "endPointer":I
    .end local v26    # "geometry":[B
    .end local v32    # "ilatlink":I
    .end local v34    # "ilonlink":I
    .end local v35    # "isInternal":Z
    .end local v36    # "isReverse":Z
    .end local v52    # "sizecode":I
    .end local v53    # "startPointer":I
    .end local v56    # "transcount":I
    :cond_26
    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lbtools/codec/IntegerFifo3Pass;->add(I)V

    .line 364
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_4

    .line 497
    .end local v28    # "id64":J
    .end local v31    # "ilat":I
    .end local v33    # "ilon":I
    .end local v43    # "nlinks":I
    .end local v51    # "selev":I
    :cond_27
    const/4 v5, 0x3

    move/from16 v0, v48

    if-ne v0, v5, :cond_28

    .line 499
    invoke-virtual {v4}, Lbtools/codec/StatCoderContext;->getEncodedLength()I

    move-result v5

    return v5

    .line 332
    :cond_28
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_1
.end method

.method public expandId(I)J
    .locals 10
    .param p1, "id32"    # I

    .prologue
    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "dlon":I
    const/4 v1, 0x0

    .line 271
    .local v1, "dlat":I
    const/4 v0, 0x1

    .local v0, "bm":I
    :goto_0
    const v5, 0x8000

    if-ge v0, v5, :cond_2

    .line 273
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    or-int/2addr v2, v0

    .line 274
    :cond_0
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_1

    or-int/2addr v1, v0

    .line 275
    :cond_1
    shr-int/lit8 p1, p1, 0x2

    .line 271
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_2
    iget v5, p0, Lbtools/codec/MicroCache2;->lonBase:I

    add-int v4, v5, v2

    .line 279
    .local v4, "lon32":I
    iget v5, p0, Lbtools/codec/MicroCache2;->latBase:I

    add-int v3, v5, v1

    .line 281
    .local v3, "lat32":I
    int-to-long v6, v4

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    int-to-long v8, v3

    or-long/2addr v6, v8

    return-wide v6
.end method

.method public isInternal(II)Z
    .locals 2
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 305
    iget v0, p0, Lbtools/codec/MicroCache2;->lonBase:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lbtools/codec/MicroCache2;->lonBase:I

    iget v1, p0, Lbtools/codec/MicroCache2;->cellsize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lbtools/codec/MicroCache2;->latBase:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lbtools/codec/MicroCache2;->latBase:I

    iget v1, p0, Lbtools/codec/MicroCache2;->cellsize:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readUnified(ILbtools/util/IByteArrayUnifier;)[B
    .locals 3
    .param p1, "len"    # I
    .param p2, "u"    # Lbtools/util/IByteArrayUnifier;

    .prologue
    .line 32
    iget-object v1, p0, Lbtools/codec/MicroCache2;->ab:[B

    iget v2, p0, Lbtools/codec/MicroCache2;->aboffset:I

    invoke-interface {p2, v1, v2, p1}, Lbtools/util/IByteArrayUnifier;->unify([BII)[B

    move-result-object v0

    .line 33
    .local v0, "b":[B
    iget v1, p0, Lbtools/codec/MicroCache2;->aboffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lbtools/codec/MicroCache2;->aboffset:I

    .line 34
    return-object v0
.end method

.method public shrinkId(J)I
    .locals 9
    .param p1, "id64"    # J

    .prologue
    .line 287
    const/16 v6, 0x20

    shr-long v6, p1, v6

    long-to-int v5, v6

    .line 288
    .local v5, "lon32":I
    const-wide/16 v6, -0x1

    and-long/2addr v6, p1

    long-to-int v4, v6

    .line 289
    .local v4, "lat32":I
    iget v6, p0, Lbtools/codec/MicroCache2;->lonBase:I

    sub-int v2, v5, v6

    .line 290
    .local v2, "dlon":I
    iget v6, p0, Lbtools/codec/MicroCache2;->latBase:I

    sub-int v1, v4, v6

    .line 291
    .local v1, "dlat":I
    const/4 v3, 0x0

    .line 293
    .local v3, "id32":I
    const/16 v0, 0x4000

    .local v0, "bm":I
    :goto_0
    if-lez v0, :cond_2

    .line 295
    shl-int/lit8 v3, v3, 0x2

    .line 296
    and-int v6, v2, v0

    if-eqz v6, :cond_0

    or-int/lit8 v3, v3, 0x1

    .line 297
    :cond_0
    and-int v6, v1, v0

    if-eqz v6, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 293
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    return v3
.end method
