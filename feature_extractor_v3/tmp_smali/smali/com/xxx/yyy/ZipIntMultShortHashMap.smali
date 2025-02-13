.class public Lcom/xxx/yyy/ZipIntMultShortHashMap;
.super Ljava/lang/Object;
.source "ZipIntMultShortHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOAD_FACTOR:I = 0x4b

.field public static final SUB_ELEMENT_SIZE:I = 0x3


# instance fields
.field private buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

.field private final isPowerOfTwo:Z

.field private final loadFactor:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 83
    const/16 v0, 0x4b

    invoke-direct {p0, p1, v0}, Lcom/xxx/yyy/ZipIntMultShortHashMap;-><init>(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    mul-int/lit8 v1, p1, 0x64

    div-int p1, v1, p2

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "capacity":I
    :goto_0
    if-gt p1, v0, :cond_0

    .line 101
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    .line 103
    new-array v1, p1, [Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    iput-object v1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 104
    iput p2, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->loadFactor:I

    .line 105
    return-void

    .line 99
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private increaseSize()V
    .locals 11

    .prologue
    const v10, 0x7fffffff

    const/4 v9, 0x1

    .line 335
    iget-boolean v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    if-eqz v7, :cond_0

    .line 336
    iget-object v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v7, v7

    shl-int/lit8 v5, v7, 0x1

    .line 340
    .local v5, "newCapacity":I
    :goto_0
    new-array v4, v5, [Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 341
    .local v4, "newBuckets":[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v7, v7

    if-lt v1, v7, :cond_1

    .line 366
    iput-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 367
    return-void

    .line 338
    .end local v1    # "i":I
    .end local v4    # "newBuckets":[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .end local v5    # "newCapacity":I
    :cond_0
    iget-object v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v7, v7

    shl-int/lit8 v7, v7, 0x1

    sub-int v5, v7, v9

    .restart local v5    # "newCapacity":I
    goto :goto_0

    .line 342
    .restart local v1    # "i":I
    .restart local v4    # "newBuckets":[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_1
    iget-object v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aget-object v0, v7, v1

    .line 343
    .local v0, "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :goto_2
    if-nez v0, :cond_2

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_2
    iget-boolean v7, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    if-eqz v7, :cond_3

    .line 346
    iget v7, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    and-int/2addr v7, v10

    sub-int v8, v5, v9

    and-int v2, v7, v8

    .line 350
    .local v2, "index":I
    :goto_3
    aget-object v6, v4, v2

    .line 351
    .local v6, "newElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    if-nez v6, :cond_5

    .line 352
    aput-object v0, v4, v2

    .line 361
    :goto_4
    move-object v3, v0

    .line 362
    .local v3, "lastElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    iget-object v0, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 363
    const/4 v7, 0x0

    iput-object v7, v3, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    goto :goto_2

    .line 348
    .end local v2    # "index":I
    .end local v3    # "lastElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .end local v6    # "newElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_3
    iget v7, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    and-int/2addr v7, v10

    rem-int v2, v7, v5

    .restart local v2    # "index":I
    goto :goto_3

    .line 356
    .restart local v6    # "newElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_4
    iget-object v6, v6, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 355
    :cond_5
    iget-object v7, v6, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    if-nez v7, :cond_4

    .line 358
    iput-object v0, v6, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/xxx/yyy/ZipIntMultShortHashMap;->get(I)Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .locals 6
    .param p1, "key"    # I

    .prologue
    const/4 v5, 0x0

    const v3, 0x7fffffff

    .line 174
    iget-boolean v2, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    if-eqz v2, :cond_0

    .line 175
    and-int v2, p1, v3

    iget-object v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int v1, v2, v3

    .line 179
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aget-object v0, v2, v1

    .line 180
    .local v0, "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    if-nez v0, :cond_1

    move-object v2, v5

    .line 189
    :goto_1
    return-object v2

    .line 177
    .end local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .end local v1    # "index":I
    :cond_0
    and-int v2, p1, v3

    iget-object v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v3, v3

    rem-int v1, v2, v3

    .restart local v1    # "index":I
    goto :goto_0

    .line 184
    .restart local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_1
    iget v2, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    if-ne v2, p1, :cond_2

    move-object v2, v0

    .line 185
    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 188
    if-nez v0, :cond_1

    move-object v2, v5

    .line 189
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()[I
    .locals 5

    .prologue
    .line 299
    iget v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    new-array v3, v4, [I

    .line 300
    .local v3, "keys":[I
    const/4 v2, 0x0

    .line 301
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 309
    return-object v3

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aget-object v0, v4, v1

    .line 303
    .local v0, "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :goto_1
    if-nez v0, :cond_1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    iget v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    aput v4, v3, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 306
    iget-object v0, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    goto :goto_1
.end method

.method public put(IS)Z
    .locals 10
    .param p1, "key"    # I
    .param p2, "value"    # S

    .prologue
    const v9, 0x7fffffff

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 112
    iget v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v5, v5

    div-int/2addr v4, v5

    iget v5, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->loadFactor:I

    if-le v4, v5, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/xxx/yyy/ZipIntMultShortHashMap;->increaseSize()V

    .line 117
    :cond_0
    iget-boolean v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    if-eqz v4, :cond_1

    .line 118
    and-int v4, p1, v9

    iget-object v5, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v5, v5

    sub-int/2addr v5, v6

    and-int v1, v4, v5

    .line 122
    .local v1, "index":I
    :goto_0
    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aget-object v0, v4, v1

    .line 123
    .local v0, "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .end local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    new-array v4, v8, [S

    invoke-direct {v0, p1, v4}, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;-><init>(I[S)V

    .line 127
    .restart local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aput-short p2, v4, v7

    .line 128
    iget-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    .line 130
    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aput-object v0, v4, v1

    .line 131
    iget v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    move v4, v6

    .line 165
    :goto_1
    return v4

    .line 120
    .end local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .end local v1    # "index":I
    :cond_1
    and-int v4, p1, v9

    iget-object v5, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v5, v5

    rem-int v1, v4, v5

    .restart local v1    # "index":I
    goto :goto_0

    .line 135
    .restart local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_2
    move-object v2, v0

    .line 137
    .local v2, "lastElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_3
    iget v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    if-ne v4, p1, :cond_5

    .line 139
    iget-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    .line 141
    iget-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    iget-object v5, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 143
    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [S

    .line 144
    .local v3, "newValues":[S
    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    iget-object v5, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    array-length v5, v5

    invoke-static {v4, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iput-object v3, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    .line 147
    .end local v3    # "newValues":[S
    :cond_4
    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    iget-short v5, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    sub-int/2addr v5, v6

    aput-short p2, v4, v5

    move v4, v6

    .line 149
    goto :goto_1

    .line 151
    :cond_5
    move-object v2, v0

    .line 152
    iget-object v0, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 153
    if-nez v0, :cond_3

    .line 158
    new-instance v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .end local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    new-array v4, v8, [S

    invoke-direct {v0, p1, v4}, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;-><init>(I[S)V

    .line 159
    .restart local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->values:[S

    aput-short p2, v4, v7

    .line 160
    iget-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->size:S

    .line 162
    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aput-object v0, v4, v1

    .line 163
    iget v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    .line 164
    iput-object v0, v2, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    move v4, v6

    .line 165
    goto :goto_1
.end method

.method public remove(I)S
    .locals 7
    .param p1, "key"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 197
    iget-boolean v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->isPowerOfTwo:Z

    if-eqz v3, :cond_0

    .line 198
    and-int v3, p1, v4

    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v4, v4

    sub-int/2addr v4, v5

    and-int v1, v3, v4

    .line 202
    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aget-object v0, v3, v1

    .line 203
    .local v0, "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    if-nez v0, :cond_1

    move v3, v6

    .line 222
    :goto_1
    return v3

    .line 200
    .end local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    .end local v1    # "index":I
    :cond_0
    and-int v3, p1, v4

    iget-object v4, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    array-length v4, v4

    rem-int v1, v3, v4

    .restart local v1    # "index":I
    goto :goto_0

    .line 207
    .restart local v0    # "element":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_1
    const/4 v2, 0x0

    .line 209
    .local v2, "lastElement":Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;
    :cond_2
    iget v3, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->key:I

    if-ne v3, p1, :cond_4

    .line 210
    if-nez v2, :cond_3

    .line 211
    iget-object v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->buckets:[Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    iget-object v4, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    aput-object v4, v3, v1

    .line 215
    :goto_2
    iget v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    move v3, v5

    .line 216
    goto :goto_1

    .line 213
    :cond_3
    iget-object v3, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    iput-object v3, v2, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    goto :goto_2

    .line 218
    :cond_4
    move-object v2, v0

    .line 219
    iget-object v0, v0, Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;->next:Lcom/xxx/yyy/ZipIntMultShortHashMap$Element;

    .line 220
    if-nez v0, :cond_2

    move v3, v6

    .line 222
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/xxx/yyy/ZipIntMultShortHashMap;->size:I

    return v0
.end method
