.class public Lbtools/codec/MicroCache;
.super Lbtools/util/ByteDataWriter;
.source "MicroCache.java"


# static fields
.field public static debug:Z


# instance fields
.field private delbytes:I

.field private delcount:I

.field protected faid:[I

.field protected fapos:[I

.field public ghost:Z

.field private p2size:I

.field protected size:I

.field public virgin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lbtools/codec/MicroCache;->debug:Z

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2
    .param p1, "ab"    # [B

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lbtools/util/ByteDataWriter;-><init>([B)V

    .line 25
    iput v1, p0, Lbtools/codec/MicroCache;->size:I

    .line 27
    iput v1, p0, Lbtools/codec/MicroCache;->delcount:I

    .line 28
    iput v1, p0, Lbtools/codec/MicroCache;->delbytes:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/codec/MicroCache;->virgin:Z

    .line 34
    iput-boolean v1, p0, Lbtools/codec/MicroCache;->ghost:Z

    .line 41
    return-void
.end method

.method private _compareWith(Lbtools/codec/MicroCache;)Ljava/lang/String;
    .locals 8
    .param p1, "mc"    # Lbtools/codec/MicroCache;

    .prologue
    .line 275
    iget v5, p0, Lbtools/codec/MicroCache;->size:I

    iget v6, p1, Lbtools/codec/MicroCache;->size:I

    if-eq v5, v6, :cond_0

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size missmatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lbtools/codec/MicroCache;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lbtools/codec/MicroCache;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    :goto_0
    return-object v5

    .line 279
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lbtools/codec/MicroCache;->size:I

    if-ge v1, v5, :cond_8

    .line 281
    iget-object v5, p0, Lbtools/codec/MicroCache;->faid:[I

    aget v5, v5, v1

    iget-object v6, p1, Lbtools/codec/MicroCache;->faid:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_1

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "faid missmatch at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbtools/codec/MicroCache;->faid:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lbtools/codec/MicroCache;->faid:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 285
    :cond_1
    if-lez v1, :cond_2

    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    add-int/lit8 v6, v1, -0x1

    aget v4, v5, v6

    .line 286
    .local v4, "start":I
    :goto_2
    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v5, v5, v1

    iget-object v6, p1, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v6, v1

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v0, v5, v1

    .line 287
    .local v0, "end":I
    :goto_3
    sub-int v2, v0, v4

    .line 288
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 290
    iget-object v5, p1, Lbtools/codec/MicroCache;->ab:[B

    array-length v5, v5

    add-int v6, v4, v3

    if-gt v5, v6, :cond_4

    .line 292
    const-string v5, "data buffer too small"

    goto :goto_0

    .line 285
    .end local v0    # "end":I
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v4    # "start":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 286
    .restart local v4    # "start":I
    :cond_3
    iget-object v5, p1, Lbtools/codec/MicroCache;->fapos:[I

    aget v0, v5, v1

    goto :goto_3

    .line 294
    .restart local v0    # "end":I
    .restart local v2    # "len":I
    .restart local v3    # "offset":I
    :cond_4
    iget-object v5, p0, Lbtools/codec/MicroCache;->ab:[B

    add-int v6, v4, v3

    aget-byte v5, v5, v6

    iget-object v6, p1, Lbtools/codec/MicroCache;->ab:[B

    add-int v7, v4, v3

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_5

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data missmatch at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 288
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 299
    :cond_6
    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v5, v5, v1

    iget-object v6, p1, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_7

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fapos missmatch at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 279
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 304
    .end local v0    # "end":I
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v4    # "start":I
    :cond_8
    iget v5, p0, Lbtools/codec/MicroCache;->aboffset:I

    iget v6, p1, Lbtools/codec/MicroCache;->aboffset:I

    if-eq v5, v6, :cond_9

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "datasize missmatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lbtools/codec/MicroCache;->aboffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lbtools/codec/MicroCache;->aboffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 308
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static emptyCache()Lbtools/codec/MicroCache;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lbtools/codec/MicroCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbtools/codec/MicroCache;-><init>([B)V

    return-object v0
.end method

.method private summary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbtools/codec/MicroCache;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aboffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbtools/codec/MicroCache;->aboffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lbtools/codec/MicroCache;->size:I

    if-ge v0, v2, :cond_0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nidx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " faid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbtools/codec/MicroCache;->faid:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fapos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final collect(I)I
    .locals 14
    .param p1, "threshold"    # I

    .prologue
    .line 140
    iget v12, p0, Lbtools/codec/MicroCache;->delcount:I

    if-gt v12, p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lbtools/codec/MicroCache;->virgin:Z

    .line 147
    iget v12, p0, Lbtools/codec/MicroCache;->size:I

    iget v13, p0, Lbtools/codec/MicroCache;->delcount:I

    sub-int v9, v12, v13

    .line 148
    .local v9, "nsize":I
    if-nez v9, :cond_1

    .line 150
    const/4 v12, 0x0

    iput-object v12, p0, Lbtools/codec/MicroCache;->faid:[I

    .line 151
    const/4 v12, 0x0

    iput-object v12, p0, Lbtools/codec/MicroCache;->fapos:[I

    .line 180
    :goto_1
    iget v0, p0, Lbtools/codec/MicroCache;->delbytes:I

    .line 181
    .local v0, "deleted":I
    invoke-virtual {p0, v9}, Lbtools/codec/MicroCache;->init(I)V

    goto :goto_0

    .line 155
    .end local v0    # "deleted":I
    :cond_1
    new-array v7, v9, [I

    .line 156
    .local v7, "nfaid":[I
    new-array v8, v9, [I

    .line 157
    .local v8, "nfapos":[I
    const/4 v3, 0x0

    .line 159
    .local v3, "idx":I
    iget-object v12, p0, Lbtools/codec/MicroCache;->ab:[B

    array-length v12, v12

    iget v13, p0, Lbtools/codec/MicroCache;->delbytes:I

    sub-int/2addr v12, v13

    new-array v5, v12, [B

    .line 160
    .local v5, "nab":[B
    const/4 v6, 0x0

    .line 161
    .local v6, "nab_off":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v12, p0, Lbtools/codec/MicroCache;->size:I

    if-ge v2, v12, :cond_3

    .line 163
    iget-object v12, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v10, v12, v2

    .line 164
    .local v10, "pos":I
    const/high16 v12, -0x80000000

    and-int/2addr v12, v10

    if-nez v12, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Lbtools/codec/MicroCache;->startPos(I)I

    move-result v11

    .line 167
    .local v11, "start":I
    iget-object v12, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v1, v12, v2

    .line 168
    .local v1, "end":I
    sub-int v4, v1, v11

    .line 169
    .local v4, "len":I
    iget-object v12, p0, Lbtools/codec/MicroCache;->ab:[B

    invoke-static {v12, v11, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v12, p0, Lbtools/codec/MicroCache;->faid:[I

    aget v12, v12, v2

    aput v12, v7, v3

    .line 171
    add-int/2addr v6, v4

    .line 172
    aput v6, v8, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 161
    .end local v1    # "end":I
    .end local v4    # "len":I
    .end local v11    # "start":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    .end local v10    # "pos":I
    :cond_3
    iput-object v7, p0, Lbtools/codec/MicroCache;->faid:[I

    .line 177
    iput-object v8, p0, Lbtools/codec/MicroCache;->fapos:[I

    .line 178
    iput-object v5, p0, Lbtools/codec/MicroCache;->ab:[B

    goto :goto_1
.end method

.method public compareWith(Lbtools/codec/MicroCache;)Ljava/lang/String;
    .locals 4
    .param p1, "mc"    # Lbtools/codec/MicroCache;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lbtools/codec/MicroCache;->_compareWith(Lbtools/codec/MicroCache;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\nencode cache:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lbtools/codec/MicroCache;->summary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v2, "\ndecode cache:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p1}, Lbtools/codec/MicroCache;->summary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final discardNode()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lbtools/codec/MicroCache;->size:I

    invoke-virtual {p0, v0}, Lbtools/codec/MicroCache;->startPos(I)I

    move-result v0

    iput v0, p0, Lbtools/codec/MicroCache;->aboffset:I

    .line 68
    return-void
.end method

.method public encodeMicroCache([B)I
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodeMicroCache for empty cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandId(I)J
    .locals 2
    .param p1, "id32"    # I

    .prologue
    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expandId for empty cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final finishNode(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 60
    iget-object v0, p0, Lbtools/codec/MicroCache;->fapos:[I

    iget v1, p0, Lbtools/codec/MicroCache;->size:I

    iget v2, p0, Lbtools/codec/MicroCache;->aboffset:I

    aput v2, v0, v1

    .line 61
    iget-object v0, p0, Lbtools/codec/MicroCache;->faid:[I

    iget v1, p0, Lbtools/codec/MicroCache;->size:I

    invoke-virtual {p0, p1, p2}, Lbtools/codec/MicroCache;->shrinkId(J)I

    move-result v2

    aput v2, v0, v1

    .line 62
    iget v0, p0, Lbtools/codec/MicroCache;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/codec/MicroCache;->size:I

    .line 63
    return-void
.end method

.method public final getAndClear(J)Z
    .locals 9
    .param p1, "id64"    # J

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x80000000

    .line 96
    iget v6, p0, Lbtools/codec/MicroCache;->size:I

    if-nez v6, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v5

    .line 100
    :cond_1
    invoke-virtual {p0, p1, p2}, Lbtools/codec/MicroCache;->shrinkId(J)I

    move-result v1

    .line 101
    .local v1, "id":I
    iget-object v0, p0, Lbtools/codec/MicroCache;->faid:[I

    .line 102
    .local v0, "a":[I
    iget v4, p0, Lbtools/codec/MicroCache;->p2size:I

    .line 103
    .local v4, "offset":I
    const/4 v2, 0x0

    .line 105
    .local v2, "n":I
    :goto_1
    if-lez v4, :cond_3

    .line 107
    add-int v3, v2, v4

    .line 108
    .local v3, "nn":I
    iget v6, p0, Lbtools/codec/MicroCache;->size:I

    if-ge v3, v6, :cond_2

    aget v6, v0, v3

    if-gt v6, v1, :cond_2

    .line 110
    move v2, v3

    .line 112
    :cond_2
    shr-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_1

    .line 114
    .end local v3    # "nn":I
    :cond_3
    aget v6, v0, v2

    if-ne v6, v1, :cond_0

    .line 116
    iget-object v6, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v6, v2

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 118
    invoke-virtual {p0, v2}, Lbtools/codec/MicroCache;->startPos(I)I

    move-result v5

    iput v5, p0, Lbtools/codec/MicroCache;->aboffset:I

    .line 119
    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v5, v5, v2

    iput v5, p0, Lbtools/codec/MicroCache;->aboffsetEnd:I

    .line 120
    iget-object v5, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v6, v5, v2

    or-int/2addr v6, v7

    aput v6, v5, v2

    .line 121
    iget v5, p0, Lbtools/codec/MicroCache;->delbytes:I

    iget v6, p0, Lbtools/codec/MicroCache;->aboffsetEnd:I

    iget v7, p0, Lbtools/codec/MicroCache;->aboffset:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lbtools/codec/MicroCache;->delbytes:I

    .line 122
    iget v5, p0, Lbtools/codec/MicroCache;->delcount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbtools/codec/MicroCache;->delcount:I

    .line 123
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final getDataSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbtools/codec/MicroCache;->ab:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbtools/codec/MicroCache;->ab:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final getIdForIndex(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lbtools/codec/MicroCache;->faid:[I

    aget v0, v1, p1

    .line 202
    .local v0, "id32":I
    invoke-virtual {p0, v0}, Lbtools/codec/MicroCache;->expandId(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lbtools/codec/MicroCache;->size:I

    return v0
.end method

.method protected init(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 50
    iput p1, p0, Lbtools/codec/MicroCache;->size:I

    .line 51
    iput v0, p0, Lbtools/codec/MicroCache;->delcount:I

    .line 52
    iput v0, p0, Lbtools/codec/MicroCache;->delbytes:I

    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lbtools/codec/MicroCache;->p2size:I

    .line 54
    :goto_0
    iget v0, p0, Lbtools/codec/MicroCache;->p2size:I

    if-le v0, p1, :cond_0

    .line 55
    iget v0, p0, Lbtools/codec/MicroCache;->p2size:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/codec/MicroCache;->p2size:I

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public isInternal(II)Z
    .locals 2
    .param p1, "ilon"    # I
    .param p2, "ilat"    # I

    .prologue
    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "isInternal for empty cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrinkId(J)I
    .locals 2
    .param p1, "id64"    # J

    .prologue
    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shrinkId for empty cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final startPos(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 135
    if-lez p1, :cond_0

    iget-object v0, p0, Lbtools/codec/MicroCache;->fapos:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unGhost()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lbtools/codec/MicroCache;->ghost:Z

    .line 188
    iput v1, p0, Lbtools/codec/MicroCache;->delcount:I

    .line 189
    iput v1, p0, Lbtools/codec/MicroCache;->delbytes:I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbtools/codec/MicroCache;->size:I

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lbtools/codec/MicroCache;->fapos:[I

    aget v2, v1, v0

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method
