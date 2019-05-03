.class public final Lbtools/util/ByteArrayUnifier;
.super Ljava/lang/Object;
.source "ByteArrayUnifier.java"

# interfaces
.implements Lbtools/util/IByteArrayUnifier;


# instance fields
.field private byteArrayCache:[[B

.field private crcCrosscheck:[I

.field private size:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "validateImmutability"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lbtools/util/ByteArrayUnifier;->size:I

    .line 12
    new-array v0, p1, [[B

    iput-object v0, p0, Lbtools/util/ByteArrayUnifier;->byteArrayCache:[[B

    .line 13
    if-eqz p2, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/util/ByteArrayUnifier;->crcCrosscheck:[I

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public unify([B)[B
    .locals 2
    .param p1, "ab"    # [B

    .prologue
    .line 25
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbtools/util/ByteArrayUnifier;->unify([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public unify([BII)[B
    .locals 10
    .param p1, "ab"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v9, 0x0

    .line 30
    invoke-static {p1, p2, p3}, Lbtools/util/Crc32;->crc([BII)I

    move-result v2

    .line 31
    .local v2, "crc":I
    const v7, 0xfffffff

    and-int/2addr v7, v2

    iget v8, p0, Lbtools/util/ByteArrayUnifier;->size:I

    rem-int v5, v7, v8

    .line 32
    .local v5, "idx":I
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->byteArrayCache:[[B

    aget-object v0, v7, v5

    .line 33
    .local v0, "abc":[B
    if-eqz v0, :cond_2

    array-length v7, v0

    if-ne v7, p3, :cond_2

    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, "i":I
    :goto_0
    if-ge v4, p3, :cond_0

    .line 38
    add-int v7, p2, v4

    aget-byte v7, p1, v7

    aget-byte v8, v0, v4

    if-eq v7, v8, :cond_1

    .line 42
    :cond_0
    if-ne v4, p3, :cond_2

    .line 59
    .end local v0    # "abc":[B
    .end local v4    # "i":I
    :goto_1
    return-object v0

    .line 40
    .restart local v0    # "abc":[B
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v4    # "i":I
    :cond_2
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->crcCrosscheck:[I

    if-eqz v7, :cond_4

    .line 47
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->byteArrayCache:[[B

    aget-object v7, v7, v5

    if-eqz v7, :cond_3

    .line 49
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->byteArrayCache:[[B

    aget-object v1, v7, v5

    .line 50
    .local v1, "abold":[B
    array-length v7, v1

    invoke-static {v1, v9, v7}, Lbtools/util/Crc32;->crc([BII)I

    move-result v3

    .line 51
    .local v3, "crcold":I
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->crcCrosscheck:[I

    aget v7, v7, v5

    if-eq v3, v7, :cond_3

    .line 52
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ByteArrayUnifier: immutablity validation failed!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 54
    .end local v1    # "abold":[B
    .end local v3    # "crcold":I
    :cond_3
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->crcCrosscheck:[I

    aput v2, v7, v5

    .line 56
    :cond_4
    new-array v6, p3, [B

    .line 57
    .local v6, "nab":[B
    invoke-static {p1, p2, v6, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v7, p0, Lbtools/util/ByteArrayUnifier;->byteArrayCache:[[B

    aput-object v6, v7, v5

    move-object v0, v6

    .line 59
    goto :goto_1
.end method
