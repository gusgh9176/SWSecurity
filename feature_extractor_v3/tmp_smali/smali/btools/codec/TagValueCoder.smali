.class public final Lbtools/codec/TagValueCoder;
.super Ljava/lang/Object;
.source "TagValueCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/codec/TagValueCoder$TagValueSet;,
        Lbtools/codec/TagValueCoder$TreeNode;
    }
.end annotation


# instance fields
.field private bc:Lbtools/util/BitCoderContext;

.field private identityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lbtools/codec/TagValueCoder$TagValueSet;",
            "Lbtools/codec/TagValueCoder$TagValueSet;",
            ">;"
        }
    .end annotation
.end field

.field private pass:I

.field private tree:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtools/codec/TagValueCoder;->identityMap:Ljava/util/HashMap;

    .line 90
    return-void
.end method

.method public constructor <init>(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)V
    .locals 1
    .param p1, "bc"    # Lbtools/util/BitCoderContext;
    .param p2, "buffers"    # Lbtools/codec/DataBuffers;
    .param p3, "validator"    # Lbtools/codec/TagValueValidator;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lbtools/codec/TagValueCoder;->decodeTree(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbtools/codec/TagValueCoder;->tree:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lbtools/codec/TagValueCoder;->bc:Lbtools/util/BitCoderContext;

    .line 85
    return-void
.end method

