.class public abstract Lbtools/expressions/BExpressionContext;
.super Ljava/lang/Object;
.source "BExpressionContext.java"

# interfaces
.implements Lbtools/util/IByteArrayUnifier;


# static fields
.field private static final CONTEXT_TAG:Ljava/lang/String; = "---context:"

.field private static final MODEL_TAG:Ljava/lang/String; = "---model:"


# instance fields
.field private _br:Ljava/io/BufferedReader;

.field private _inOurContext:Z

.field public _modelClass:Ljava/lang/String;

.field private _readerDone:Z

.field private abBuf:[B

.field private buildInVariableIdx:[I

.field private cache:Lbtools/util/LruMap;

.field private cachemisses:J

.field private context:Ljava/lang/String;

.field private ctxDecode:Lbtools/util/BitCoderContext;

.field private ctxEndode:Lbtools/util/BitCoderContext;

.field private currentVarOffset:I

.field private currentVars:[F

.field private expressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbtools/expressions/BExpression;",
            ">;"
        }
    .end annotation
.end field

.field private fixTagsWritten:Z

.field private foreignContext:Lbtools/expressions/BExpressionContext;

.field private lastCacheNode:Lbtools/expressions/CacheNode;

.field private linenr:I

.field private lookupData:[I

.field private lookupDataFrozen:Z

.field private lookupDataValid:Z

.field private lookupHistograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private lookupIdxUsed:[Z

.field private lookupNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lookupNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lookupValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lbtools/expressions/BExpressionLookupValue;",
            ">;"
        }
    .end annotation
.end field

.field public meta:Lbtools/expressions/BExpressionMetaData;

.field private minWriteIdx:I

.field private nBuildInVars:I

.field private parsedLines:I

.field private probeCacheNode:Lbtools/expressions/CacheNode;

.field private probeVarSet:Lbtools/expressions/VarWrapper;

.field private requests:J

.field private requests2:J

.field private resultVarCache:Lbtools/util/LruMap;

.field private variableData:[F

.field private variableNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILbtools/expressions/BExpressionMetaData;)V
    .locals 4
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "hashSize"    # I
    .param p3, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    const/16 v3, 0x1000

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->_inOurContext:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->_br:Ljava/io/BufferedReader;

    .line 35
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->_readerDone:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupNames:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    .line 45
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->lookupDataFrozen:Z

    .line 47
    new-array v0, v2, [I

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    .line 49
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->abBuf:[B

    .line 50
    new-instance v0, Lbtools/util/BitCoderContext;

    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->abBuf:[B

    invoke-direct {v0, v1}, Lbtools/util/BitCoderContext;-><init>([B)V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->ctxEndode:Lbtools/util/BitCoderContext;

    .line 51
    new-instance v0, Lbtools/util/BitCoderContext;

    new-array v1, v2, [B

    invoke-direct {v0, v1}, Lbtools/util/BitCoderContext;-><init>([B)V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->ctxDecode:Lbtools/util/BitCoderContext;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    .line 59
    new-instance v0, Lbtools/expressions/CacheNode;

    invoke-direct {v0}, Lbtools/expressions/CacheNode;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    .line 62
    new-instance v0, Lbtools/expressions/VarWrapper;

    invoke-direct {v0}, Lbtools/expressions/VarWrapper;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    .line 93
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->lookupDataValid:Z

    .line 256
    iput v2, p0, Lbtools/expressions/BExpressionContext;->parsedLines:I

    .line 257
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->fixTagsWritten:Z

    .line 319
    new-instance v0, Lbtools/expressions/CacheNode;

    invoke-direct {v0}, Lbtools/expressions/CacheNode;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lastCacheNode:Lbtools/expressions/CacheNode;

    .line 108
    iput-object p1, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lbtools/expressions/BExpressionContext;->meta:Lbtools/expressions/BExpressionMetaData;

    .line 111
    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p0}, Lbtools/expressions/BExpressionMetaData;->registerListener(Ljava/lang/String;Lbtools/expressions/BExpressionContext;)V

    .line 113
    :cond_0
    const-string v0, "disableExpressionCache"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 116
    :cond_1
    if-lez p2, :cond_2

    .line 118
    new-instance v0, Lbtools/util/LruMap;

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {v0, v1, p2}, Lbtools/util/LruMap;-><init>(II)V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    .line 119
    new-instance v0, Lbtools/util/LruMap;

    invoke-direct {v0, v3, v3}, Lbtools/util/LruMap;-><init>(II)V

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->resultVarCache:Lbtools/util/LruMap;

    .line 121
    :cond_2
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lbtools/expressions/BExpressionMetaData;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "meta"    # Lbtools/expressions/BExpressionMetaData;

    .prologue
    .line 97
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0, p2}, Lbtools/expressions/BExpressionContext;-><init>(Ljava/lang/String;ILbtools/expressions/BExpressionMetaData;)V

    .line 98
    return-void
.end method

.method private _parseFile(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbtools/expressions/BExpression;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 787
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lbtools/expressions/BExpressionContext;->_br:Ljava/io/BufferedReader;

    .line 788
    iput-boolean v4, p0, Lbtools/expressions/BExpressionContext;->_readerDone:Z

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lbtools/expressions/BExpression;>;"
    :goto_0
    invoke-static {p0, v4}, Lbtools/expressions/BExpression;->parse(Lbtools/expressions/BExpressionContext;I)Lbtools/expressions/BExpression;

    move-result-object v0

    .line 793
    .local v0, "exp":Lbtools/expressions/BExpression;
    if-nez v0, :cond_0

    .line 796
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->_br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 797
    const/4 v2, 0x0

    iput-object v2, p0, Lbtools/expressions/BExpressionContext;->_br:Ljava/io/BufferedReader;

    .line 798
    return-object v1

    .line 794
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private _parseToken()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 908
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 911
    .local v2, "inComment":Z
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lbtools/expressions/BExpressionContext;->_readerDone:Z

    if-eqz v4, :cond_1

    const/4 v1, -0x1

    .line 912
    .local v1, "ic":I
    :goto_1
    if-gez v1, :cond_3

    .line 914
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 928
    :goto_2
    return-object v4

    .line 911
    .end local v1    # "ic":I
    :cond_1
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->_br:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v1

    goto :goto_1

    .line 915
    .restart local v1    # "ic":I
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lbtools/expressions/BExpressionContext;->_readerDone:Z

    .line 916
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 918
    :cond_3
    int-to-char v0, v1

    .line 919
    .local v0, "c":C
    if-ne v0, v5, :cond_4

    iget v4, p0, Lbtools/expressions/BExpressionContext;->linenr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbtools/expressions/BExpressionContext;->linenr:I

    .line 921
    :cond_4
    if-eqz v2, :cond_6

    .line 923
    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    if-ne v0, v5, :cond_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 926
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 928
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 931
    :cond_7
    const/16 v4, 0x23

    if-ne v0, v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    .line 932
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private decode([IZ[B)V
    .locals 12
    .param p1, "ld"    # [I
    .param p2, "inverseDirection"    # Z
    .param p3, "ab"    # [B

    .prologue
    const/4 v11, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 197
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->ctxDecode:Lbtools/util/BitCoderContext;

    .line 198
    .local v0, "ctx":Lbtools/util/BitCoderContext;
    invoke-virtual {v0, p3}, Lbtools/util/BitCoderContext;->reset([B)V

    .line 201
    if-eqz p2, :cond_1

    const/4 v7, 0x2

    :goto_0
    aput v7, p1, v8

    .line 204
    const/4 v5, 0x1

    .line 207
    .local v5, "inum":I
    :goto_1
    invoke-virtual {v0}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v3

    .line 208
    .local v3, "delta":I
    if-nez v3, :cond_2

    .line 219
    :cond_0
    :goto_2
    array-length v7, p1

    if-ge v5, v7, :cond_7

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inum":I
    .local v6, "inum":I
    aput v8, p1, v5

    move v5, v6

    .end local v6    # "inum":I
    .restart local v5    # "inum":I
    goto :goto_2

    .end local v3    # "delta":I
    .end local v5    # "inum":I
    :cond_1
    move v7, v8

    .line 201
    goto :goto_0

    .line 209
    .restart local v3    # "delta":I
    .restart local v5    # "inum":I
    :cond_2
    add-int v7, v5, v3

    array-length v10, p1

    if-gt v7, v10, :cond_0

    move v4, v3

    .end local v3    # "delta":I
    .local v4, "delta":I
    move v6, v5

    .line 211
    .end local v5    # "inum":I
    .restart local v6    # "inum":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "delta":I
    .restart local v3    # "delta":I
    if-le v4, v9, :cond_3

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inum":I
    .restart local v5    # "inum":I
    aput v8, p1, v6

    move v4, v3

    .end local v3    # "delta":I
    .restart local v4    # "delta":I
    move v6, v5

    .end local v5    # "inum":I
    .restart local v6    # "inum":I
    goto :goto_3

    .line 214
    .end local v4    # "delta":I
    .restart local v3    # "delta":I
    :cond_3
    invoke-virtual {v0}, Lbtools/util/BitCoderContext;->decodeVarBits()I

    move-result v2

    .line 215
    .local v2, "dd":I
    if-ne v2, v11, :cond_5

    move v1, v9

    .line 216
    .local v1, "d":I
    :goto_4
    iget-object v7, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lbtools/expressions/BExpressionLookupValue;

    array-length v7, v7

    if-lt v1, v7, :cond_4

    const/4 v1, 0x1

    .line 217
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inum":I
    .restart local v5    # "inum":I
    aput v1, p1, v6

    goto :goto_1

    .line 215
    .end local v1    # "d":I
    .end local v5    # "inum":I
    .restart local v6    # "inum":I
    :cond_5
    if-ge v2, v11, :cond_6

    add-int/lit8 v1, v2, 0x2

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v2, 0x1

    goto :goto_4

    .line 220
    .end local v2    # "dd":I
    .end local v6    # "inum":I
    .restart local v5    # "inum":I
    :cond_7
    return-void
.end method

.method private evaluate()V
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->expressionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 304
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "expidx":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 306
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->expressionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/expressions/BExpression;

    invoke-virtual {v2, p0}, Lbtools/expressions/BExpression;->evaluate(Lbtools/expressions/BExpressionContext;)F

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method private evaluateInto([FI)V
    .locals 4
    .param p1, "vars"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 440
    invoke-direct {p0}, Lbtools/expressions/BExpressionContext;->evaluate()V

    .line 441
    const/4 v1, 0x0

    .local v1, "vi":I
    :goto_0
    iget v2, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    if-ge v1, v2, :cond_1

    .line 443
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    aget v0, v2, v1

    .line 444
    .local v0, "idx":I
    add-int v3, v1, p2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput v2, p1, v3

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_0
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v2, v2, v0

    goto :goto_1

    .line 446
    .end local v0    # "idx":I
    :cond_1
    return-void
.end method

.method private variableName(I)Ljava/lang/String;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 537
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 539
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 544
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no variable for index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addLookupValue(Ljava/lang/String;Ljava/lang/String;[I)Lbtools/expressions/BExpressionLookupValue;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "lookupData2"    # [I

    .prologue
    .line 557
    const/4 v5, 0x0

    .line 558
    .local v5, "newValue":Lbtools/expressions/BExpressionLookupValue;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 559
    .local v8, "num":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 561
    if-eqz p3, :cond_0

    move-object v6, v5

    .line 625
    .end local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .local v6, "newValue":Lbtools/expressions/BExpressionLookupValue;
    :goto_0
    return-object v6

    .line 568
    .end local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    :cond_0
    new-instance v8, Ljava/lang/Integer;

    .end local v8    # "num":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 569
    .restart local v8    # "num":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupNames:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    const/4 v13, 0x2

    new-array v13, v13, [Lbtools/expressions/BExpressionLookupValue;

    const/4 v14, 0x0

    new-instance v15, Lbtools/expressions/BExpressionLookupValue;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Lbtools/expressions/BExpressionLookupValue;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lbtools/expressions/BExpressionLookupValue;

    const-string v16, "unknown"

    invoke-direct/range {v15 .. v16}, Lbtools/expressions/BExpressionLookupValue;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    const/4 v13, 0x2

    new-array v13, v13, [I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    new-array v4, v12, [I

    .line 575
    .local v4, "ndata":[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    array-length v15, v15

    invoke-static {v12, v13, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    move-object/from16 v0, p0

    iput-object v4, v0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    .line 580
    .end local v4    # "ndata":[I
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 581
    .local v3, "inum":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lbtools/expressions/BExpressionLookupValue;

    .line 582
    .local v11, "values":[Lbtools/expressions/BExpressionLookupValue;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 583
    .local v1, "histo":[I
    const/4 v2, 0x0

    .line 584
    .local v2, "i":I
    :goto_1
    array-length v12, v11

    if-ge v2, v12, :cond_2

    .line 586
    aget-object v10, v11, v2

    .line 587
    .local v10, "v":Lbtools/expressions/BExpressionLookupValue;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lbtools/expressions/BExpressionLookupValue;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 589
    .end local v10    # "v":Lbtools/expressions/BExpressionLookupValue;
    :cond_2
    array-length v12, v11

    if-ne v2, v12, :cond_7

    .line 591
    if-eqz p3, :cond_4

    .line 595
    const/4 v12, 0x1

    aput v12, p3, v3

    move-object v6, v5

    .line 596
    .end local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    goto/16 :goto_0

    .line 584
    .end local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v10    # "v":Lbtools/expressions/BExpressionLookupValue;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    .end local v10    # "v":Lbtools/expressions/BExpressionLookupValue;
    :cond_4
    const/16 v12, 0x1f3

    if-ne v2, v12, :cond_5

    .line 603
    :cond_5
    const/16 v12, 0x1f4

    if-ne v2, v12, :cond_6

    move-object v6, v5

    .line 605
    .end local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    goto/16 :goto_0

    .line 608
    .end local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    :cond_6
    array-length v12, v11

    add-int/lit8 v12, v12, 0x1

    new-array v9, v12, [Lbtools/expressions/BExpressionLookupValue;

    .line 609
    .local v9, "nvalues":[Lbtools/expressions/BExpressionLookupValue;
    array-length v12, v11

    add-int/lit8 v12, v12, 0x1

    new-array v7, v12, [I

    .line 610
    .local v7, "nhisto":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v1

    invoke-static {v1, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    move-object v11, v9

    .line 613
    move-object v1, v7

    .line 614
    new-instance v5, Lbtools/expressions/BExpressionLookupValue;

    .end local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lbtools/expressions/BExpressionLookupValue;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    aput-object v5, v11, v2

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    invoke-virtual {v12, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 617
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v12, v3, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v7    # "nhisto":[I
    .end local v9    # "nvalues":[Lbtools/expressions/BExpressionLookupValue;
    :cond_7
    aget v12, v1, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v1, v2

    .line 623
    if-eqz p3, :cond_8

    aput v2, p3, v3

    :goto_2
    move-object v6, v5

    .line 625
    .end local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    goto/16 :goto_0

    .line 624
    .end local v6    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    .restart local v5    # "newValue":Lbtools/expressions/BExpressionLookupValue;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aput v2, v12, v3

    goto :goto_2
.end method

.method public addLookupValue(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueIndex"    # I

    .prologue
    .line 634
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 635
    .local v1, "num":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 645
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 642
    .local v0, "inum":I
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbtools/expressions/BExpressionLookupValue;

    array-length v2, v3

    .line 643
    .local v2, "nvalues":I
    if-ltz p2, :cond_1

    if-lt p2, v2, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value index out of range for name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 644
    :cond_2
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aput p2, v3, v0

    goto :goto_0
.end method

.method public addSmallestLookupValue(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueIndex"    # I

    .prologue
    .line 656
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 657
    .local v1, "num":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    .local v0, "inum":I
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lbtools/expressions/BExpressionLookupValue;

    array-length v2, v4

    .line 665
    .local v2, "nvalues":I
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aget v3, v4, v0

    .line 666
    .local v3, "oldValueIndex":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    if-lt v3, p2, :cond_0

    .line 670
    :cond_2
    if-lt p2, v2, :cond_3

    .line 672
    add-int/lit8 p2, v2, -0x1

    .line 674
    :cond_3
    if-gez p2, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value index out of range for name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 675
    :cond_4
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aput p2, v4, v0

    goto :goto_0
.end method

.method public assertAllVariablesEqual(Lbtools/expressions/BExpressionContext;)V
    .locals 7
    .param p1, "other"    # Lbtools/expressions/BExpressionContext;

    .prologue
    .line 522
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    array-length v1, v3

    .line 523
    .local v1, "nv":I
    iget-object v3, p1, Lbtools/expressions/BExpressionContext;->variableData:[F

    array-length v2, v3

    .line 524
    .local v2, "nv2":I
    if-eq v1, v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mismatch in variable-count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 527
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v3, v3, v0

    iget-object v4, p1, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 529
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mismatch in variable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lbtools/expressions/BExpressionContext;->variableName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    .line 530
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContext;->encode()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lbtools/expressions/BExpressionContext;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_2
    return-void
.end method

.method assign(IF)F
    .locals 1
    .param p1, "variableIdx"    # I
    .param p2, "value"    # F

    .prologue
    .line 938
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aput p2, v0, p1

    .line 939
    return p2
.end method

.method public cacheStats()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/expressions/BExpressionContext;->requests:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requests2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/expressions/BExpressionContext;->requests2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cachemisses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtools/expressions/BExpressionContext;->cachemisses:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createNewLookupData()[I
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lbtools/expressions/BExpressionContext;->lookupDataFrozen:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 499
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode([B)V
    .locals 2
    .param p1, "ab"    # [B

    .prologue
    .line 186
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/expressions/BExpressionContext;->lookupDataValid:Z

    .line 188
    return-void
.end method

.method public dumpStatistics()V
    .locals 13

    .prologue
    .line 451
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 453
    .local v1, "counts":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 455
    .local v6, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 456
    .local v0, "cnt":I
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 457
    .local v4, "inum":I
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 459
    .local v2, "histo":[I
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    array-length v10, v2

    if-ge v3, v10, :cond_0

    .line 461
    aget v10, v2, v3

    add-int/2addr v0, v10

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v12, 0x3b9aca00

    add-int/2addr v12, v0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    .end local v0    # "cnt":I
    .end local v2    # "histo":[I
    .end local v3    # "i":I
    .end local v4    # "inum":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 468
    invoke-virtual {v1}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 469
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 470
    .restart local v6    # "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 472
    .restart local v4    # "inum":I
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lbtools/expressions/BExpressionLookupValue;

    .line 473
    .local v9, "values":[Lbtools/expressions/BExpressionLookupValue;
    iget-object v10, p0, Lbtools/expressions/BExpressionContext;->lookupHistograms:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 474
    .restart local v2    # "histo":[I
    array-length v10, v9

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_1

    .line 475
    array-length v10, v9

    new-array v8, v10, [Ljava/lang/String;

    .line 476
    .local v8, "svalues":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v10, v9

    if-ge v3, v10, :cond_2

    .line 478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0000000000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "scnt":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v9, v3

    invoke-virtual {v11}, Lbtools/expressions/BExpressionLookupValue;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 482
    .end local v7    # "scnt":Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 483
    array-length v10, v8

    add-int/lit8 v3, v10, -0x1

    :goto_3
    if-ltz v3, :cond_1

    .line 485
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 488
    .end local v2    # "histo":[I
    .end local v3    # "i":I
    .end local v4    # "inum":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "svalues":[Ljava/lang/String;
    .end local v9    # "values":[Lbtools/expressions/BExpressionLookupValue;
    :cond_3
    return-void
.end method

.method public encode()[B
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lbtools/expressions/BExpressionContext;->lookupDataValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "internal error: encoding undefined data?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-virtual {p0, v0}, Lbtools/expressions/BExpressionContext;->encode([I)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([I)[B
    .locals 13
    .param p1, "ld"    # [I

    .prologue
    const/4 v12, 0x0

    .line 134
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->ctxEndode:Lbtools/util/BitCoderContext;

    .line 135
    .local v1, "ctx":Lbtools/util/BitCoderContext;
    invoke-virtual {v1}, Lbtools/util/BitCoderContext;->reset()V

    .line 137
    const/4 v8, 0x0

    .line 138
    .local v8, "skippedTags":I
    const/4 v7, 0x0

    .line 143
    .local v7, "nonNullTags":I
    const/4 v4, 0x1

    .local v4, "inum":I
    :goto_0
    iget-object v9, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 145
    aget v2, p1, v4

    .line 146
    .local v2, "d":I
    if-nez v2, :cond_0

    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 143
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_0
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v9}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x2

    if-ge v2, v9, :cond_1

    const/4 v3, 0x7

    .line 158
    .local v3, "dd":I
    :goto_2
    invoke-virtual {v1, v3}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    goto :goto_1

    .line 157
    .end local v3    # "dd":I
    :cond_1
    const/16 v9, 0x9

    if-ge v2, v9, :cond_2

    add-int/lit8 v3, v2, -0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, -0x1

    goto :goto_2

    .line 160
    .end local v2    # "d":I
    :cond_3
    invoke-virtual {v1, v12}, Lbtools/util/BitCoderContext;->encodeVarBits(I)V

    .line 162
    if-nez v7, :cond_5

    const/4 v0, 0x0

    .line 177
    :cond_4
    return-object v0

    .line 164
    :cond_5
    invoke-virtual {v1}, Lbtools/util/BitCoderContext;->getEncodedLength()I

    move-result v6

    .line 165
    .local v6, "len":I
    new-array v0, v6, [B

    .line 166
    .local v0, "ab":[B
    iget-object v9, p0, Lbtools/expressions/BExpressionContext;->abBuf:[B

    invoke-static {v9, v12, v0, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v9, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [I

    .line 171
    .local v5, "ld2":[I
    invoke-direct {p0, v5, v12, v0}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 172
    const/4 v4, 0x1

    :goto_3
    iget-object v9, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 174
    aget v9, v5, v4

    aget v10, p1, v4

    if-eq v9, v10, :cond_6

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "assertion failed encoding inum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " val="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, p1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v12, v0}, Lbtools/expressions/BExpressionContext;->getKeyValueDescription(Z[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 172
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public final evaluate(Z[B)V
    .locals 8
    .param p1, "inverseDirection"    # Z
    .param p2, "ab"    # [B

    .prologue
    const-wide/16 v6, 0x1

    const/4 v2, 0x0

    .line 356
    iget-wide v4, p0, Lbtools/expressions/BExpressionContext;->requests:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbtools/expressions/BExpressionContext;->requests:J

    .line 357
    iput-boolean v2, p0, Lbtools/expressions/BExpressionContext;->lookupDataValid:Z

    .line 359
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    if-nez v3, :cond_2

    .line 361
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-direct {p0, v3, p1, p2}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 362
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    array-length v3, v3

    iget v4, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    if-eq v3, v4, :cond_1

    .line 364
    :cond_0
    iget v3, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    new-array v3, v3, [F

    iput-object v3, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    .line 366
    :cond_1
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    invoke-direct {p0, v3, v2}, Lbtools/expressions/BExpressionContext;->evaluateInto([FI)V

    .line 367
    iput v2, p0, Lbtools/expressions/BExpressionContext;->currentVarOffset:I

    .line 436
    :goto_0
    return-void

    .line 372
    :cond_2
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lastCacheNode:Lbtools/expressions/CacheNode;

    iget-object v3, v3, Lbtools/expressions/CacheNode;->ab:[B

    if-ne v3, p2, :cond_8

    .line 374
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lastCacheNode:Lbtools/expressions/CacheNode;

    .line 383
    .local v0, "cn":Lbtools/expressions/CacheNode;
    :goto_1
    if-nez v0, :cond_9

    .line 385
    iget-wide v4, p0, Lbtools/expressions/BExpressionContext;->cachemisses:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbtools/expressions/BExpressionContext;->cachemisses:J

    .line 387
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    invoke-virtual {v3}, Lbtools/util/LruMap;->removeLru()Lbtools/util/LruMapNode;

    move-result-object v0

    .end local v0    # "cn":Lbtools/expressions/CacheNode;
    check-cast v0, Lbtools/expressions/CacheNode;

    .line 388
    .restart local v0    # "cn":Lbtools/expressions/CacheNode;
    if-nez v0, :cond_3

    .line 390
    new-instance v0, Lbtools/expressions/CacheNode;

    .end local v0    # "cn":Lbtools/expressions/CacheNode;
    invoke-direct {v0}, Lbtools/expressions/CacheNode;-><init>()V

    .line 392
    .restart local v0    # "cn":Lbtools/expressions/CacheNode;
    :cond_3
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    iget v3, v3, Lbtools/expressions/CacheNode;->crc:I

    iput v3, v0, Lbtools/expressions/CacheNode;->crc:I

    .line 393
    iput-object p2, v0, Lbtools/expressions/CacheNode;->ab:[B

    .line 394
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    invoke-virtual {v3, v0}, Lbtools/util/LruMap;->put(Lbtools/util/LruMapNode;)V

    .line 396
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v3, v3, Lbtools/expressions/VarWrapper;->vars:[F

    if-nez v3, :cond_4

    .line 398
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget v4, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Lbtools/expressions/VarWrapper;->vars:[F

    .line 402
    :cond_4
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-direct {p0, v3, v2, p2}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 403
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v3, v3, Lbtools/expressions/VarWrapper;->vars:[F

    invoke-direct {p0, v3, v2}, Lbtools/expressions/BExpressionContext;->evaluateInto([FI)V

    .line 406
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 407
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v3, v3, Lbtools/expressions/VarWrapper;->vars:[F

    iget v4, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    invoke-direct {p0, v3, v4}, Lbtools/expressions/BExpressionContext;->evaluateInto([FI)V

    .line 409
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v4, v4, Lbtools/expressions/VarWrapper;->vars:[F

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([F)I

    move-result v4

    iput v4, v3, Lbtools/expressions/VarWrapper;->hash:I

    .line 412
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->resultVarCache:Lbtools/util/LruMap;

    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    invoke-virtual {v3, v4}, Lbtools/util/LruMap;->get(Lbtools/util/LruMapNode;)Lbtools/util/LruMapNode;

    move-result-object v1

    check-cast v1, Lbtools/expressions/VarWrapper;

    .line 413
    .local v1, "vw":Lbtools/expressions/VarWrapper;
    if-nez v1, :cond_6

    .line 415
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->resultVarCache:Lbtools/util/LruMap;

    invoke-virtual {v3}, Lbtools/util/LruMap;->removeLru()Lbtools/util/LruMapNode;

    move-result-object v1

    .end local v1    # "vw":Lbtools/expressions/VarWrapper;
    check-cast v1, Lbtools/expressions/VarWrapper;

    .line 416
    .restart local v1    # "vw":Lbtools/expressions/VarWrapper;
    if-nez v1, :cond_5

    .line 418
    new-instance v1, Lbtools/expressions/VarWrapper;

    .end local v1    # "vw":Lbtools/expressions/VarWrapper;
    invoke-direct {v1}, Lbtools/expressions/VarWrapper;-><init>()V

    .line 420
    .restart local v1    # "vw":Lbtools/expressions/VarWrapper;
    :cond_5
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget v3, v3, Lbtools/expressions/VarWrapper;->hash:I

    iput v3, v1, Lbtools/expressions/VarWrapper;->hash:I

    .line 421
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    iget-object v3, v3, Lbtools/expressions/VarWrapper;->vars:[F

    iput-object v3, v1, Lbtools/expressions/VarWrapper;->vars:[F

    .line 422
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeVarSet:Lbtools/expressions/VarWrapper;

    const/4 v4, 0x0

    iput-object v4, v3, Lbtools/expressions/VarWrapper;->vars:[F

    .line 423
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->resultVarCache:Lbtools/util/LruMap;

    invoke-virtual {v3, v1}, Lbtools/util/LruMap;->put(Lbtools/util/LruMapNode;)V

    .line 425
    :cond_6
    iget-object v3, v1, Lbtools/expressions/VarWrapper;->vars:[F

    iput-object v3, v0, Lbtools/expressions/CacheNode;->vars:[F

    .line 434
    .end local v1    # "vw":Lbtools/expressions/VarWrapper;
    :goto_2
    iget-object v3, v0, Lbtools/expressions/CacheNode;->vars:[F

    iput-object v3, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    .line 435
    if-eqz p1, :cond_7

    iget v2, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    :cond_7
    iput v2, p0, Lbtools/expressions/BExpressionContext;->currentVarOffset:I

    goto/16 :goto_0

    .line 378
    .end local v0    # "cn":Lbtools/expressions/CacheNode;
    :cond_8
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    iput-object p2, v3, Lbtools/expressions/CacheNode;->ab:[B

    .line 379
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    array-length v4, p2

    invoke-static {p2, v2, v4}, Lbtools/util/Crc32;->crc([BII)I

    move-result v4

    iput v4, v3, Lbtools/expressions/CacheNode;->crc:I

    .line 380
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    invoke-virtual {v3, v4}, Lbtools/util/LruMap;->get(Lbtools/util/LruMapNode;)Lbtools/util/LruMapNode;

    move-result-object v0

    check-cast v0, Lbtools/expressions/CacheNode;

    .restart local v0    # "cn":Lbtools/expressions/CacheNode;
    goto/16 :goto_1

    .line 429
    :cond_9
    iget-object v3, v0, Lbtools/expressions/CacheNode;->ab:[B

    if-ne p2, v3, :cond_a

    iget-wide v4, p0, Lbtools/expressions/BExpressionContext;->requests2:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbtools/expressions/BExpressionContext;->requests2:J

    .line 431
    :cond_a
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    invoke-virtual {v3, v0}, Lbtools/util/LruMap;->touch(Lbtools/util/LruMapNode;)V

    goto :goto_2
.end method

.method public final evaluate([I)V
    .locals 0
    .param p1, "lookupData2"    # [I

    .prologue
    .line 297
    iput-object p1, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    .line 298
    invoke-direct {p0}, Lbtools/expressions/BExpressionContext;->evaluate()V

    .line 299
    return-void
.end method

.method public finishMetaParsing()V
    .locals 3

    .prologue
    .line 284
    iget v0, p0, Lbtools/expressions/BExpressionContext;->parsedLines:I

    if-nez v0, :cond_0

    const-string v0, "global"

    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup table does not contain data for context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (old version?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/expressions/BExpressionContext;->lookupDataFrozen:Z

    .line 292
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    .line 293
    return-void
.end method

.method public generateRandomValues(Ljava/util/Random;)[I
    .locals 6
    .param p1, "rnd"    # Ljava/util/Random;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContext;->createNewLookupData()[I

    move-result-object v0

    .line 508
    .local v0, "data":[I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    aput v3, v0, v4

    .line 509
    const/4 v1, 0x1

    .local v1, "inum":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 511
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbtools/expressions/BExpressionLookupValue;

    array-length v2, v3

    .line 512
    .local v2, "nvalues":I
    aput v4, v0, v1

    .line 513
    if-le v1, v5, :cond_0

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 509
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v0, v1

    goto :goto_1

    .line 516
    .end local v2    # "nvalues":I
    :cond_1
    iput-boolean v5, p0, Lbtools/expressions/BExpressionContext;->lookupDataValid:Z

    .line 517
    return-object v0
.end method

.method public getBooleanLookupValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 680
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 681
    .local v0, "num":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getBuildInVariable(I)F
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->currentVars:[F

    iget v1, p0, Lbtools/expressions/BExpressionContext;->currentVarOffset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method abstract getBuildInVariableNames()[Ljava/lang/String;
.end method

.method public getForeignVariableIdx(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->foreignContext:Lbtools/expressions/BExpressionContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->foreignContext:Lbtools/expressions/BExpressionContext;

    iget-object v0, v0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown foreign context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->foreignContext:Lbtools/expressions/BExpressionContext;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lbtools/expressions/BExpressionContext;->getOutputVariableIndex(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getForeignVariableValue(I)F
    .locals 1
    .param p1, "foreignIndex"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->foreignContext:Lbtools/expressions/BExpressionContext;

    invoke-virtual {v0, p1}, Lbtools/expressions/BExpressionContext;->getBuildInVariable(I)F

    move-result v0

    return v0
.end method

.method public getKeyValueDescription(Z[B)Ljava/lang/String;
    .locals 6
    .param p1, "inverseDirection"    # Z
    .param p2, "ab"    # [B

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-direct {p0, v4, p1, p2}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 226
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 228
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lbtools/expressions/BExpressionLookupValue;

    .line 229
    .local v2, "va":[Lbtools/expressions/BExpressionLookupValue;
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aget v4, v4, v0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lbtools/expressions/BExpressionLookupValue;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "va":[Lbtools/expressions/BExpressionLookupValue;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getKeyValueList(Z[B)Ljava/util/List;
    .locals 5
    .param p1, "inverseDirection"    # Z
    .param p2, "ab"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-direct {p0, v4, p1, p2}, Lbtools/expressions/BExpressionContext;->decode([IZ[B)V

    .line 243
    const/4 v0, 0x0

    .local v0, "inum":I
    :goto_0
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 245
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lbtools/expressions/BExpressionLookupValue;

    .line 246
    .local v2, "va":[Lbtools/expressions/BExpressionLookupValue;
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aget v4, v4, v0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lbtools/expressions/BExpressionLookupValue;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 249
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->lookupNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "va":[Lbtools/expressions/BExpressionLookupValue;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method getLookupMatch(I[I)F
    .locals 3
    .param p1, "nameIdx"    # I
    .param p2, "valueIdxArray"    # [I

    .prologue
    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 840
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    aget v1, v1, p1

    aget v2, p2, v0

    if-ne v1, v2, :cond_0

    .line 842
    const/high16 v1, 0x3f800000    # 1.0f

    .line 845
    :goto_1
    return v1

    .line 838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLookupNameIdx(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupNumbers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 851
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getLookupValueIdx(ILjava/lang/String;)I
    .locals 3
    .param p1, "nameIdx"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 874
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->lookupValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lbtools/expressions/BExpressionLookupValue;

    .line 875
    .local v1, "values":[Lbtools/expressions/BExpressionLookupValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 877
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Lbtools/expressions/BExpressionLookupValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 875
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getMinWriteIdx()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lbtools/expressions/BExpressionContext;->minWriteIdx:I

    return v0
.end method

.method public getOutputVariableIndex(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mustExist"    # Z

    .prologue
    const/4 v5, 0x0

    .line 686
    invoke-virtual {p0, p1, v5}, Lbtools/expressions/BExpressionContext;->getVariableIdx(Ljava/lang/String;Z)I

    move-result v2

    .line 687
    .local v2, "idx":I
    if-gez v2, :cond_0

    .line 689
    if-eqz p2, :cond_1

    .line 691
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown variable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 694
    :cond_0
    iget v3, p0, Lbtools/expressions/BExpressionContext;->minWriteIdx:I

    if-ge v2, v3, :cond_1

    .line 696
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad access to global variable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 698
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    if-ge v1, v3, :cond_3

    .line 700
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_2

    .line 709
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 698
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_3
    iget v3, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 706
    .local v0, "extended":[I
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    iget v4, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    iget v3, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    aput v2, v0, v3

    .line 708
    iput-object v0, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    .line 709
    iget v1, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    .end local v1    # "i":I
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    goto :goto_1
.end method

.method getVariableIdx(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .prologue
    .line 815
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 816
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 818
    if-eqz p2, :cond_1

    .line 820
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "num":Ljava/lang/Integer;
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 821
    .restart local v0    # "num":Ljava/lang/Integer;
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .line 825
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getVariableValue(I)F
    .locals 1
    .param p1, "variableIdx"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v0, v0, p1

    return v0
.end method

.method public getVariableValue(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 804
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 805
    .local v0, "num":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lbtools/expressions/BExpressionContext;->getVariableValue(I)F

    move-result p2

    goto :goto_0
.end method

.method public final isLookupIdxUsed(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final markLookupIdxUsed(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 857
    return-void
.end method

.method public parseFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnlyContext"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 733
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 735
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    :cond_0
    if-eqz p2, :cond_1

    .line 741
    const/4 v7, 0x1

    :try_start_0
    iput v7, p0, Lbtools/expressions/BExpressionContext;->linenr:I

    .line 742
    iget-object v3, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    .line 743
    .local v3, "realContext":Ljava/lang/String;
    iput-object p2, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    .line 744
    invoke-direct {p0, p1}, Lbtools/expressions/BExpressionContext;->_parseFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lbtools/expressions/BExpressionContext;->expressionList:Ljava/util/List;

    .line 745
    iget-object v7, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [F

    iput-object v7, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    .line 746
    iget-object v7, p0, Lbtools/expressions/BExpressionContext;->lookupData:[I

    invoke-virtual {p0, v7}, Lbtools/expressions/BExpressionContext;->evaluate([I)V

    .line 747
    iput-object v3, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    .line 749
    .end local v3    # "realContext":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lbtools/expressions/BExpressionContext;->linenr:I

    .line 750
    iget-object v7, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    if-nez v7, :cond_2

    :goto_0
    iput v6, p0, Lbtools/expressions/BExpressionContext;->minWriteIdx:I

    .line 752
    invoke-direct {p0, p1}, Lbtools/expressions/BExpressionContext;->_parseFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lbtools/expressions/BExpressionContext;->expressionList:Ljava/util/List;

    .line 755
    invoke-virtual {p0}, Lbtools/expressions/BExpressionContext;->getBuildInVariableNames()[Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "varNames":[Ljava/lang/String;
    array-length v6, v4

    iput v6, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    .line 757
    iget v6, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    new-array v6, v6, [I

    iput-object v6, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    .line 758
    const/4 v5, 0x0

    .local v5, "vi":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 760
    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->buildInVariableIdx:[I

    aget-object v7, v4, v5

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lbtools/expressions/BExpressionContext;->getVariableIdx(Ljava/lang/String;Z)I

    move-result v7

    aput v7, v6, v5

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 750
    .end local v4    # "varNames":[Ljava/lang/String;
    .end local v5    # "vi":I
    :cond_2
    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    array-length v6, v6

    goto :goto_0

    .line 763
    .restart local v4    # "varNames":[Ljava/lang/String;
    .restart local v5    # "vi":I
    :cond_3
    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    .line 764
    .local v2, "readOnlyData":[F
    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->variableNumbers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [F

    iput-object v6, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    .line 765
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Lbtools/expressions/BExpressionContext;->minWriteIdx:I

    if-ge v1, v6, :cond_5

    .line 767
    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->variableData:[F

    aget v7, v2, v1

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 770
    .end local v1    # "i":I
    .end local v2    # "readOnlyData":[F
    .end local v4    # "varNames":[Ljava/lang/String;
    .end local v5    # "vi":I
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    instance-of v6, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v6, :cond_4

    .line 774
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ParseException at line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lbtools/expressions/BExpressionContext;->linenr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 776
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 778
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "readOnlyData":[F
    .restart local v4    # "varNames":[Ljava/lang/String;
    .restart local v5    # "vi":I
    :cond_5
    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->expressionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 780
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not contain expressions for context "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (old version?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 783
    :cond_6
    return-void
.end method

.method public parseMetaLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 261
    iget v5, p0, Lbtools/expressions/BExpressionContext;->parsedLines:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbtools/expressions/BExpressionContext;->parsedLines:I

    .line 262
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v3, "tk":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "value":Ljava/lang/String;
    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 266
    .local v0, "idx":I
    if-ltz v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_0
    iget-boolean v5, p0, Lbtools/expressions/BExpressionContext;->fixTagsWritten:Z

    if-nez v5, :cond_1

    .line 270
    const/4 v5, 0x1

    iput-boolean v5, p0, Lbtools/expressions/BExpressionContext;->fixTagsWritten:Z

    .line 271
    const-string v5, "way"

    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "reversedirection"

    const-string v6, "yes"

    invoke-virtual {p0, v5, v6, v7}, Lbtools/expressions/BExpressionContext;->addLookupValue(Ljava/lang/String;Ljava/lang/String;[I)Lbtools/expressions/BExpressionLookupValue;

    .line 274
    :cond_1
    :goto_0
    const-string v5, "reversedirection"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 280
    :cond_2
    return-void

    .line 272
    :cond_3
    const-string v5, "node"

    iget-object v6, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "nodeaccessgranted"

    const-string v6, "yes"

    invoke-virtual {p0, v5, v6, v7}, Lbtools/expressions/BExpressionContext;->addLookupValue(Ljava/lang/String;Ljava/lang/String;[I)Lbtools/expressions/BExpressionLookupValue;

    goto :goto_0

    .line 275
    :cond_4
    const-string v5, "nodeaccessgranted"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 276
    invoke-virtual {p0, v1, v4, v7}, Lbtools/expressions/BExpressionContext;->addLookupValue(Ljava/lang/String;Ljava/lang/String;[I)Lbtools/expressions/BExpressionLookupValue;

    move-result-object v2

    .line 279
    .local v2, "newValue":Lbtools/expressions/BExpressionLookupValue;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbtools/expressions/BExpressionLookupValue;->addAlias(Ljava/lang/String;)V

    goto :goto_1
.end method

.method parseToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 887
    :cond_0
    :goto_0
    invoke-direct {p0}, Lbtools/expressions/BExpressionContext;->_parseToken()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 899
    .end local v0    # "token":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 889
    .restart local v0    # "token":Ljava/lang/String;
    :cond_1
    const-string v1, "---context:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 891
    const-string v1, "---context:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbtools/expressions/BExpressionContext;->context:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lbtools/expressions/BExpressionContext;->_inOurContext:Z

    goto :goto_0

    .line 893
    :cond_2
    const-string v1, "---model:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 895
    const-string v1, "---model:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbtools/expressions/BExpressionContext;->_modelClass:Ljava/lang/String;

    goto :goto_0

    .line 897
    :cond_3
    iget-boolean v1, p0, Lbtools/expressions/BExpressionContext;->_inOurContext:Z

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method public final setAllTagsUsed()V
    .locals 3

    .prologue
    .line 866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 868
    iget-object v1, p0, Lbtools/expressions/BExpressionContext;->lookupIdxUsed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method

.method public setForeignContext(Lbtools/expressions/BExpressionContext;)V
    .locals 0
    .param p1, "foreignContext"    # Lbtools/expressions/BExpressionContext;

    .prologue
    .line 714
    iput-object p1, p0, Lbtools/expressions/BExpressionContext;->foreignContext:Lbtools/expressions/BExpressionContext;

    .line 715
    return-void
.end method

.method protected setInverseVars()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbtools/expressions/BExpressionContext;->nBuildInVars:I

    iput v0, p0, Lbtools/expressions/BExpressionContext;->currentVarOffset:I

    .line 81
    return-void
.end method

.method public final unify([BII)[B
    .locals 6
    .param p1, "ab"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 324
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    const/4 v5, 0x0

    iput-object v5, v4, Lbtools/expressions/CacheNode;->ab:[B

    .line 325
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    invoke-static {p1, p2, p3}, Lbtools/util/Crc32;->crc([BII)I

    move-result v5

    iput v5, v4, Lbtools/expressions/CacheNode;->crc:I

    .line 327
    iget-object v4, p0, Lbtools/expressions/BExpressionContext;->cache:Lbtools/util/LruMap;

    iget-object v5, p0, Lbtools/expressions/BExpressionContext;->probeCacheNode:Lbtools/expressions/CacheNode;

    invoke-virtual {v4, v5}, Lbtools/util/LruMap;->get(Lbtools/util/LruMapNode;)Lbtools/util/LruMapNode;

    move-result-object v1

    check-cast v1, Lbtools/expressions/CacheNode;

    .line 328
    .local v1, "cn":Lbtools/expressions/CacheNode;
    if-eqz v1, :cond_2

    .line 330
    iget-object v0, v1, Lbtools/expressions/CacheNode;->ab:[B

    .line 331
    .local v0, "cab":[B
    array-length v4, v0

    if-ne v4, p3, :cond_2

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 335
    aget-byte v4, v0, v2

    add-int v5, v2, p2

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 337
    const/4 v1, 0x0

    .line 341
    :cond_0
    if-eqz v1, :cond_2

    .line 343
    iput-object v1, p0, Lbtools/expressions/BExpressionContext;->lastCacheNode:Lbtools/expressions/CacheNode;

    .line 344
    iget-object v3, v1, Lbtools/expressions/CacheNode;->ab:[B

    .line 350
    .end local v0    # "cab":[B
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 333
    .restart local v0    # "cab":[B
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "cab":[B
    .end local v2    # "i":I
    :cond_2
    new-array v3, p3, [B

    .line 349
    .local v3, "nab":[B
    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
