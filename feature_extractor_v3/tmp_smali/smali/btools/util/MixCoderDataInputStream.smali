.class public final Lbtools/util/MixCoderDataInputStream;
.super Ljava/io/DataInputStream;
.source "MixCoderDataInputStream.java"


# instance fields
.field private b:I

.field private bm:I

.field private diffshift:I

.field private lastValue:I

.field private repCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    const/16 v0, 0x100

    iput v0, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    .line 25
    return-void
.end method


# virtual methods
.method public final decodeBit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43
    iget v1, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 45
    iput v0, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    .line 46
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lbtools/util/MixCoderDataInputStream;->b:I

    .line 48
    :cond_0
    iget v1, p0, Lbtools/util/MixCoderDataInputStream;->b:I

    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 49
    .local v0, "value":Z
    :goto_0
    iget v1, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    .line 50
    return v0

    .line 48
    .end local v0    # "value":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final decodeBounded(I)I
    .locals 4
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "value":I
    const/4 v0, 0x1

    .line 70
    .local v0, "im":I
    :goto_0
    or-int v2, v1, v0

    if-gt v2, p1, :cond_2

    .line 72
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 74
    const/4 v2, 0x1

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    .line 75
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->b:I

    .line 77
    :cond_0
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->b:I

    iget v3, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 78
    or-int/2addr v1, v0

    .line 79
    :cond_1
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->bm:I

    .line 80
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    return v1
.end method

.method public final decodeVarBits()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "range":I
    const/4 v1, 0x0

    .line 57
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->decodeBit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    .line 60
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lbtools/util/MixCoderDataInputStream;->decodeBounded(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public readMixed()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->repCount:I

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->decodeBit()Z

    move-result v1

    .line 32
    .local v1, "negative":Z
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->decodeVarBits()I

    move-result v2

    iget v3, p0, Lbtools/util/MixCoderDataInputStream;->diffshift:I

    add-int v0, v2, v3

    .line 33
    .local v0, "d":I
    invoke-virtual {p0}, Lbtools/util/MixCoderDataInputStream;->decodeVarBits()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->repCount:I

    .line 34
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->lastValue:I

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "d":I
    :cond_0
    add-int/2addr v2, v0

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->lastValue:I

    .line 35
    const/4 v2, 0x1

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->diffshift:I

    .line 37
    .end local v1    # "negative":Z
    :cond_1
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->repCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbtools/util/MixCoderDataInputStream;->repCount:I

    .line 38
    iget v2, p0, Lbtools/util/MixCoderDataInputStream;->lastValue:I

    return v2
.end method
