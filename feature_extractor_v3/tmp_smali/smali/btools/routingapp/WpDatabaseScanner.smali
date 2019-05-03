.class public Lbtools/routingapp/WpDatabaseScanner;
.super Ljava/lang/Thread;
.source "WpDatabaseScanner.java"


# static fields
.field private static vetos:[Ljava/lang/String;


# instance fields
.field private bestGuess:Ljava/lang/String;

.field private currentDir:Ljava/lang/String;

.field private currentDirSync:Ljava/lang/Object;

.field private lastError:Ljava/lang/String;

.field private maxtimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dev"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sys"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "etc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "init"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cache"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "acct"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lbtools/routingapp/WpDatabaseScanner;->vetos:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDir:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->bestGuess:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->lastError:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbtools/routingapp/WpDatabaseScanner;->maxtimestamp:J

    return-void
.end method

.method private scan(Ljava/io/File;I)V
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    const/16 v6, 0x8

    if-le p2, v6, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const/4 v6, 0x1

    if-ne p2, v6, :cond_2

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "name":Ljava/lang/String;
    sget-object v7, Lbtools/routingapp/WpDatabaseScanner;->vetos:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v4, v7, v6

    .line 73
    .local v4, "veto":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "veto":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lbtools/routingapp/WpDatabaseScanner;->testPath(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 82
    .local v1, "childs":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 86
    array-length v6, v1

    :goto_2
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 88
    .local v0, "child":Ljava/io/File;
    add-int/lit8 v7, p2, 0x1

    invoke-direct {p0, v0, v7}, Lbtools/routingapp/WpDatabaseScanner;->scan(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 92
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "childs":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lbtools/routingapp/WpDatabaseScanner;->setLastError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iput-object p1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDir:Ljava/lang/String;

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLastError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iput-object p1, p0, Lbtools/routingapp/WpDatabaseScanner;->lastError:Ljava/lang/String;

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private testPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lbtools/routingapp/WpDatabaseScanner;->setCurrentDir(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lbtools/routingapp/CoordinateReaderOsmAnd;

    invoke-direct {v0, p1}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbtools/routingapp/WpDatabaseScanner;->testReader(Lbtools/routingapp/CoordinateReader;)V

    .line 103
    new-instance v0, Lbtools/routingapp/CoordinateReaderOsmAnd;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbtools/routingapp/CoordinateReaderOsmAnd;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lbtools/routingapp/WpDatabaseScanner;->testReader(Lbtools/routingapp/CoordinateReader;)V

    .line 104
    new-instance v0, Lbtools/routingapp/CoordinateReaderLocus;

    invoke-direct {v0, p1}, Lbtools/routingapp/CoordinateReaderLocus;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbtools/routingapp/WpDatabaseScanner;->testReader(Lbtools/routingapp/CoordinateReader;)V

    .line 105
    new-instance v0, Lbtools/routingapp/CoordinateReaderOrux;

    invoke-direct {v0, p1}, Lbtools/routingapp/CoordinateReaderOrux;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbtools/routingapp/WpDatabaseScanner;->testReader(Lbtools/routingapp/CoordinateReader;)V

    .line 106
    return-void
.end method

.method private testReader(Lbtools/routingapp/CoordinateReader;)V
    .locals 5
    .param p1, "cor"    # Lbtools/routingapp/CoordinateReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lbtools/routingapp/CoordinateReader;->getTimeStamp()J

    move-result-wide v0

    .line 111
    .local v0, "ts":J
    iget-wide v2, p0, Lbtools/routingapp/WpDatabaseScanner;->maxtimestamp:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 113
    iput-wide v0, p0, Lbtools/routingapp/WpDatabaseScanner;->maxtimestamp:J

    .line 114
    iget-object v3, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v3

    .line 116
    :try_start_0
    iget-object v2, p1, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    iput-object v2, p0, Lbtools/routingapp/WpDatabaseScanner;->bestGuess:Ljava/lang/String;

    .line 117
    monitor-exit v3

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lbtools/routingapp/WpDatabaseScanner;->maxtimestamp:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 121
    iget-object v3, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_1
    iget-object v2, p1, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lbtools/routingapp/WpDatabaseScanner;->bestGuess:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 125
    iget-object v2, p1, Lbtools/routingapp/CoordinateReader;->basedir:Ljava/lang/String;

    iput-object v2, p0, Lbtools/routingapp/WpDatabaseScanner;->bestGuess:Ljava/lang/String;

    .line 127
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method


# virtual methods
.method public getBestGuess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->bestGuess:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    iget-object v1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDir:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lbtools/routingapp/WpDatabaseScanner;->currentDirSync:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lbtools/routingapp/WpDatabaseScanner;->lastError:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbtools/routingapp/WpDatabaseScanner;->scan(Ljava/io/File;I)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbtools/routingapp/WpDatabaseScanner;->setCurrentDir(Ljava/lang/String;)V

    .line 137
    return-void
.end method
