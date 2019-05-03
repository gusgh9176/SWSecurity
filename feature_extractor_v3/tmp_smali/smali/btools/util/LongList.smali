.class public Lbtools/util/LongList;
.super Ljava/lang/Object;
.source "LongList.java"


# instance fields
.field private a:[J

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-ge p1, v0, :cond_0

    new-array v0, v0, [J

    :goto_0
    iput-object v0, p0, Lbtools/util/LongList;->a:[J

    .line 16
    return-void

    .line 15
    :cond_0
    new-array v0, p1, [J

    goto :goto_0
.end method


# virtual methods
.method public add(J)V
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v3, 0x0

    .line 20
    iget v1, p0, Lbtools/util/LongList;->size:I

    iget-object v2, p0, Lbtools/util/LongList;->a:[J

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 22
    iget v1, p0, Lbtools/util/LongList;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [J

    .line 23
    .local v0, "aa":[J
    iget-object v1, p0, Lbtools/util/LongList;->a:[J

    iget v2, p0, Lbtools/util/LongList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iput-object v0, p0, Lbtools/util/LongList;->a:[J

    .line 26
    .end local v0    # "aa":[J
    :cond_0
    iget-object v1, p0, Lbtools/util/LongList;->a:[J

    iget v2, p0, Lbtools/util/LongList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lbtools/util/LongList;->size:I

    aput-wide p1, v1, v2

    .line 27
    return-void
.end method

.method public get(I)J
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 31
    iget v0, p0, Lbtools/util/LongList;->size:I

    if-lt p1, v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/util/LongList;->size:I

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

    .line 35
    :cond_0
    iget-object v0, p0, Lbtools/util/LongList;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lbtools/util/LongList;->size:I

    return v0
.end method
