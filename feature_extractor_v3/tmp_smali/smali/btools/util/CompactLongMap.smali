.class public Lbtools/util/CompactLongMap;
.super Ljava/lang/Object;
.source "CompactLongMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final MAXLISTS:I = 0x1f

.field private static earlyDuplicateCheck:Z


# instance fields
.field private _maxKeepExponent:I

.field private al:[[J

.field private pa:[I

.field private size:I

.field protected value_in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected value_out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private vla:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    const/4 v4, 0x1

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lbtools/util/CompactLongMap;->size:I

    .line 22
    const/16 v0, 0xe

    iput v0, p0, Lbtools/util/CompactLongMap;->_maxKeepExponent:I

    .line 33
    new-array v0, v3, [I

    iput-object v0, p0, Lbtools/util/CompactLongMap;->pa:[I

    .line 36
    new-array v0, v3, [[J

    iput-object v0, p0, Lbtools/util/CompactLongMap;->al:[[J

    .line 37
    iget-object v0, p0, Lbtools/util/CompactLongMap;->al:[[J

    new-array v1, v4, [J

    aput-object v1, v0, v2

    .line 40
    new-array v0, v3, [[Ljava/lang/Object;

    iput-object v0, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 43
    const-string v0, "earlyDuplicateCheck"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbtools/util/CompactLongMap;->earlyDuplicateCheck:Z

    .line 44
    return-void
.end method

.method private _add(J)Z
    .locals 15
    .param p1, "id"    # J

    .prologue
    .line 148
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    iget v11, p0, Lbtools/util/CompactLongMap;->size:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    .line 150
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "cannot grow beyond size Integer.MAX_VALUE"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 154
    :cond_0
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aput-wide p1, v11, v12

    .line 157
    iget v0, p0, Lbtools/util/CompactLongMap;->size:I

    add-int/lit8 v11, v0, 0x1

    iput v11, p0, Lbtools/util/CompactLongMap;->size:I

    .line 158
    .local v0, "bp":I
    const/4 v4, 0x1

    .line 159
    .local v4, "idx":I
    const/4 v9, 0x1

    .line 161
    .local v9, "n":I
    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 162
    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    const/4 v12, 0x1

    const/4 v13, 0x1

    aput v13, v11, v12

    move v5, v4

    .line 164
    .end local v4    # "idx":I
    .local v5, "idx":I
    :goto_0
    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 166
    shr-int/lit8 v0, v0, 0x1

    .line 167
    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    aput v9, v11, v5

    .line 168
    shl-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    goto :goto_0

    .line 172
    :cond_1
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v11, v11, v5

    if-nez v11, :cond_2

    .line 174
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    new-array v12, v9, [J

    aput-object v12, v11, v5

    .line 175
    iget-object v11, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v12, v11, v5

    .line 179
    :cond_2
    :goto_1
    if-lez v9, :cond_8

    .line 181
    const-wide/16 v6, 0x0

    .line 182
    .local v6, "maxId":J
    const/4 v8, -0x1

    .line 184
    .local v8, "maxIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_5

    .line 186
    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v10, v11, v1

    .line 187
    .local v10, "p":I
    if-lez v10, :cond_4

    .line 189
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v11, v11, v1

    add-int/lit8 v12, v10, -0x1

    aget-wide v2, v11, v12

    .line 190
    .local v2, "currentId":J
    if-ltz v8, :cond_3

    cmp-long v11, v2, v6

    if-lez v11, :cond_4

    .line 192
    :cond_3
    move v8, v1

    .line 193
    move-wide v6, v2

    .line 184
    .end local v2    # "currentId":J
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    .end local v10    # "p":I
    :cond_5
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v11, v11, v5

    array-length v11, v11

    if-ge v9, v11, :cond_6

    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v11, v11, v5

    aget-wide v12, v11, v9

    cmp-long v11, v6, v12

    if-nez v11, :cond_6

    .line 201
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate key found in late check: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 203
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 204
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v11, v11, v5

    aput-wide v6, v11, v9

    .line 205
    iget-object v11, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v11, v11, v5

    iget-object v12, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v12, v12, v8

    iget-object v13, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v13, v13, v8

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    aput-object v12, v11, v9

    .line 207
    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v12, v11, v8

    add-int/lit8 v12, v12, -0x1

    aput v12, v11, v8

    goto :goto_1

    .line 211
    .end local v1    # "i":I
    .end local v5    # "idx":I
    .end local v6    # "maxId":J
    .end local v8    # "maxIdx":I
    .restart local v4    # "idx":I
    :goto_3
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    iget v11, p0, Lbtools/util/CompactLongMap;->_maxKeepExponent:I

    if-le v4, v11, :cond_7

    .line 213
    iget-object v11, p0, Lbtools/util/CompactLongMap;->al:[[J

    const/4 v12, 0x0

    aput-object v12, v11, v5

    .line 214
    iget-object v11, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v12, v11, v5

    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3

    .line 217
    .end local v4    # "idx":I
    .restart local v5    # "idx":I
    :cond_7
    const/4 v11, 0x0

    return v11

    :cond_8
    move v4, v5

    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_3
.end method

.method private contains(IJZ)Z
    .locals 6
    .param p1, "idx"    # I
    .param p2, "id"    # J
    .param p4, "doPut"    # Z

    .prologue
    .line 261
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    iget-object v4, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v0, v4, p1

    .line 262
    .local v0, "a":[J
    array-length v3, v0

    .line 263
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 265
    .local v1, "n":I
    :cond_0
    :goto_0
    shr-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 267
    add-int v2, v1, v3

    .line 268
    .local v2, "nn":I
    aget-wide v4, v0, v2

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    .line 270
    move v1, v2

    goto :goto_0

    .line 273
    .end local v2    # "nn":I
    :cond_1
    aget-wide v4, v0, v1

    cmp-long v4, v4, p2

    if-nez v4, :cond_3

    .line 275
    iget-object v4, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v4, v4, p1

    aget-object v4, v4, v1

    iput-object v4, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    .line 276
    if-eqz p4, :cond_2

    iget-object v4, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v4, v4, p1

    iget-object v5, p0, Lbtools/util/CompactLongMap;->value_in:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 277
    :cond_2
    const/4 v4, 0x1

    .line 279
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public contains(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lbtools/util/CompactLongMap;->contains(JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 231
    iput-object v1, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    .line 227
    return v0

    .line 231
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    throw v0
.end method

.method protected contains(JZ)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "doPut"    # Z

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    const/4 v2, 0x1

    .line 238
    iget v0, p0, Lbtools/util/CompactLongMap;->size:I

    .line 239
    .local v0, "bp":I
    const/4 v1, 0x1

    .line 241
    .local v1, "idx":I
    :goto_0
    if-eqz v0, :cond_1

    .line 243
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_0

    .line 246
    invoke-direct {p0, v1, p1, p2, p3}, Lbtools/util/CompactLongMap;->contains(IJZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    :goto_1
    return v2

    .line 251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 252
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fastPut(JLjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 107
    sget-boolean v0, Lbtools/util/CompactLongMap;->earlyDuplicateCheck:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lbtools/util/CompactLongMap;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate key found in early check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    aput-object p3, v0, v1

    .line 112
    invoke-direct {p0, p1, p2}, Lbtools/util/CompactLongMap;->_add(J)Z

    .line 113
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lbtools/util/CompactLongMap;->contains(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iput-object v1, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    .line 128
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iput-object v1, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    throw v0
.end method

.method protected moveToFrozenArrays([JLjava/util/ArrayList;)V
    .locals 13
    .param p1, "faid"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/ArrayList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    .local p2, "flv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v10, 0x1f

    if-ge v1, v10, :cond_0

    .line 286
    iget-object v10, p0, Lbtools/util/CompactLongMap;->pa:[I

    const/4 v11, 0x0

    aput v11, v10, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    const/4 v9, 0x0

    .local v9, "ti":I
    :goto_1
    iget v10, p0, Lbtools/util/CompactLongMap;->size:I

    if-ge v9, v10, :cond_5

    .line 291
    iget v0, p0, Lbtools/util/CompactLongMap;->size:I

    .line 292
    .local v0, "bp":I
    const/4 v5, -0x1

    .line 293
    .local v5, "minIdx":I
    const-wide/16 v6, 0x0

    .line 294
    .local v6, "minId":J
    const/4 v4, 0x1

    .line 295
    .local v4, "idx":I
    :goto_2
    if-eqz v0, :cond_3

    .line 297
    and-int/lit8 v10, v0, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 299
    iget-object v10, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v8, v10, v4

    .line 300
    .local v8, "p":I
    iget-object v10, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v10, v10, v4

    array-length v10, v10

    if-ge v8, v10, :cond_2

    .line 302
    iget-object v10, p0, Lbtools/util/CompactLongMap;->al:[[J

    aget-object v10, v10, v4

    aget-wide v2, v10, v8

    .line 303
    .local v2, "currentId":J
    if-ltz v5, :cond_1

    cmp-long v10, v2, v6

    if-gez v10, :cond_2

    .line 305
    :cond_1
    move v5, v4

    .line 306
    move-wide v6, v2

    .line 310
    .end local v2    # "currentId":J
    .end local v8    # "p":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 311
    shr-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 313
    :cond_3
    aput-wide v6, p1, v9

    .line 314
    iget-object v10, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    aget-object v10, v10, v5

    iget-object v11, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v11, v11, v5

    aget-object v10, v10, v11

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v10, p0, Lbtools/util/CompactLongMap;->pa:[I

    aget v11, v10, v5

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v5

    .line 317
    if-lez v9, :cond_4

    add-int/lit8 v10, v9, -0x1

    aget-wide v10, p1, v10

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    .line 319
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "duplicate key found in late check: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 289
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 324
    .end local v0    # "bp":I
    .end local v4    # "idx":I
    .end local v5    # "minIdx":I
    .end local v6    # "minId":J
    :cond_5
    const/4 v10, 0x0

    check-cast v10, [[J

    iput-object v10, p0, Lbtools/util/CompactLongMap;->al:[[J

    .line 325
    const/4 v10, 0x0

    check-cast v10, [[Ljava/lang/Object;

    iput-object v10, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public put(JLjava/lang/Object;)Z
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 77
    :try_start_0
    iput-object p3, p0, Lbtools/util/CompactLongMap;->value_in:Ljava/lang/Object;

    .line 78
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lbtools/util/CompactLongMap;->contains(JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_in:Ljava/lang/Object;

    .line 89
    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbtools/util/CompactLongMap;->vla:[[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aput-object p3, v0, v2

    .line 83
    invoke-direct {p0, p1, p2}, Lbtools/util/CompactLongMap;->_add(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_in:Ljava/lang/Object;

    .line 89
    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    move v0, v1

    .line 84
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_in:Ljava/lang/Object;

    .line 89
    iput-object v3, p0, Lbtools/util/CompactLongMap;->value_out:Ljava/lang/Object;

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lbtools/util/CompactLongMap;, "Lbtools/util/CompactLongMap<TV;>;"
    iget v0, p0, Lbtools/util/CompactLongMap;->size:I

    return v0
.end method
