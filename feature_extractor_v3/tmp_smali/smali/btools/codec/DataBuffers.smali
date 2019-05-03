.class public final Lbtools/codec/DataBuffers;
.super Ljava/lang/Object;
.source "DataBuffers.java"


# instance fields
.field public alat:[I

.field public alon:[I

.field public bbuf1:[B

.field public bctx1:Lbtools/util/BitCoderContext;

.field public ibuf1:[I

.field public ibuf2:[I

.field public ibuf3:[I

.field public iobuffer:[B

.field public tagbuf1:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const v0, 0x10064

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lbtools/codec/DataBuffers;-><init>([B)V

    .line 23
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "iobuffer"    # [B

    .prologue
    const/16 v2, 0x800

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lbtools/codec/DataBuffers;->tagbuf1:[B

    .line 12
    new-instance v0, Lbtools/util/BitCoderContext;

    iget-object v1, p0, Lbtools/codec/DataBuffers;->tagbuf1:[B

    invoke-direct {v0, v1}, Lbtools/util/BitCoderContext;-><init>([B)V

    iput-object v0, p0, Lbtools/codec/DataBuffers;->bctx1:Lbtools/util/BitCoderContext;

    .line 13
    const v0, 0x10064

    new-array v0, v0, [B

    iput-object v0, p0, Lbtools/codec/DataBuffers;->bbuf1:[B

    .line 14
    const/16 v0, 0x1000

    new-array v0, v0, [I

    iput-object v0, p0, Lbtools/codec/DataBuffers;->ibuf1:[I

    .line 15
    new-array v0, v2, [I

    iput-object v0, p0, Lbtools/codec/DataBuffers;->ibuf2:[I

    .line 16
    new-array v0, v2, [I

    iput-object v0, p0, Lbtools/codec/DataBuffers;->ibuf3:[I

    .line 17
    new-array v0, v2, [I

    iput-object v0, p0, Lbtools/codec/DataBuffers;->alon:[I

    .line 18
    new-array v0, v2, [I

    iput-object v0, p0, Lbtools/codec/DataBuffers;->alat:[I

    .line 31
    iput-object p1, p0, Lbtools/codec/DataBuffers;->iobuffer:[B

    .line 32
    return-void
.end method
