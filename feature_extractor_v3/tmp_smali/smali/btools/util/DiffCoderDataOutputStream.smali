.class public final Lbtools/util/DiffCoderDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "DiffCoderDataOutputStream.java"


# instance fields
.field private lastValues:[J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lbtools/util/DiffCoderDataOutputStream;->lastValues:[J

    .line 20
    return-void
.end method


# virtual methods
.method public writeDiffed(JI)V
    .locals 5
    .param p1, "v"    # J
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v2, p0, Lbtools/util/DiffCoderDataOutputStream;->lastValues:[J

    aget-wide v2, v2, p3

    sub-long v0, p1, v2

    .line 25
    .local v0, "d":J
    iget-object v2, p0, Lbtools/util/DiffCoderDataOutputStream;->lastValues:[J

    aput-wide p1, v2, p3

    .line 26
    invoke-virtual {p0, v0, v1}, Lbtools/util/DiffCoderDataOutputStream;->writeSigned(J)V

    .line 27
    return-void
.end method

.method public writeSigned(J)V
    .locals 5
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    neg-long v0, p1

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lbtools/util/DiffCoderDataOutputStream;->writeUnsigned(J)V

    .line 32
    return-void

    .line 31
    :cond_0
    shl-long v0, p1, v2

    goto :goto_0
.end method

.method public writeUnsigned(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 38
    :cond_0
    const-wide/16 v2, 0x7f

    and-long v0, p1, v2

    .line 39
    .local v0, "i7":J
    const/4 v2, 0x7

    shr-long/2addr p1, v2

    .line 40
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    .line 41
    :cond_1
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lbtools/util/DiffCoderDataOutputStream;->writeByte(I)V

    .line 43
    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 44
    return-void
.end method
