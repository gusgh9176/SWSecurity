.class public final Lbtools/util/ReducedMedianFilter;
.super Ljava/lang/Object;
.source "ReducedMedianFilter.java"


# instance fields
.field private nsamples:I

.field private values:[I

.field private weights:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, p1, [D

    iput-object v0, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    .line 15
    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    .line 16
    return-void
.end method

.method private removeEdgeWeight(DZ)V
    .locals 13
    .param p1, "excessWeight"    # D
    .param p3, "high"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 60
    :cond_0
    cmpl-double v5, p1, v10

    if-lez v5, :cond_9

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .local v2, "totalWeight":D
    const/4 v1, 0x0

    .line 65
    .local v1, "minmax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    if-ge v0, v5, :cond_5

    .line 67
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v6, v5, v0

    .line 68
    .local v6, "w":D
    cmpl-double v5, v6, v10

    if-lez v5, :cond_3

    .line 70
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    aget v4, v5, v0

    .line 71
    .local v4, "v":I
    cmpl-double v5, v2, v10

    if-eqz v5, :cond_1

    if-eqz p3, :cond_4

    if-le v4, v1, :cond_2

    .line 73
    :cond_1
    :goto_1
    move v1, v4

    .line 75
    :cond_2
    add-double/2addr v2, v6

    .line 65
    .end local v4    # "v":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .restart local v4    # "v":I
    :cond_4
    if-ge v4, v1, :cond_2

    goto :goto_1

    .line 79
    .end local v4    # "v":I
    .end local v6    # "w":D
    :cond_5
    cmpg-double v5, v2, p1

    if-gez v5, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "ups, not enough weight to remove"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget v5, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    if-ge v0, v5, :cond_0

    .line 84
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    aget v5, v5, v0

    if-ne v5, v1, :cond_7

    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v8, v5, v0

    cmpl-double v5, v8, v10

    if-lez v5, :cond_7

    .line 86
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v8, v5, v0

    cmpl-double v5, p1, v8

    if-lez v5, :cond_8

    .line 88
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v8, v5, v0

    sub-double/2addr p1, v8

    .line 89
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aput-wide v10, v5, v0

    .line 82
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_8
    iget-object v5, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v8, v5, v0

    sub-double/2addr v8, p1

    aput-wide v8, v5, v0

    .line 94
    const-wide/16 p1, 0x0

    goto :goto_3

    .line 99
    .end local v0    # "i":I
    .end local v1    # "minmax":I
    .end local v2    # "totalWeight":D
    :cond_9
    return-void
.end method


# virtual methods
.method public addSample(DI)V
    .locals 5
    .param p1, "weight"    # D
    .param p3, "value"    # I

    .prologue
    .line 25
    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    if-ge v0, v1, :cond_2

    .line 29
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    .line 31
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v2, v1, v0

    add-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 39
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 27
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    iget v2, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    aput-wide p1, v1, v2

    .line 36
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    iget v2, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    aput p3, v1, v2

    .line 37
    iget v1, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    goto :goto_1
.end method

.method public calcEdgeReducedMedian(D)D
    .locals 13
    .param p1, "fraction"    # D

    .prologue
    .line 43
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    const/4 v1, 0x1

    invoke-direct {p0, v8, v9, v1}, Lbtools/util/ReducedMedianFilter;->removeEdgeWeight(DZ)V

    .line 44
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    const/4 v1, 0x0

    invoke-direct {p0, v8, v9, v1}, Lbtools/util/ReducedMedianFilter;->removeEdgeWeight(DZ)V

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .local v4, "totalWeight":D
    const-wide/16 v2, 0x0

    .line 48
    .local v2, "totalValue":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->weights:[D

    aget-wide v6, v1, v0

    .line 51
    .local v6, "w":D
    add-double/2addr v4, v6

    .line 52
    iget-object v1, p0, Lbtools/util/ReducedMedianFilter;->values:[I

    aget v1, v1, v0

    int-to-double v8, v1

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v6    # "w":D
    :cond_0
    div-double v8, v2, v4

    return-wide v8
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/ReducedMedianFilter;->nsamples:I

    .line 21
    return-void
.end method
