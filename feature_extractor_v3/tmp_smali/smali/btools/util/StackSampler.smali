.class public Lbtools/util/StackSampler;
.super Ljava/lang/Thread;
.source "StackSampler.java"


# instance fields
.field private bw:Ljava/io/BufferedWriter;

.field private df:Ljava/text/DateFormat;

.field private flushCnt:I

.field private interval:I

.field private rand:Ljava/util/Random;

.field private volatile stopped:Z


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 6
    .param p1, "logfile"    # Ljava/io/File;
    .param p2, "interval"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss,SSS"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lbtools/util/StackSampler;->df:Ljava/text/DateFormat;

    .line 18
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lbtools/util/StackSampler;->rand:Ljava/util/Random;

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lbtools/util/StackSampler;->flushCnt:I

    .line 27
    iput p2, p0, Lbtools/util/StackSampler;->interval:I

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lbtools/util/StackSampler;->bw:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackSampler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbtools/util/StackSampler;->printError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 130
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "StackSampler..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    aget-object v4, p0, v6

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 133
    .local v0, "args2":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 135
    add-int/lit8 v4, v2, -0x1

    aget-object v5, p0, v2

    aput-object v5, v0, v4

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v3, Lbtools/util/StackSampler;

    new-instance v4, Ljava/io/File;

    const-string v5, "stacks.log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lbtools/util/StackSampler;-><init>(Ljava/io/File;I)V

    .line 138
    .local v3, "t":Lbtools/util/StackSampler;
    invoke-virtual {v3}, Lbtools/util/StackSampler;->start()V

    .line 141
    :try_start_0
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v3}, Lbtools/util/StackSampler;->close()V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lbtools/util/StackSampler;->close()V

    throw v4
.end method

.method private matchesFilter([Ljava/lang/StackTraceElement;)Z
    .locals 7
    .param p1, "stack"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "positiveMatch":Z
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p1, v4

    .line 115
    .local v0, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "s":Ljava/lang/String;
    const-string v6, "btools"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 120
    :cond_0
    const-string v6, "Thread.sleep"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 125
    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "s":Ljava/lang/String;
    :goto_1
    return v3

    .line 113
    .restart local v0    # "e":Ljava/lang/StackTraceElement;
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "e":Ljava/lang/StackTraceElement;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    move v3, v1

    .line 125
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtools/util/StackSampler;->stopped:Z

    .line 107
    invoke-virtual {p0}, Lbtools/util/StackSampler;->interrupt()V

    .line 108
    return-void
.end method

.method public dumpThreads()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 64
    :try_start_0
    iget-object v8, p0, Lbtools/util/StackSampler;->rand:Ljava/util/Random;

    iget v10, p0, Lbtools/util/StackSampler;->interval:I

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 65
    .local v6, "wait1":I
    iget v8, p0, Lbtools/util/StackSampler;->interval:I

    sub-int v7, v8, v6

    .line 66
    .local v7, "wait2":I
    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lbtools/util/StackSampler;->df:Ljava/text/DateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " THREADDUMP\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 69
    .local v0, "allThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 72
    .local v5, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-eq v5, v8, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 78
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    invoke-direct {p0, v4}, Lbtools/util/StackSampler;->matchesFilter([Ljava/lang/StackTraceElement;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    const-string v8, " (ID="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " \""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\" "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    array-length v11, v4

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_1

    aget-object v2, v4, v8

    .line 86
    .local v2, "line":Ljava/lang/StackTraceElement;
    const-string v12, "    "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v2    # "line":Ljava/lang/StackTraceElement;
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    .end local v0    # "allThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "stack":[Ljava/lang/StackTraceElement;
    .end local v5    # "t":Ljava/lang/Thread;
    .end local v6    # "wait1":I
    .end local v7    # "wait2":I
    :catch_0
    move-exception v8

    .line 102
    :goto_2
    return-void

    .line 90
    .restart local v0    # "allThreads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "wait1":I
    .restart local v7    # "wait2":I
    :cond_2
    iget-object v8, p0, Lbtools/util/StackSampler;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 91
    iget v8, p0, Lbtools/util/StackSampler;->flushCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lbtools/util/StackSampler;->flushCnt:I

    if-ltz v8, :cond_3

    .line 93
    const/4 v8, 0x0

    iput v8, p0, Lbtools/util/StackSampler;->flushCnt:I

    .line 94
    iget-object v8, p0, Lbtools/util/StackSampler;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 96
    :cond_3
    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method protected printError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 46
    :goto_0
    iget-boolean v0, p0, Lbtools/util/StackSampler;->stopped:Z

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lbtools/util/StackSampler;->dumpThreads()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lbtools/util/StackSampler;->bw:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 54
    :try_start_0
    iget-object v0, p0, Lbtools/util/StackSampler;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_1
.end method
