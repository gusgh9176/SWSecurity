.class public final Lbtools/util/LruMap;
.super Ljava/lang/Object;
.source "LruMap.java"


# instance fields
.field private binArray:[Lbtools/util/LruMapNode;

.field private hashbins:I

.field private lru:Lbtools/util/LruMapNode;

.field private maxsize:I

.field private mru:Lbtools/util/LruMapNode;

.field private size:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "bins"    # I
    .param p2, "size"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lbtools/util/LruMap;->hashbins:I

    .line 22
    iput p2, p0, Lbtools/util/LruMap;->maxsize:I

    .line 23
    iget v0, p0, Lbtools/util/LruMap;->hashbins:I

    new-array v0, v0, [Lbtools/util/LruMapNode;

    iput-object v0, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    .line 24
    return-void
.end method


# virtual methods
.method public get(Lbtools/util/LruMapNode;)Lbtools/util/LruMapNode;
    .locals 4
    .param p1, "key"    # Lbtools/util/LruMapNode;

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0xfffffff

    and-int/2addr v2, v3

    iget v3, p0, Lbtools/util/LruMap;->hashbins:I

    rem-int v0, v2, v3

    .line 30
    .local v0, "bin":I
    iget-object v2, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    aget-object v1, v2, v0

    .line 31
    .local v1, "e":Lbtools/util/LruMapNode;
    :goto_0
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    .end local v1    # "e":Lbtools/util/LruMapNode;
    :goto_1
    return-object v1

    .line 37
    .restart local v1    # "e":Lbtools/util/LruMapNode;
    :cond_0
    iget-object v1, v1, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public put(Lbtools/util/LruMapNode;)V
    .locals 3
    .param p1, "val"    # Lbtools/util/LruMapNode;

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0xfffffff

    and-int/2addr v1, v2

    iget v2, p0, Lbtools/util/LruMap;->hashbins:I

    rem-int v0, v1, v2

    .line 105
    .local v0, "bin":I
    iget-object v1, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    aget-object v1, v1, v0

    iput-object v1, p1, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    .line 106
    iget-object v1, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    aput-object p1, v1, v0

    .line 108
    iget-object v1, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    iput-object v1, p1, Lbtools/util/LruMapNode;->previous:Lbtools/util/LruMapNode;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p1, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    .line 110
    iget-object v1, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    if-nez v1, :cond_0

    .line 112
    iput-object p1, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    .line 118
    :goto_0
    iput-object p1, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    .line 119
    iget v1, p0, Lbtools/util/LruMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbtools/util/LruMap;->size:I

    .line 120
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    iput-object p1, v1, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    goto :goto_0
.end method

.method public removeLru()Lbtools/util/LruMapNode;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 70
    iget v5, p0, Lbtools/util/LruMap;->size:I

    iget v6, p0, Lbtools/util/LruMap;->maxsize:I

    if-ge v5, v6, :cond_0

    move-object v3, v4

    .line 99
    :goto_0
    return-object v3

    .line 74
    :cond_0
    iget v5, p0, Lbtools/util/LruMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lbtools/util/LruMap;->size:I

    .line 76
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0xfffffff

    and-int/2addr v5, v6

    iget v6, p0, Lbtools/util/LruMap;->hashbins:I

    rem-int v0, v5, v6

    .line 77
    .local v0, "bin":I
    iget-object v5, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    aget-object v1, v5, v0

    .line 78
    .local v1, "e":Lbtools/util/LruMapNode;
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    if-ne v1, v5, :cond_2

    .line 80
    iget-object v5, p0, Lbtools/util/LruMap;->binArray:[Lbtools/util/LruMapNode;

    iget-object v6, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    iget-object v6, v6, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    aput-object v6, v5, v0

    .line 96
    :cond_1
    :goto_1
    iget-object v3, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    .line 97
    .local v3, "res":Lbtools/util/LruMapNode;
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    iget-object v5, v5, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    iput-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    .line 98
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    iput-object v4, v5, Lbtools/util/LruMapNode;->previous:Lbtools/util/LruMapNode;

    goto :goto_0

    .line 84
    .end local v3    # "res":Lbtools/util/LruMapNode;
    :cond_2
    if-eqz v1, :cond_1

    .line 86
    move-object v2, v1

    .line 87
    .local v2, "prev":Lbtools/util/LruMapNode;
    iget-object v1, v1, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    .line 88
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    if-ne v1, v5, :cond_2

    .line 90
    iget-object v5, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    iget-object v5, v5, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    iput-object v5, v2, Lbtools/util/LruMapNode;->nextInBin:Lbtools/util/LruMapNode;

    goto :goto_1
.end method

.method public touch(Lbtools/util/LruMapNode;)V
    .locals 3
    .param p1, "e"    # Lbtools/util/LruMapNode;

    .prologue
    .line 45
    iget-object v0, p1, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    .line 46
    .local v0, "n":Lbtools/util/LruMapNode;
    iget-object v1, p1, Lbtools/util/LruMapNode;->previous:Lbtools/util/LruMapNode;

    .line 48
    .local v1, "p":Lbtools/util/LruMapNode;
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    iput-object v1, v0, Lbtools/util/LruMapNode;->previous:Lbtools/util/LruMapNode;

    .line 53
    if-eqz v1, :cond_1

    .line 55
    iput-object v0, v1, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    .line 62
    :goto_1
    iget-object v2, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    iput-object p1, v2, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    .line 63
    iget-object v2, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    iput-object v2, p1, Lbtools/util/LruMapNode;->previous:Lbtools/util/LruMapNode;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p1, Lbtools/util/LruMapNode;->next:Lbtools/util/LruMapNode;

    .line 65
    iput-object p1, p0, Lbtools/util/LruMap;->mru:Lbtools/util/LruMapNode;

    goto :goto_0

    .line 59
    :cond_1
    iput-object v0, p0, Lbtools/util/LruMap;->lru:Lbtools/util/LruMapNode;

    goto :goto_1
.end method
