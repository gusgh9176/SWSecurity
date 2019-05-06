.class public final Lbtools/codec/NoisyDiffCoder;
.super Ljava/lang/Object;
.source "NoisyDiffCoder.java"


# instance fields
.field private bc:Lbtools/codec/StatCoderContext;

.field private freqs:[I

.field private noisybits:I

.field private pass:I

.field private tot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lbtools/codec/StatCoderContext;)V
    .locals 1
    .param p1, "bc"    # Lbtools/codec/StatCoderContext;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lbtools/codec/StatCoderContext;->decodeVarBits()I

    move-result v0

    iput v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    .line 25
    iput-object p1, p0, Lbtools/codec/NoisyDiffCoder;->bc:Lbtools/codec/StatCoderContext;

    .line 26
    return-void
.end method

.method private count(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/16 v4, 0xe

    .line 79
    iget-object v2, p0, Lbtools/codec/NoisyDiffCoder;->freqs:[I

    if-nez v2, :cond_0

    .line 80
    new-array v2, v4, [I

    iput-object v2, p0, Lbtools/codec/NoisyDiffCoder;->freqs:[I

    .line 81
    :cond_0
    const/4 v0, 0x1

    .line 82
    .local v0, "bm":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 84
    if-ge p1, v0, :cond_2

    .line 90
    :cond_1
    iget v2, p0, Lbtools/codec/NoisyDiffCoder;->tot:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/codec/NoisyDiffCoder;->tot:I

    .line 91
    return-void

    .line 87
    :cond_2
    iget-object v2, p0, Lbtools/codec/NoisyDiffCoder;->freqs:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 88
    shl-int/lit8 v0, v0, 0x1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decodeSignedValue()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lbtools/codec/NoisyDiffCoder;->bc:Lbtools/codec/StatCoderContext;

    iget v1, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    invoke-virtual {v0, v1}, Lbtools/codec/StatCoderContext;->decodeNoisyDiff(I)I

    move-result v0

    return v0
.end method

.method public encodeDictionary(Lbtools/codec/StatCoderContext;)V
    .locals 2
    .param p1, "bc"    # Lbtools/codec/StatCoderContext;

    .prologue
    .line 64
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->pass:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/codec/NoisyDiffCoder;->pass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    :goto_0
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->tot:I

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lbtools/codec/NoisyDiffCoder;->freqs:[I

    iget v1, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    aget v0, v0, v1

    iget v1, p0, Lbtools/codec/NoisyDiffCoder;->tot:I

    shr-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    .line 72
    :cond_0
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    invoke-virtual {p1, v0}, Lbtools/codec/StatCoderContext;->encodeVarBits(I)V

    .line 74
    :cond_1
    iput-object p1, p0, Lbtools/codec/NoisyDiffCoder;->bc:Lbtools/codec/StatCoderContext;

    .line 75
    return-void

    .line 67
    :cond_2
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    goto :goto_0
.end method

.method public encodeSignedValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 40
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->pass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lbtools/codec/NoisyDiffCoder;->bc:Lbtools/codec/StatCoderContext;

    iget v1, p0, Lbtools/codec/NoisyDiffCoder;->noisybits:I

    invoke-virtual {v0, p1, v1}, Lbtools/codec/StatCoderContext;->encodeNoisyDiff(II)V

    .line 48
    .end local p1    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p1    # "value":I
    :cond_1
    iget v0, p0, Lbtools/codec/NoisyDiffCoder;->pass:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 46
    if-gez p1, :cond_2

    neg-int p1, p1

    .end local p1    # "value":I
    :cond_2
    invoke-direct {p0, p1}, Lbtools/codec/NoisyDiffCoder;->count(I)V

    goto :goto_0
.end method
