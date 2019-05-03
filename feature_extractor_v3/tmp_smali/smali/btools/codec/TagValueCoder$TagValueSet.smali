.class public final Lbtools/codec/TagValueCoder$TagValueSet;
.super Ljava/lang/Object;
.source "TagValueCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/codec/TagValueCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagValueSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/codec/TagValueCoder$TagValueSet$FrequencyComparator;
    }
.end annotation


# instance fields
.field public child1:Lbtools/codec/TagValueCoder$TagValueSet;

.field public child2:Lbtools/codec/TagValueCoder$TagValueSet;

.field public code:I

.field public data:[B

.field public frequency:I

.field public range:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lbtools/util/BitCoderContext;II)V
    .locals 7
    .param p1, "bc"    # Lbtools/util/BitCoderContext;
    .param p2, "range"    # I
    .param p3, "code"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    iput p2, p0, Lbtools/codec/TagValueCoder$TagValueSet;->range:I

    .line 180
    iput p3, p0, Lbtools/codec/TagValueCoder$TagValueSet;->code:I

    .line 181
    iget-object v5, p0, Lbtools/codec/TagValueCoder$TagValueSet;->child1:Lbtools/codec/TagValueCoder$TagValueSet;

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 182
    .local v2, "isNode":Z
    :goto_0
    invoke-virtual {p1, v2}, Lbtools/util/BitCoderContext;->encodeBit(Z)V

    .line 183
    if-eqz v2, :cond_2

    .line 185
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->child1:Lbtools/codec/TagValueCoder$TagValueSet;

    shl-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lbtools/codec/TagValueCoder$TagValueSet;->encode(Lbtools/util/BitCoderContext;II)V

    .line 186
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->child2:Lbtools/codec/TagValueCoder$TagValueSet;

    shl-int/lit8 v5, p2, 0x1

    add-int v6, p3, p2

    invoke-virtual {v4, p1, v5, v6}, Lbtools/codec/TagValueCoder$TagValueSet;->encode(Lbtools/util/BitCoderContext;II)V

    .line 208
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isNode":Z
    :cond_1
    move v2, v4

    .line 181
    goto :goto_0

    .line 190
    .restart local v2    # "isNode":Z
    :cond_2
    iget-object v5, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-nez v5, :cond_3

    .line 192
    invoke-virtual {p1, v4}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    goto :goto_1

    .line 195
    :cond_3
    new-instance v3, Lbtools/util/BitCoderContext;

    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    invoke-direct {v3, v4}, Lbtools/util/BitCoderContext;-><init>([B)V

    .line 198
    .local v3, "src":Lbtools/util/BitCoderContext;
    :goto_2
    invoke-virtual {v3}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v1

    .line 199
    .local v1, "delta":I
    invoke-virtual {p1, v1}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 200
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v3}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v0

    .line 205
    .local v0, "data":I
    invoke-virtual {p1, v0}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    instance-of v4, p1, Lbtools/codec/TagValueCoder$TagValueSet;

    if-eqz v4, :cond_6

    move-object v1, p1

    .line 215
    check-cast v1, Lbtools/codec/TagValueCoder$TagValueSet;

    .line 216
    .local v1, "tvs":Lbtools/codec/TagValueCoder$TagValueSet;
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-nez v4, :cond_2

    .line 218
    iget-object v4, v1, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-nez v4, :cond_1

    .line 237
    .end local v1    # "tvs":Lbtools/codec/TagValueCoder$TagValueSet;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "tvs":Lbtools/codec/TagValueCoder$TagValueSet;
    :cond_1
    move v2, v3

    .line 218
    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, v1, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-nez v4, :cond_3

    .line 222
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 224
    :cond_3
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    array-length v4, v4

    iget-object v5, v1, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    array-length v5, v5

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 226
    goto :goto_0

    .line 228
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 230
    iget-object v4, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    aget-byte v4, v4, v0

    iget-object v5, v1, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    aget-byte v5, v5, v0

    if-eq v4, v5, :cond_5

    move v2, v3

    .line 232
    goto :goto_0

    .line 228
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "tvs":Lbtools/codec/TagValueCoder$TagValueSet;
    :cond_6
    move v2, v3

    .line 237
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 243
    iget-object v2, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    if-nez v2, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 252
    :cond_0
    return v0

    .line 247
    :cond_1
    const/16 v0, 0x11

    .line 248
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 250
    shl-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lbtools/codec/TagValueCoder$TagValueSet;->data:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
