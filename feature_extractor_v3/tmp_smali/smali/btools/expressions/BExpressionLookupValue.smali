.class final Lbtools/expressions/BExpressionLookupValue;
.super Ljava/lang/Object;
.source "BExpressionLookupValue.java"


# instance fields
.field aliases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lbtools/expressions/BExpressionLookupValue;->aliases:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionLookupValue;->aliases:Ljava/util/ArrayList;

    .line 33
    :cond_0
    iget-object v0, p0, Lbtools/expressions/BExpressionLookupValue;->aliases:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 39
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "v":Ljava/lang/String;
    iget-object v1, p0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 50
    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return v1

    .line 44
    :cond_0
    instance-of v1, p1, Lbtools/expressions/BExpressionLookupValue;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lbtools/expressions/BExpressionLookupValue;

    .line 48
    .local v0, "v":Lbtools/expressions/BExpressionLookupValue;
    iget-object v1, p0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    iget-object v2, v0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 50
    .end local v0    # "v":Lbtools/expressions/BExpressionLookupValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-object v2, p0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :goto_0
    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Lbtools/expressions/BExpressionLookupValue;->aliases:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lbtools/expressions/BExpressionLookupValue;->aliases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 63
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbtools/expressions/BExpressionLookupValue;->value:Ljava/lang/String;

    return-object v0
.end method
