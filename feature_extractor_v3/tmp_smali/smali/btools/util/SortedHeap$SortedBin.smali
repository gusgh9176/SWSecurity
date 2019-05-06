.class final Lbtools/util/SortedHeap$SortedBin;
.super Ljava/lang/Object;
.source "SortedHeap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/util/SortedHeap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortedBin"
.end annotation


# instance fields
.field al:[I

.field binsize:I

.field lp:I

.field lv:I

.field next:Lbtools/util/SortedHeap$SortedBin;

.field nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

.field parent:Lbtools/util/SortedHeap;

.field vla:[Ljava/lang/Object;


# direct methods
.method constructor <init>(ILbtools/util/SortedHeap;)V
    .locals 1
    .param p1, "binsize"    # I
    .param p2, "parent"    # Lbtools/util/SortedHeap;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    .line 61
    iput-object p2, p0, Lbtools/util/SortedHeap$SortedBin;->parent:Lbtools/util/SortedHeap;

    .line 62
    new-array v0, p1, [I

    iput-object v0, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    .line 63
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    .line 64
    iput p1, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    .line 65
    return-void
.end method


# virtual methods
.method add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget v0, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    .line 117
    .local v0, "p":I
    :goto_0
    iget v1, p0, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    add-int/lit8 v2, v0, -0x1

    aput p1, v1, v2

    .line 120
    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aput-object p2, v1, v2

    .line 121
    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    iget v2, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    aget v1, v1, v2

    iput v1, p0, Lbtools/util/SortedHeap$SortedBin;->lv:I

    .line 122
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 125
    iget-object v1, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method dropLowest()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 78
    iget v0, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    .line 79
    .local v0, "lpOld":I
    iget v2, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    iget v3, p0, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    if-ne v2, v3, :cond_0

    .line 81
    invoke-virtual {p0}, Lbtools/util/SortedHeap$SortedBin;->unlink()V

    .line 87
    :goto_0
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 88
    .local v1, "res":Ljava/lang/Object;
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->vla:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 89
    return-object v1

    .line 85
    .end local v1    # "res":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->al:[I

    iget v3, p0, Lbtools/util/SortedHeap$SortedBin;->lp:I

    aget v2, v2, v3

    iput v2, p0, Lbtools/util/SortedHeap$SortedBin;->lv:I

    goto :goto_0
.end method

.method next()Lbtools/util/SortedHeap$SortedBin;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lbtools/util/SortedHeap$SortedBin;->next:Lbtools/util/SortedHeap$SortedBin;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lbtools/util/SortedHeap$SortedBin;

    iget v1, p0, Lbtools/util/SortedHeap$SortedBin;->binsize:I

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->parent:Lbtools/util/SortedHeap;

    invoke-direct {v0, v1, v2}, Lbtools/util/SortedHeap$SortedBin;-><init>(ILbtools/util/SortedHeap;)V

    iput-object v0, p0, Lbtools/util/SortedHeap$SortedBin;->next:Lbtools/util/SortedHeap$SortedBin;

    .line 73
    :cond_0
    iget-object v0, p0, Lbtools/util/SortedHeap$SortedBin;->next:Lbtools/util/SortedHeap$SortedBin;

    return-object v0
.end method

.method unlink()V
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->parent:Lbtools/util/SortedHeap;

    invoke-static {v2}, Lbtools/util/SortedHeap;->access$000(Lbtools/util/SortedHeap;)Lbtools/util/SortedHeap$SortedBin;

    move-result-object v0

    .line 95
    .local v0, "neBin":Lbtools/util/SortedHeap$SortedBin;
    if-ne v0, p0, :cond_1

    .line 97
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->parent:Lbtools/util/SortedHeap;

    iget-object v3, p0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    invoke-static {v2, v3}, Lbtools/util/SortedHeap;->access$002(Lbtools/util/SortedHeap;Lbtools/util/SortedHeap$SortedBin;)Lbtools/util/SortedHeap$SortedBin;

    .line 106
    :goto_0
    return-void

    .line 108
    .local v1, "next":Lbtools/util/SortedHeap$SortedBin;
    :cond_0
    move-object v0, v1

    .line 102
    .end local v1    # "next":Lbtools/util/SortedHeap$SortedBin;
    :cond_1
    iget-object v1, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    .line 103
    .restart local v1    # "next":Lbtools/util/SortedHeap$SortedBin;
    if-ne v1, p0, :cond_0

    .line 105
    iget-object v2, p0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    iput-object v2, v0, Lbtools/util/SortedHeap$SortedBin;->nextNonEmpty:Lbtools/util/SortedHeap$SortedBin;

    goto :goto_0
.end method