.method private decodeTree(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)Ljava/lang/Object;
    .locals 16
    .param p1, "bc"    # Lbtools/util/BitCoderContext;
    .param p2, "buffers"    # Lbtools/codec/DataBuffers;
    .param p3, "validator"    # Lbtools/codec/TagValueValidator;

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Lbtools/util/BitCoderContext;->decodeBit()Z

    move-result v8

    .line 95
    .local v8, "isNode":Z
    if-eqz v8, :cond_0

    .line 97
    new-instance v11, Lbtools/codec/TagValueCoder$TreeNode;

    invoke-direct {v11}, Lbtools/codec/TagValueCoder$TreeNode;-><init>()V

    .line 98
    .local v11, "node":Lbtools/codec/TagValueCoder$TreeNode;
    invoke-direct/range {p0 .. p3}, Lbtools/codec/TagValueCoder;->decodeTree(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v11, Lbtools/codec/TagValueCoder$TreeNode;->child1:Ljava/lang/Object;

    .line 99
    invoke-direct/range {p0 .. p3}, Lbtools/codec/TagValueCoder;->decodeTree(Lbtools/util/BitCoderContext;Lbtools/codec/DataBuffers;Lbtools/codec/TagValueValidator;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v11, Lbtools/codec/TagValueCoder$TreeNode;->child2:Ljava/lang/Object;

    .line 159
    .end local v11    # "node":Lbtools/codec/TagValueCoder$TreeNode;
    :goto_0
    return-object v11

    .line 103
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lbtools/codec/DataBuffers;->tagbuf1:[B

    .line 104
    .local v2, "buffer":[B
    move-object/from16 v0, p2

    iget-object v3, v0, Lbtools/codec/DataBuffers;->bctx1:Lbtools/util/BitCoderContext;

    .line 105
    .local v3, "ctx":Lbtools/util/BitCoderContext;
    invoke-virtual {v3, v2}, Lbtools/util/BitCoderContext;->reset([B)V

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "inum":I
    const/4 v9, 0x0

    .line 110
    .local v9, "lastEncodedInum":I
    const/4 v6, 0x0

    .line 113
    .local v6, "hasdata":Z
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v5

    .line 114
    .local v5, "delta":I
    if-nez v6, :cond_2

    .line 116
    if-nez v5, :cond_2

    .line 118
    const/4 v11, 0x0

    goto :goto_0

    .line 121
    :cond_2
    if-nez v5, :cond_3

    .line 123
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 140
    invoke-virtual {v3}, Lbtools/util/BitCoderContext;->getEncodedLength()I

    move-result v10

    .line 141
    .local v10, "len":I
    if-nez p3, :cond_5

    .line 143
    new-array v12, v10, [B

    .line 144
    .local v12, "res":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v2, v14, v12, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :goto_2
    if-nez p3, :cond_6

    const/4 v1, 0x2

    .line 152
    .local v1, "accessType":I
    :goto_3
    if-lez v1, :cond_7

    .line 154
    new-instance v13, Lbtools/codec/TagValueWrapper;

    invoke-direct {v13}, Lbtools/codec/TagValueWrapper;-><init>()V

    .line 155
    .local v13, "w":Lbtools/codec/TagValueWrapper;
    iput-object v12, v13, Lbtools/codec/TagValueWrapper;->data:[B

    .line 156
    iput v1, v13, Lbtools/codec/TagValueWrapper;->accessType:I

    move-object v11, v13

    .line 157
    goto :goto_0

    .line 126
    .end local v1    # "accessType":I
    .end local v10    # "len":I
    .end local v12    # "res":[B
    .end local v13    # "w":Lbtools/codec/TagValueWrapper;
    :cond_3
    add-int/2addr v7, v5

    .line 128
    invoke-virtual/range {p1 .. p1}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v4

    .line 130
    .local v4, "data":I
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lbtools/codec/TagValueValidator;->isLookupIdxUsed(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 132
    :cond_4
    const/4 v6, 0x1

    .line 133
    sub-int v14, v7, v9

    invoke-virtual {v3, v14}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 134
    invoke-virtual {v3, v4}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 135
    move v9, v7

    goto :goto_1

    .line 148
    .end local v4    # "data":I
    .restart local v10    # "len":I
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v14, v10}, Lbtools/codec/TagValueValidator;->unify([BII)[B

    move-result-object v12

    .restart local v12    # "res":[B
    goto :goto_2

    .line 151
    :cond_6
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lbtools/codec/TagValueValidator;->accessType([B)I

    move-result v1

    goto :goto_3

    .line 159
    .restart local v1    # "accessType":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decodeTagValueSet()Lbtools/codec/TagValueWrapper;
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lbtools/codec/TagValueCoder;->tree:Ljava/lang/Object;

    .line 52
    .local v1, "node":Ljava/lang/Object;
    :goto_0
    instance-of v3, v1, Lbtools/codec/TagValueCoder$TreeNode;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 54
    check-cast v2, Lbtools/codec/TagValueCoder$TreeNode;

    .line 55
    .local v2, "tn":Lbtools/codec/TagValueCoder$TreeNode;
    iget-object v3, p0, Lbtools/codec/TagValueCoder;->bc:Lbtools/util/BitCoderContext;

    invoke-virtual {v3}, Lbtools/util/BitCoderContext;->decodeBit()Z

    move-result v0

    .line 56
    .local v0, "nextBit":Z
    if-eqz v0, :cond_0

    iget-object v1, v2, Lbtools/codec/TagValueCoder$TreeNode;->child2:Ljava/lang/Object;

    .line 57
    :goto_1
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, v2, Lbtools/codec/TagValueCoder$TreeNode;->child1:Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v0    # "nextBit":Z
    .end local v2    # "tn":Lbtools/codec/TagValueCoder$TreeNode;
    :cond_1
    check-cast v1, Lbtools/codec/TagValueWrapper;

    .end local v1    # "node":Ljava/lang/Object;
    return-object v1
.end method

.method public encodeDictionary(Lbtools/util/BitCoderContext;)V
    .locals 6
    .param p1, "bc"    # Lbtools/util/BitCoderContext;

    .prologue
    const/4 v5, 0x1

    .line 63
    iget v3, p0, Lbtools/codec/TagValueCoder;->pass:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbtools/codec/TagValueCoder;->pass:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 65
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v3, p0, Lbtools/codec/TagValueCoder;->identityMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-instance v4, Lbtools/codec/TagValueCoder$TagValueSet$FrequencyComparator;

    invoke-direct {v4}, Lbtools/codec/TagValueCoder$TagValueSet$FrequencyComparator;-><init>()V

    invoke-direct {v1, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 66
    .local v1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lbtools/codec/TagValueCoder$TagValueSet;>;"
    iget-object v3, p0, Lbtools/codec/TagValueCoder;->identityMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 67
    :goto_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 69
    new-instance v0, Lbtools/codec/TagValueCoder$TagValueSet;

    invoke-direct {v0}, Lbtools/codec/TagValueCoder$TagValueSet;-><init>()V

    .line 70
    .local v0, "node":Lbtools/codec/TagValueCoder$TagValueSet;
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/codec/TagValueCoder$TagValueSet;

    iput-object v3, v0, Lbtools/codec/TagValueCoder$TagValueSet;->child1:Lbtools/codec/TagValueCoder$TagValueSet;

    .line 71
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/codec/TagValueCoder$TagValueSet;

    iput-object v3, v0, Lbtools/codec/TagValueCoder$TagValueSet;->child2:Lbtools/codec/TagValueCoder$TagValueSet;

    .line 72
    iget-object v3, v0, Lbtools/codec/TagValueCoder$TagValueSet;->child1:Lbtools/codec/TagValueCoder$TagValueSet;

    iget v3, v3, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    iget-object v4, v0, Lbtools/codec/TagValueCoder$TagValueSet;->child2:Lbtools/codec/TagValueCoder$TagValueSet;

    iget v4, v4, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    add-int/2addr v3, v4

    iput v3, v0, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0    # "node":Lbtools/codec/TagValueCoder$TagValueSet;
    :cond_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/codec/TagValueCoder$TagValueSet;

    .line 76
    .local v2, "root":Lbtools/codec/TagValueCoder$TagValueSet;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v5, v3}, Lbtools/codec/TagValueCoder$TagValueSet;->encode(Lbtools/util/BitCoderContext;II)V

    .line 78
    .end local v1    # "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lbtools/codec/TagValueCoder$TagValueSet;>;"
    .end local v2    # "root":Lbtools/codec/TagValueCoder$TagValueSet;
    :cond_1
    iput-object p1, p0, Lbtools/codec/TagValueCoder;->bc:Lbtools/util/BitCoderContext;

    .line 79
    return-void
.end method

.method public encodeTagValueSet([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 27
    iget v2, p0, Lbtools/codec/TagValueCoder;->pass:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v1, Lbtools/codec/TagValueCoder$TagValueSet;

    invoke-direct {v1}, Lbtools/codec/TagValueCoder$TagValueSet;-><init>()V

    .line 32
    .local v1, "tvsProbe":Lbtools/codec/TagValueCoder$TagValueSet;
    iput-object p1, v1, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    .line 33
    iget-object v2, p0, Lbtools/codec/TagValueCoder;->identityMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/codec/TagValueCoder$TagValueSet;

    .line 34
    .local v0, "tvs":Lbtools/codec/TagValueCoder$TagValueSet;
    iget v2, p0, Lbtools/codec/TagValueCoder;->pass:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 36
    iget-object v2, p0, Lbtools/codec/TagValueCoder;->bc:Lbtools/util/BitCoderContext;

    iget v3, v0, Lbtools/codec/TagValueCoder$TagValueSet;->range:I

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lbtools/codec/TagValueCoder$TagValueSet;->code:I

    invoke-virtual {v2, v3, v4}, Lbtools/util/BitCoderContext;->encodeBounded(II)V

    goto :goto_0

    .line 38
    :cond_2
    iget v2, p0, Lbtools/codec/TagValueCoder;->pass:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 40
    if-nez v0, :cond_3

    .line 42
    move-object v0, v1

    .line 43
    iget-object v2, p0, Lbtools/codec/TagValueCoder;->identityMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_3
    iget v2, v0, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    goto :goto_0
.end method
