.class public final Lbtools/util/SortedHeap;
.super Ljava/lang/Object;
.source "SortedHeap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/util/SortedHeap$SortedBin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private first:Lbtools/util/SortedHeap$SortedBin;

.field private firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

.field private peaksize:I

.field private second:Lbtools/util/SortedHeap$SortedBin;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Lbtools/util/SortedHeap;->clear()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lbtools/util/SortedHeap;)Lbtools/util/SortedHeap$SortedBin;
    .locals 1
    .param p0, "x0"    # Lbtools/util/SortedHeap;

    .prologue
    .line 10
    iget-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    return-object v0
.end method

.method static synthetic access$002(Lbtools/util/SortedHeap;Lbtools/util/SortedHeap$SortedBin;)Lbtools/util/SortedHeap$SortedBin;
    .locals 0
    .param p0, "x0"    # Lbtools/util/SortedHeap;
    .param p1, "x1"    # Lbtools/util/SortedHeap$SortedBin;

    .prologue
    .line 10
    iput-object p1, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const v9, 0xf4240

    .line 273
    new-instance v5, Lbtools/util/SortedHeap;

    invoke-direct {v5}, Lbtools/util/SortedHeap;-><init>()V

    .line 274
    .local v5, "sh":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 275
    .local v3, "rnd":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x3e8

    if-ge v1, v7, :cond_0

    .line 277
    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 278
    .local v6, "val":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbtools/util/SortedHeap;->add(ILjava/lang/Object;)V

    .line 279
    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lbtools/util/SortedHeap;->add(ILjava/lang/Object;)V

    .line 281
    invoke-virtual {v5}, Lbtools/util/SortedHeap;->popLowestKeyValue()Ljava/lang/Object;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v6    # "val":I
    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "cnt":I
    const/4 v2, 0x0

    .line 288
    .local v2, "lastval":I
    :goto_1
    invoke-virtual {v5}, Lbtools/util/SortedHeap;->popLowestKeyValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 289
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 298
    return-void

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 292
    .restart local v6    # "val":I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "popLowestKeyValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    move v2, v6

    .line 295
    goto :goto_1
.end method

