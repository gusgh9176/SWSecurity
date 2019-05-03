.class public Lbtools/codec/LinkedListContainer;
.super Ljava/lang/Object;
.source "LinkedListContainer.java"


# instance fields
.field private ia:[I

.field private listpointer:I

.field private size:I

.field private startpointer:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 1
    .param p1, "nlists"    # I
    .param p2, "defaultbuffer"    # [I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p2, :cond_0

    mul-int/lit8 v0, p1, 0x4

    new-array p2, v0, [I

    .end local p2    # "defaultbuffer":[I
    :cond_0
    iput-object p2, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    .line 25
    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/codec/LinkedListContainer;->startpointer:[I

    .line 26
    return-void
.end method

.method private resize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 84
    .local v0, "ia2":[I
    iget-object v1, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    iget-object v2, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v0, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    .line 86
    return-void
.end method


# virtual methods
.method public addDataElement(II)V
    .locals 3
    .param p1, "listNr"    # I
    .param p2, "data"    # I

    .prologue
    .line 36
    iget v0, p0, Lbtools/codec/LinkedListContainer;->size:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 38
    invoke-direct {p0}, Lbtools/codec/LinkedListContainer;->resize()V

    .line 40
    :cond_0
    iget-object v0, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    iget v1, p0, Lbtools/codec/LinkedListContainer;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/codec/LinkedListContainer;->size:I

    iget-object v2, p0, Lbtools/codec/LinkedListContainer;->startpointer:[I

    aget v2, v2, p1

    aput v2, v0, v1

    .line 41
    iget-object v0, p0, Lbtools/codec/LinkedListContainer;->startpointer:[I

    iget v1, p0, Lbtools/codec/LinkedListContainer;->size:I

    aput v1, v0, p1

    .line 42
    iget-object v0, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    iget v1, p0, Lbtools/codec/LinkedListContainer;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbtools/codec/LinkedListContainer;->size:I

    aput p2, v0, v1

    .line 43
    return-void
.end method

.method public getDataElement()I
    .locals 3

    .prologue
    .line 72
    iget v1, p0, Lbtools/codec/LinkedListContainer;->listpointer:I

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no more element!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v1, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    iget v2, p0, Lbtools/codec/LinkedListContainer;->listpointer:I

    aget v0, v1, v2

    .line 77
    .local v0, "data":I
    iget-object v1, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    iget v2, p0, Lbtools/codec/LinkedListContainer;->listpointer:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Lbtools/codec/LinkedListContainer;->listpointer:I

    .line 78
    return v0
.end method

.method public initList(I)I
    .locals 4
    .param p1, "listNr"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "cnt":I
    iget-object v2, p0, Lbtools/codec/LinkedListContainer;->startpointer:[I

    aget v1, v2, p1

    iput v1, p0, Lbtools/codec/LinkedListContainer;->listpointer:I

    .line 55
    .local v1, "lp":I
    :goto_0
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, p0, Lbtools/codec/LinkedListContainer;->ia:[I

    add-int/lit8 v3, v1, -0x1

    aget v1, v2, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return v0
.end method
