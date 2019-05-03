.class public final Lbtools/util/DiffCoderDataInputStream;
.super Ljava/io/DataInputStream;
.source "DiffCoderDataInputStream.java"


# instance fields
.field private lastValues:[J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lbtools/util/DiffCoderDataInputStream;->lastValues:[J

    .line 20
    return-void
.end method


# virtual methods
.method public readDiffed(I)J
    .locals 6
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lbtools/util/DiffCoderDataInputStream;->readSigned()J

    move-result-wide v0

    .line 25
    .local v0, "d":J
    iget-object v4, p0, Lbtools/util/DiffCoderDataInputStream;->lastValues:[J

    aget-wide v4, v4, p1

    add-long v2, v4, v0

    .line 26
    .local v2, "v":J
    iget-object v4, p0, Lbtools/util/DiffCoderDataInputStream;->lastValues:[J

    aput-wide v2, v4, p1

    .line 27
    return-wide v2
.end method

.method public readSigned()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 32
    invoke-virtual {p0}, Lbtools/util/DiffCoderDataInputStream;->readUnsigned()J

    move-result-wide v0

    .line 33
    .local v0, "v":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    shr-long v2, v0, v6

    :goto_0
    return-wide v2

    :cond_0
    shr-long v2, v0, v6

    neg-long v2, v2

    goto :goto_0
.end method

.method public readUnsigned()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .local v4, "v":J
    const/4 v2, 0x0

    .line 42
    .local v2, "shift":I
    :goto_0
    invoke-virtual {p0}, Lbtools/util/DiffCoderDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v0, v3

    .line 43
    .local v0, "i7":J
    const-wide/16 v6, 0x7f

    and-long/2addr v6, v0

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 44
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 47
    return-wide v4

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 46
    goto :goto_0
.end method
