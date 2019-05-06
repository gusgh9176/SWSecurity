.class public final Lbtools/util/MixCoderDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "MixCoderDataOutputStream.java"


# static fields
.field public static counts:[I

.field public static diffs:[I


# instance fields
.field private b:I

.field private bm:I

.field private diffshift:I

.field private lastLastValue:I

.field private lastValue:I

.field private repCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 23
    new-array v0, v1, [I

    sput-object v0, Lbtools/util/MixCoderDataOutputStream;->diffs:[I

    .line 24
    new-array v0, v1, [I

    sput-object v0, Lbtools/util/MixCoderDataOutputStream;->counts:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    .line 29
    return-void
.end method

.method public static stats()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 120
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diff["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtools/util/MixCoderDataOutputStream;->diffs:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "counts["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtools/util/MixCoderDataOutputStream;->counts:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_1
    return-void
.end method


# virtual methods
.method public final encodeBit(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 73
    iget v0, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lbtools/util/MixCoderDataOutputStream;->writeByte(I)V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 79
    iget v0, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    or-int/2addr v0, v1

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    .line 81
    :cond_1
    iget v0, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    .line 82
    return-void
.end method

.method public final encodeBounded(II)V
    .locals 3
    .param p1, "max"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "im":I
    :goto_0
    if-gt v0, p1, :cond_2

    .line 102
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    .line 104
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->writeByte(I)V

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    .line 108
    :cond_0
    and-int v1, p2, v0

    if-eqz v1, :cond_1

    .line 110
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    iget v2, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    or-int/2addr v1, v2

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    .line 111
    sub-int/2addr p1, v0

    .line 113
    :cond_1
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    .line 114
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method public final encodeVarBits(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "range":I
    :goto_0
    if-le p1, v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->encodeBit(Z)V

    .line 90
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr p1, v1

    .line 91
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->encodeBit(Z)V

    .line 94
    invoke-virtual {p0, v0, p1}, Lbtools/util/MixCoderDataOutputStream;->encodeBounded(II)V

    .line 95
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    .line 60
    .local v0, "v":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->writeMixed(I)V

    .line 61
    iput v0, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    .line 63
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->bm:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 65
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->b:I

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->writeByte(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public writeMixed(I)V
    .locals 6
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    if-eq p1, v1, :cond_3

    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    if-lez v1, :cond_3

    .line 35
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    iget v4, p0, Lbtools/util/MixCoderDataOutputStream;->lastLastValue:I

    sub-int v0, v1, v4

    .line 36
    .local v0, "d":I
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->lastLastValue:I

    .line 38
    if-gez v0, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->encodeBit(Z)V

    .line 39
    if-gez v0, :cond_0

    .line 41
    neg-int v0, v0

    .line 43
    :cond_0
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->diffshift:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->encodeVarBits(I)V

    .line 44
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lbtools/util/MixCoderDataOutputStream;->encodeVarBits(I)V

    .line 46
    if-ge v0, v5, :cond_1

    sget-object v1, Lbtools/util/MixCoderDataOutputStream;->diffs:[I

    aget v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v0

    .line 47
    :cond_1
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    if-ge v1, v5, :cond_2

    sget-object v1, Lbtools/util/MixCoderDataOutputStream;->counts:[I

    iget v4, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    .line 49
    :cond_2
    iput v2, p0, Lbtools/util/MixCoderDataOutputStream;->diffshift:I

    .line 50
    iput v3, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    .line 52
    .end local v0    # "d":I
    :cond_3
    iput p1, p0, Lbtools/util/MixCoderDataOutputStream;->lastValue:I

    .line 53
    iget v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/MixCoderDataOutputStream;->repCount:I

    .line 54
    return-void

    .restart local v0    # "d":I
    :cond_4
    move v1, v3

    .line 38
    goto :goto_0
.end method
