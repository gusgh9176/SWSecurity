.class public Lbtools/util/LazyArrayOfLists;
.super Ljava/lang/Object;
.source "LazyArrayOfLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 17
    .local p0, "this":Lbtools/util/LazyArrayOfLists;, "Lbtools/util/LazyArrayOfLists<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 21
    iget-object v1, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public getList(I)Ljava/util/List;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lbtools/util/LazyArrayOfLists;, "Lbtools/util/LazyArrayOfLists<TE;>;"
    iget-object v1, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v0
.end method

.method public getSize(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 38
    .local p0, "this":Lbtools/util/LazyArrayOfLists;, "Lbtools/util/LazyArrayOfLists<TE;>;"
    iget-object v1, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public trimAll()V
    .locals 3

    .prologue
    .line 44
    .local p0, "this":Lbtools/util/LazyArrayOfLists;, "Lbtools/util/LazyArrayOfLists<TE;>;"
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 46
    iget-object v2, p0, Lbtools/util/LazyArrayOfLists;->lists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_1
    return-void
.end method
