.class public Lbtools/codec/IntegerFifo3Pass;
.super Ljava/lang/Object;
.source "IntegerFifo3Pass.java"


# instance fields
.field private a:[I

.field private pass:I

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-ge p1, v0, :cond_0

    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    .line 17
    return-void

    .line 16
    :cond_0
    new-array v0, p1, [I

    goto :goto_0
.end method

.method private get(I)I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 56
    iget v0, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    if-lt p1, v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    aget v0, v0, p1

    return v0
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 34
    iget v1, p0, Lbtools/codec/IntegerFifo3Pass;->pass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 36
    iget v1, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    iget-object v2, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 38
    iget v1, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 39
    .local v0, "aa":[I
    iget-object v1, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    iget v2, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    .line 42
    .end local v0    # "aa":[I
    :cond_0
    iget-object v1, p0, Lbtools/codec/IntegerFifo3Pass;->a:[I

    iget v2, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/codec/IntegerFifo3Pass;->size:I

    aput p1, v1, v2

    .line 44
    :cond_1
    return-void
.end method

.method public getNext()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lbtools/codec/IntegerFifo3Pass;->pass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lbtools/codec/IntegerFifo3Pass;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbtools/codec/IntegerFifo3Pass;->pos:I

    invoke-direct {p0, v0}, Lbtools/codec/IntegerFifo3Pass;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lbtools/codec/IntegerFifo3Pass;->pass:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbtools/codec/IntegerFifo3Pass;->pass:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lbtools/codec/IntegerFifo3Pass;->pos:I

    .line 27
    return-void
.end method