.method private sortUp()V
    .locals 14

    .prologue
    .line 172
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    iget v12, p0, Lbtools/util/SortedHeap;->size:I

    iget v13, p0, Lbtools/util/SortedHeap;->peaksize:I

    if-le v12, v13, :cond_0

    .line 174
    iget v12, p0, Lbtools/util/SortedHeap;->size:I

    iput v12, p0, Lbtools/util/SortedHeap;->peaksize:I

    .line 178
    :cond_0
    const/16 v1, 0x8

    .line 179
    .local v1, "cnt":I
    iget-object v8, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    .line 180
    .local v8, "tbin":Lbtools/util/SortedHeap$SortedBin;
    iget-object v2, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    .line 183
    .local v2, "lastNonEmpty":Lbtools/util/SortedHeap$SortedBin;
    :cond_1
    invoke-virtual {v8}, Lbtools/util/SortedHeap$SortedBin;->next()Lbtools/util/SortedHeap$SortedBin;

    move-result-object v8

    .line 184
    iget v12, v8, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    iget v13, v8, Lbtools/util/SortedHeap$SortedBin;->lp:I

    sub-int v6, v12, v13

    .line 185
    .local v6, "nentries":I
    if-lez v6, :cond_2

    .line 187
    add-int/2addr v1, v6

    .line 188
    move-object v2, v8

    .line 191
    :cond_2
    iget v12, v8, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    if-gt v1, v12, :cond_1

    .line 193
    iget-object v0, v8, Lbtools/util/SortedHeap$SortedBin;->al:[I

    .line 194
    .local v0, "al_t":[I
    iget-object v11, v8, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    .line 195
    .local v11, "vla_t":[Ljava/lang/Object;
    iget v12, v8, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    sub-int v9, v12, v1

    .line 198
    .local v9, "tp":I
    iget-object v7, v2, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 199
    .local v7, "otherNonEmpty":Lbtools/util/SortedHeap$SortedBin;
    const/4 v12, 0x0

    iput-object v12, v2, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 202
    :goto_0
    iget-object v12, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    if-eqz v12, :cond_5

    .line 204
    iget-object v5, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 205
    .local v5, "ne":Lbtools/util/SortedHeap$SortedBin;
    move-object v3, v5

    .line 206
    .local v3, "minBin":Lbtools/util/SortedHeap$SortedBin;
    iget v4, v3, Lbtools/util/SortedHeap$SortedBin;->lv:I

    .line 208
    .local v4, "minId":I
    :cond_3
    :goto_1
    iget-object v5, v5, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    if-eqz v5, :cond_4

    .line 210
    iget v12, v5, Lbtools/util/SortedHeap$SortedBin;->lv:I

    if-ge v12, v4, :cond_3

    .line 212
    move-object v3, v5

    .line 213
    iget v4, v3, Lbtools/util/SortedHeap$SortedBin;->lv:I

    goto :goto_1

    .line 218
    :cond_4
    aput v4, v0, v9

    .line 219
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tp":I
    .local v10, "tp":I
    invoke-virtual {v3}, Lbtools/util/SortedHeap$SortedBin;->dropLowest()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v9

    move v9, v10

    .line 220
    .end local v10    # "tp":I
    .restart local v9    # "tp":I
    goto :goto_0

    .line 222
    .end local v3    # "minBin":Lbtools/util/SortedHeap$SortedBin;
    .end local v4    # "minId":I
    .end local v5    # "ne":Lbtools/util/SortedHeap$SortedBin;
    :cond_5
    iget v12, v8, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    sub-int v9, v12, v1

    .line 223
    iput v9, v8, Lbtools/util/SortedHeap$SortedBin;->lp:I

    .line 224
    iget-object v12, v8, Lbtools/util/SortedHeap$SortedBin;->al:[I

    aget v12, v12, v9

    iput v12, v8, Lbtools/util/SortedHeap$SortedBin;->lv:I

    .line 225
    iput-object v7, v8, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 226
    iput-object v8, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 227
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lbtools/util/SortedHeap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/util/SortedHeap;->size:I

    .line 145
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget v0, v0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    iget v0, v0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lbtools/util/SortedHeap;->sortUp()V

    .line 149
    :cond_0
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget v0, v0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    if-lez v0, :cond_2

    .line 151
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    invoke-virtual {v0, p1, p2}, Lbtools/util/SortedHeap$SortedBin;->add(ILjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    if-eq v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    iput-object v1, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 155
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iput-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    invoke-virtual {v0, p1, p2}, Lbtools/util/SortedHeap$SortedBin;->add(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget-object v0, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    if-eq v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, v1, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    iput-object v1, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 164
    iget-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    iget-object v1, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    iput-object v1, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    const/4 v1, 0x4

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/SortedHeap;->size:I

    .line 232
    new-instance v0, Lbtools/util/SortedHeap$SortedBin;

    invoke-direct {v0, v1, p0}, Lbtools/util/SortedHeap$SortedBin;-><init>(ILbtools/util/SortedHeap;)V

    iput-object v0, p0, Lbtools/util/SortedHeap;->first:Lbtools/util/SortedHeap$SortedBin;

    .line 233
    new-instance v0, Lbtools/util/SortedHeap$SortedBin;

    invoke-direct {v0, v1, p0}, Lbtools/util/SortedHeap$SortedBin;-><init>(ILbtools/util/SortedHeap;)V

    iput-object v0, p0, Lbtools/util/SortedHeap;->second:Lbtools/util/SortedHeap$SortedBin;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 235
    return-void
.end method

.method public getExtract([Ljava/lang/Object;)I
    .locals 9
    .param p1, "targetArray"    # [Ljava/lang/Object;

    .prologue
    .line 249
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    array-length v6, p1

    .line 250
    .local v6, "tsize":I
    iget v8, p0, Lbtools/util/SortedHeap;->size:I

    div-int/2addr v8, v6

    add-int/lit8 v1, v8, 0x1

    .line 251
    .local v1, "div":I
    const/4 v4, 0x0

    .line 253
    .local v4, "tp":I
    const/4 v2, 0x0

    .line 254
    .local v2, "lpi":I
    iget-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 255
    .local v0, "bin":Lbtools/util/SortedHeap$SortedBin;
    :goto_0
    if-eqz v0, :cond_1

    .line 257
    iget v8, v0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    add-int/2addr v2, v8

    .line 258
    iget-object v7, v0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    .line 259
    .local v7, "vlai":[Ljava/lang/Object;
    iget v3, v0, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    .local v3, "n":I
    move v5, v4

    .line 260
    .end local v4    # "tp":I
    .local v5, "tp":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 262
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tp":I
    .restart local v4    # "tp":I
    aget-object v8, v7, v2

    aput-object v8, p1, v5

    .line 263
    add-int/2addr v2, v1

    move v5, v4

    .end local v4    # "tp":I
    .restart local v5    # "tp":I
    goto :goto_1

    .line 265
    :cond_0
    sub-int/2addr v2, v3

    .line 266
    iget-object v0, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    move v4, v5

    .line 267
    .end local v5    # "tp":I
    .restart local v4    # "tp":I
    goto :goto_0

    .line 268
    .end local v3    # "n":I
    .end local v7    # "vlai":[Ljava/lang/Object;
    :cond_1
    return v4
.end method

.method public getPeakSize()I
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    iget v0, p0, Lbtools/util/SortedHeap;->peaksize:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    iget v0, p0, Lbtools/util/SortedHeap;->size:I

    return v0
.end method

.method public popLowestKeyValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lbtools/util/SortedHeap;, "Lbtools/util/SortedHeap<TV;>;"
    iget-object v0, p0, Lbtools/util/SortedHeap;->firstNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 29
    .local v0, "bin":Lbtools/util/SortedHeap$SortedBin;
    if-nez v0, :cond_0

    .line 31
    const/4 v3, 0x0

    .line 44
    :goto_0
    return-object v3

    .line 33
    :cond_0
    iget v3, p0, Lbtools/util/SortedHeap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lbtools/util/SortedHeap;->size:I

    .line 34
    iget v2, v0, Lbtools/util/SortedHeap$SortedBin;->lv:I

    .line 35
    .local v2, "minId":I
    move-object v1, v0

    .line 36
    .local v1, "minBin":Lbtools/util/SortedHeap$SortedBin;
    :cond_1
    :goto_1
    iget-object v0, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    if-eqz v0, :cond_2

    .line 38
    iget v3, v0, Lbtools/util/SortedHeap$SortedBin;->lv:I

    if-ge v3, v2, :cond_1

    .line 40
    iget v2, v0, Lbtools/util/SortedHeap$SortedBin;->lv:I

    .line 41
    move-object v1, v0

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1}, Lbtools/util/SortedHeap$SortedBin;->dropLowest()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
