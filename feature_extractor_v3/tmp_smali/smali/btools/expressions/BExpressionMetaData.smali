.class public final Lbtools/expressions/BExpressionMetaData;
.super Ljava/lang/Object;
.source "BExpressionMetaData.java"


# static fields
.field private static final CONTEXT_TAG:Ljava/lang/String; = "---context:"

.field private static final MINOR_VERSION_TAG:Ljava/lang/String; = "---minorversion:"

.field private static final VARLENGTH_TAG:Ljava/lang/String; = "---readvarlength"

.field private static final VERSION_TAG:Ljava/lang/String; = "---lookupversion:"


# instance fields
.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbtools/expressions/BExpressionContext;",
            ">;"
        }
    .end annotation
.end field

.field public lookupMinorVersion:S

.field public lookupVersion:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-short v0, p0, Lbtools/expressions/BExpressionMetaData;->lookupVersion:S

    .line 32
    iput-short v0, p0, Lbtools/expressions/BExpressionMetaData;->lookupMinorVersion:S

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtools/expressions/BExpressionMetaData;->listeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public readMetaData(Ljava/io/File;)V
    .locals 7
    .param p1, "lookupsFile"    # Ljava/io/File;

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 51
    .local v2, "ctx":Lbtools/expressions/BExpressionContext;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 78
    iget-object v5, p0, Lbtools/expressions/BExpressionMetaData;->listeners:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/expressions/BExpressionContext;

    .line 80
    .local v1, "c":Lbtools/expressions/BExpressionContext;
    invoke-virtual {v1}, Lbtools/expressions/BExpressionContext;->finishMetaParsing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "c":Lbtools/expressions/BExpressionContext;
    .end local v2    # "ctx":Lbtools/expressions/BExpressionContext;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 53
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "ctx":Lbtools/expressions/BExpressionContext;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    const-string v5, "---context:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    iget-object v5, p0, Lbtools/expressions/BExpressionMetaData;->listeners:Ljava/util/HashMap;

    const-string v6, "---context:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ctx":Lbtools/expressions/BExpressionContext;
    check-cast v2, Lbtools/expressions/BExpressionContext;

    .line 58
    .restart local v2    # "ctx":Lbtools/expressions/BExpressionContext;
    goto :goto_0

    .line 60
    :cond_2
    const-string v5, "---lookupversion:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    const-string v5, "---lookupversion:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    iput-short v5, p0, Lbtools/expressions/BExpressionMetaData;->lookupVersion:S

    goto :goto_0

    .line 65
    :cond_3
    const-string v5, "---minorversion:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    const-string v5, "---minorversion:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    iput-short v5, p0, Lbtools/expressions/BExpressionMetaData;->lookupMinorVersion:S

    goto/16 :goto_0

    .line 70
    :cond_4
    const-string v5, "---readvarlength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lbtools/expressions/BExpressionContext;->parseMetaLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 88
    :cond_5
    return-void
.end method

.method public registerListener(Ljava/lang/String;Lbtools/expressions/BExpressionContext;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "ctx"    # Lbtools/expressions/BExpressionContext;

    .prologue
    .line 38
    iget-object v0, p0, Lbtools/expressions/BExpressionMetaData;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
