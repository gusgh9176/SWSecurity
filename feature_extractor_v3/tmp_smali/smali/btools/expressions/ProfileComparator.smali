.class public final Lbtools/expressions/ProfileComparator;
.super Ljava/lang/Object;
.source "ProfileComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    array-length v4, p0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 12
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "usage: java ProfileComparator <lookup-file> <profile1> <profile2> <nsamples>"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    :goto_0
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    aget-object v4, p0, v6

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "lookupFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    aget-object v4, p0, v7

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v2, "profile1File":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .local v3, "profile2File":Ljava/io/File;
    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    .local v1, "nsamples":I
    invoke-static {v0, v2, v3, v1, v6}, Lbtools/expressions/ProfileComparator;->testContext(Ljava/io/File;Ljava/io/File;Ljava/io/File;IZ)V

    .line 21
    invoke-static {v0, v2, v3, v1, v7}, Lbtools/expressions/ProfileComparator;->testContext(Ljava/io/File;Ljava/io/File;Ljava/io/File;IZ)V

    goto :goto_0
.end method

.method private static testContext(Ljava/io/File;Ljava/io/File;Ljava/io/File;IZ)V
    .locals 8
    .param p0, "lookupFile"    # Ljava/io/File;
    .param p1, "profile1File"    # Ljava/io/File;
    .param p2, "profile2File"    # Ljava/io/File;
    .param p3, "nsamples"    # I
    .param p4, "nodeContext"    # Z

    .prologue
    .line 28
    new-instance v4, Lbtools/expressions/BExpressionMetaData;

    invoke-direct {v4}, Lbtools/expressions/BExpressionMetaData;-><init>()V

    .line 29
    .local v4, "meta1":Lbtools/expressions/BExpressionMetaData;
    new-instance v5, Lbtools/expressions/BExpressionMetaData;

    invoke-direct {v5}, Lbtools/expressions/BExpressionMetaData;-><init>()V

    .line 30
    .local v5, "meta2":Lbtools/expressions/BExpressionMetaData;
    if-eqz p4, :cond_0

    new-instance v1, Lbtools/expressions/BExpressionContextNode;

    invoke-direct {v1, v4}, Lbtools/expressions/BExpressionContextNode;-><init>(Lbtools/expressions/BExpressionMetaData;)V

    .line 31
    .local v1, "expctx1":Lbtools/expressions/BExpressionContext;
    :goto_0
    if-eqz p4, :cond_1

    new-instance v2, Lbtools/expressions/BExpressionContextNode;

    invoke-direct {v2, v5}, Lbtools/expressions/BExpressionContextNode;-><init>(Lbtools/expressions/BExpressionMetaData;)V

    .line 32
    .local v2, "expctx2":Lbtools/expressions/BExpressionContext;
    :goto_1
    invoke-virtual {v4, p0}, Lbtools/expressions/BExpressionMetaData;->readMetaData(Ljava/io/File;)V

    .line 33
    invoke-virtual {v5, p0}, Lbtools/expressions/BExpressionMetaData;->readMetaData(Ljava/io/File;)V

    .line 34
    const-string v7, "global"

    invoke-virtual {v1, p1, v7}, Lbtools/expressions/BExpressionContext;->parseFile(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    const-string v7, "global"

    invoke-virtual {v2, p2, v7}, Lbtools/expressions/BExpressionContext;->parseFile(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 38
    .local v6, "rnd":Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p3, :cond_2

    .line 40
    invoke-virtual {v1, v6}, Lbtools/expressions/BExpressionContext;->generateRandomValues(Ljava/util/Random;)[I

    move-result-object v0

    .line 41
    .local v0, "data":[I
    invoke-virtual {v1, v0}, Lbtools/expressions/BExpressionContext;->evaluate([I)V

    .line 42
    invoke-virtual {v2, v0}, Lbtools/expressions/BExpressionContext;->evaluate([I)V

    .line 44
    invoke-virtual {v1, v2}, Lbtools/expressions/BExpressionContext;->assertAllVariablesEqual(Lbtools/expressions/BExpressionContext;)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 30
    .end local v0    # "data":[I
    .end local v1    # "expctx1":Lbtools/expressions/BExpressionContext;
    .end local v2    # "expctx2":Lbtools/expressions/BExpressionContext;
    .end local v3    # "i":I
    .end local v6    # "rnd":Ljava/util/Random;
    :cond_0
    new-instance v1, Lbtools/expressions/BExpressionContextWay;

    invoke-direct {v1, v4}, Lbtools/expressions/BExpressionContextWay;-><init>(Lbtools/expressions/BExpressionMetaData;)V

    goto :goto_0

    .line 31
    .restart local v1    # "expctx1":Lbtools/expressions/BExpressionContext;
    :cond_1
    new-instance v2, Lbtools/expressions/BExpressionContextWay;

    invoke-direct {v2, v5}, Lbtools/expressions/BExpressionContextWay;-><init>(Lbtools/expressions/BExpressionMetaData;)V

    goto :goto_1

    .line 46
    .restart local v2    # "expctx2":Lbtools/expressions/BExpressionContext;
    .restart local v3    # "i":I
    .restart local v6    # "rnd":Ljava/util/Random;
    :cond_2
    return-void
.end method
