.class public Lbtools/codec/TagValueCoder$TagValueSet$FrequencyComparator;
.super Ljava/lang/Object;
.source "TagValueCoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/codec/TagValueCoder$TagValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lbtools/codec/TagValueCoder$TagValueSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lbtools/codec/TagValueCoder$TagValueSet;Lbtools/codec/TagValueCoder$TagValueSet;)I
    .locals 2
    .param p1, "tvs1"    # Lbtools/codec/TagValueCoder$TagValueSet;
    .param p2, "tvs2"    # Lbtools/codec/TagValueCoder$TagValueSet;

    .prologue
    .line 260
    iget v0, p1, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    iget v1, p2, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    if-ge v0, v1, :cond_0

    .line 261
    const/4 v0, -0x1

    .line 264
    :goto_0
    return v0

    .line 262
    :cond_0
    iget v0, p1, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    iget v1, p2, Lbtools/codec/TagValueCoder$TagValueSet;->frequency:I

    if-le v0, v1, :cond_1

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 255
    check-cast p1, Lbtools/codec/TagValueCoder$TagValueSet;

    check-cast p2, Lbtools/codec/TagValueCoder$TagValueSet;

    invoke-virtual {p0, p1, p2}, Lbtools/codec/TagValueCoder$TagValueSet$FrequencyComparator;->compare(Lbtools/codec/TagValueCoder$TagValueSet;Lbtools/codec/TagValueCoder$TagValueSet;)I

    move-result v0

    return v0
.end method
