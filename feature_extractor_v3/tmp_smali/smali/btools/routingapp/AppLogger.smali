.class public Lbtools/routingapp/AppLogger;
.super Ljava/lang/Object;
.source "AppLogger.java"


# static fields
.field private static debugLogWriter:Ljava/io/FileWriter;

.field private static initDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lbtools/routingapp/AppLogger;->initDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 77
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 78
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static init()V
    .locals 4

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 27
    .local v1, "sd":Ljava/io/File;
    if-nez v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "brouterapp.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v0, "debugLog":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v2, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    .end local v0    # "debugLog":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isLogging()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 42
    sget-boolean v1, Lbtools/routingapp/AppLogger;->initDone:Z

    if-nez v1, :cond_0

    .line 44
    sput-boolean v0, Lbtools/routingapp/AppLogger;->initDone:Z

    .line 45
    invoke-static {}, Lbtools/routingapp/AppLogger;->init()V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logging started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v1, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lbtools/routingapp/AppLogger;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    sget-object v1, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(I)V

    .line 62
    sget-object v1, Lbtools/routingapp/AppLogger;->debugLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot write brouterapp.txt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
