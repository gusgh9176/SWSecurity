.class public final Lbtools/router/ProfileCache;
.super Ljava/lang/Object;
.source "ProfileCache.java"


# static fields
.field private static expctxNode:Lbtools/expressions/BExpressionContextNode;

.field private static expctxWay:Lbtools/expressions/BExpressionContextWay;

.field private static lastLookupFile:Ljava/io/File;

.field private static lastLookupTimestamp:J

.field private static lastProfileFile:Ljava/io/File;

.field private static lastProfileTimestamp:J

.field private static profilesBusy:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseProfile(Lbtools/router/RoutingContext;)Z
    .locals 12
    .param p0, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 29
    const-class v7, Lbtools/router/ProfileCache;

    monitor-enter v7

    :try_start_0
    const-string v8, "profileBaseDir"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "profileBaseDir":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 34
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 35
    .local v3, "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v4, "profileFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lbtools/router/RoutingContext;->profileTimestamp:J

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v8, "lookups.dat"

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v0, "lookupFile":Ljava/io/File;
    sget-object v8, Lbtools/router/ProfileCache;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    if-eqz v8, :cond_1

    sget-object v8, Lbtools/router/ProfileCache;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    if-eqz v8, :cond_1

    sget-boolean v8, Lbtools/router/ProfileCache;->profilesBusy:Z

    if-nez v8, :cond_1

    .line 48
    sget-object v8, Lbtools/router/ProfileCache;->lastProfileFile:Ljava/io/File;

    invoke-virtual {v4, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lbtools/router/ProfileCache;->lastLookupFile:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    iget-wide v8, p0, Lbtools/router/RoutingContext;->profileTimestamp:J

    sget-wide v10, Lbtools/router/ProfileCache;->lastProfileTimestamp:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sget-wide v10, Lbtools/router/ProfileCache;->lastLookupTimestamp:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 53
    sget-object v6, Lbtools/router/ProfileCache;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    iput-object v6, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 54
    sget-object v6, Lbtools/router/ProfileCache;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iput-object v6, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    .line 55
    const/4 v6, 0x1

    sput-boolean v6, Lbtools/router/ProfileCache;->profilesBusy:Z

    .line 56
    invoke-virtual {p0}, Lbtools/router/RoutingContext;->readGlobalConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    monitor-exit v7

    return v5

    .line 39
    .end local v0    # "lookupFile":Ljava/io/File;
    .end local v3    # "profileDir":Ljava/io/File;
    .end local v4    # "profileFile":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .restart local v3    # "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lbtools/router/RoutingContext;->localFunction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".brf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "profileFile":Ljava/io/File;
    goto :goto_0

    .line 62
    .restart local v0    # "lookupFile":Ljava/io/File;
    :cond_1
    new-instance v1, Lbtools/expressions/BExpressionMetaData;

    invoke-direct {v1}, Lbtools/expressions/BExpressionMetaData;-><init>()V

    .line 64
    .local v1, "meta":Lbtools/expressions/BExpressionMetaData;
    new-instance v5, Lbtools/expressions/BExpressionContextWay;

    iget v8, p0, Lbtools/router/RoutingContext;->memoryclass:I

    mul-int/lit16 v8, v8, 0x200

    invoke-direct {v5, v8, v1}, Lbtools/expressions/BExpressionContextWay;-><init>(ILbtools/expressions/BExpressionMetaData;)V

    iput-object v5, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 65
    new-instance v5, Lbtools/expressions/BExpressionContextNode;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v1}, Lbtools/expressions/BExpressionContextNode;-><init>(ILbtools/expressions/BExpressionMetaData;)V

    iput-object v5, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    .line 66
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    iget-object v8, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v5, v8}, Lbtools/expressions/BExpressionContextNode;->setForeignContext(Lbtools/expressions/BExpressionContext;)V

    .line 68
    new-instance v5, Ljava/io/File;

    const-string v8, "lookups.dat"

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lbtools/expressions/BExpressionMetaData;->readMetaData(Ljava/io/File;)V

    .line 70
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    const-string v8, "global"

    invoke-virtual {v5, v4, v8}, Lbtools/expressions/BExpressionContextWay;->parseFile(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    const-string v8, "global"

    invoke-virtual {v5, v4, v8}, Lbtools/expressions/BExpressionContextNode;->parseFile(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lbtools/router/RoutingContext;->readGlobalConfig()V

    .line 75
    iget-boolean v5, p0, Lbtools/router/RoutingContext;->processUnusedTags:Z

    if-eqz v5, :cond_2

    .line 77
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    invoke-virtual {v5}, Lbtools/expressions/BExpressionContextWay;->setAllTagsUsed()V

    .line 80
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lbtools/router/ProfileCache;->lastProfileTimestamp:J

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lbtools/router/ProfileCache;->lastLookupTimestamp:J

    .line 82
    sput-object v4, Lbtools/router/ProfileCache;->lastProfileFile:Ljava/io/File;

    .line 83
    sput-object v0, Lbtools/router/ProfileCache;->lastLookupFile:Ljava/io/File;

    .line 84
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    sput-object v5, Lbtools/router/ProfileCache;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 85
    iget-object v5, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    sput-object v5, Lbtools/router/ProfileCache;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    .line 86
    const/4 v5, 0x1

    sput-boolean v5, Lbtools/router/ProfileCache;->profilesBusy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    .line 87
    goto/16 :goto_1

    .line 29
    .end local v0    # "lookupFile":Ljava/io/File;
    .end local v1    # "meta":Lbtools/expressions/BExpressionMetaData;
    .end local v2    # "profileBaseDir":Ljava/lang/String;
    .end local v3    # "profileDir":Ljava/io/File;
    .end local v4    # "profileFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public static declared-synchronized releaseProfile(Lbtools/router/RoutingContext;)V
    .locals 3
    .param p0, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 93
    const-class v1, Lbtools/router/ProfileCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    sget-object v2, Lbtools/router/ProfileCache;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    sget-object v2, Lbtools/router/ProfileCache;->expctxNode:Lbtools/expressions/BExpressionContextNode;

    if-ne v0, v2, :cond_0

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lbtools/router/ProfileCache;->profilesBusy:Z

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/router/RoutingContext;->expctxWay:Lbtools/expressions/BExpressionContextWay;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lbtools/router/RoutingContext;->expctxNode:Lbtools/expressions/BExpressionContextNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
