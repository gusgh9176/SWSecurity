.class Lbtools/routingapp/BRouterService$1;
.super Lbtools/routingapp/IBRouterService$Stub;
.source "BRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/routingapp/BRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbtools/routingapp/BRouterService;


# direct methods
.method constructor <init>(Lbtools/routingapp/BRouterService;)V
    .locals 0
    .param p1, "this$0"    # Lbtools/routingapp/BRouterService;

    .prologue
    .line 33
    iput-object p1, p0, Lbtools/routingapp/BRouterService$1;->this$0:Lbtools/routingapp/BRouterService;

    invoke-direct {p0}, Lbtools/routingapp/IBRouterService$Stub;-><init>()V

    return-void
.end method

.method private checkForTestDummy(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/brouter/profiles2/remotetestdummy.brf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v5, "testdummy":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    .line 220
    :cond_0
    :goto_0
    return-object v6

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 228
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    .line 218
    :cond_2
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 222
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 224
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v6

    :catch_2
    move-exception v7

    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 222
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method private fileEqual([BLjava/io/File;)Z
    .locals 12
    .param p1, "fileBytes"    # [B
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 171
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v9

    .line 175
    :cond_1
    array-length v6, p1

    .line 176
    .local v6, "nbytes":I
    const/4 v7, 0x0

    .line 177
    .local v7, "pos":I
    const/16 v0, 0x2000

    .line 178
    .local v0, "blen":I
    new-array v1, v0, [B

    .line 179
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 182
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :goto_1
    if-ge v7, v6, :cond_6

    .line 185
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v3, v1, v10, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 186
    .local v5, "len":I
    if-gtz v5, :cond_2

    .line 200
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    .line 187
    :cond_2
    add-int v10, v7, v5

    if-le v10, v6, :cond_3

    .line 200
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_0

    .line 188
    :cond_3
    const/4 v4, 0x0

    .local v4, "j":I
    move v8, v7

    .end local v7    # "pos":I
    .local v8, "pos":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 190
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    :try_start_4
    aget-byte v10, p1, v8

    aget-byte v11, v1, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eq v10, v11, :cond_4

    .line 200
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_0

    .line 188
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    :cond_5
    move v7, v8

    .line 195
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_1

    .line 196
    .end local v4    # "j":I
    .end local v5    # "len":I
    :cond_6
    const/4 v9, 0x1

    .line 200
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v10

    goto :goto_0

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_4
    throw v9

    :catch_4
    move-exception v10

    goto :goto_4

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private getConfigForRemoteProfile(Lbtools/routingapp/BRouterWorker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "worker"    # Lbtools/routingapp/BRouterWorker;
    .param p2, "baseDir"    # Ljava/lang/String;
    .param p3, "remoteProfile"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v6, "remote"

    iput-object v6, p1, Lbtools/routingapp/BRouterWorker;->profileName:Ljava/lang/String;

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/brouter/profiles2/remote.brf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lbtools/routingapp/BRouterWorker;->profilePath:Ljava/lang/String;

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/brouter/modes/remote_rawtrack.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lbtools/routingapp/BRouterWorker;->rawTrackPath:Ljava/lang/String;

    .line 139
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 140
    .local v4, "profileBytes":[B
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lbtools/routingapp/BRouterWorker;->profilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v5, "profileFile":Ljava/io/File;
    :try_start_0
    iget-object v6, p1, Lbtools/routingapp/BRouterWorker;->segmentDir:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p2, v6, v7}, Lbtools/routingapp/CoordinateReader;->obtainValidReader(Ljava/lang/String;Ljava/lang/String;Z)Lbtools/routingapp/CoordinateReader;

    move-result-object v0

    .line 146
    .local v0, "cor":Lbtools/routingapp/CoordinateReader;
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lbtools/routingapp/CoordinateReader;->nogopoints:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p1, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    .line 148
    invoke-direct {p0, v4, v5}, Lbtools/routingapp/BRouterService$1;->fileEqual([BLjava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 150
    const/4 v2, 0x0

    .line 153
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .end local v0    # "cor":Lbtools/routingapp/CoordinateReader;
    :goto_1
    return-object v6

    .line 158
    .restart local v0    # "cor":Lbtools/routingapp/CoordinateReader;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 162
    .end local v0    # "cor":Lbtools/routingapp/CoordinateReader;
    .end local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error caching remote profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cor":Lbtools/routingapp/CoordinateReader;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private getConfigFromMode(Lbtools/routingapp/BRouterWorker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "worker"    # Lbtools/routingapp/BRouterWorker;
    .param p2, "baseDir"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "fast"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v11, "1"

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "true"

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "yes"

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_0
    const/4 v5, 0x1

    .line 89
    .local v5, "isFast":Z
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v5, :cond_5

    const-string v11, "fast"

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "mode_key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/brouter/modes/serviceconfig.dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "modesFile":Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 99
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 127
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 129
    :cond_2
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no brouter service config found for mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "modesFile":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    return-object v11

    .line 88
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isFast":Z
    .end local v7    # "mode_key":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 89
    .restart local v5    # "isFast":Z
    :cond_5
    const-string v11, "short"

    goto :goto_1

    .line 101
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "mode_key":Ljava/lang/String;
    .restart local v8    # "modesFile":Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v10, Lbtools/routingapp/ServiceModeConfig;

    invoke-direct {v10, v6}, Lbtools/routingapp/ServiceModeConfig;-><init>(Ljava/lang/String;)V

    .line 102
    .local v10, "smc":Lbtools/routingapp/ServiceModeConfig;
    iget-object v11, v10, Lbtools/routingapp/ServiceModeConfig;->mode:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 104
    iget-object v11, v10, Lbtools/routingapp/ServiceModeConfig;->profile:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v11, v0, Lbtools/routingapp/BRouterWorker;->profileName:Ljava/lang/String;

    .line 105
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/brouter/profiles2/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lbtools/routingapp/ServiceModeConfig;->profile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".brf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lbtools/routingapp/BRouterWorker;->profilePath:Ljava/lang/String;

    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/brouter/modes/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_rawtrack.dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lbtools/routingapp/BRouterWorker;->rawTrackPath:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p1

    iget-object v11, v0, Lbtools/routingapp/BRouterWorker;->segmentDir:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Lbtools/routingapp/CoordinateReader;->obtainValidReader(Ljava/lang/String;Ljava/lang/String;Z)Lbtools/routingapp/CoordinateReader;

    move-result-object v3

    .line 109
    .local v3, "cor":Lbtools/routingapp/CoordinateReader;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v11, v0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    .line 111
    iget-object v11, v3, Lbtools/routingapp/CoordinateReader;->nogopoints:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbtools/router/OsmNodeNamed;

    .line 113
    .local v9, "nogo":Lbtools/router/OsmNodeNamed;
    iget-object v12, v10, Lbtools/routingapp/ServiceModeConfig;->nogoVetos:Ljava/util/TreeSet;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v9, Lbtools/router/OsmNodeNamed;->ilon:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lbtools/router/OsmNodeNamed;->ilat:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 115
    move-object/from16 v0, p1

    iget-object v12, v0, Lbtools/routingapp/BRouterWorker;->nogoList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 121
    .end local v3    # "cor":Lbtools/routingapp/CoordinateReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "nogo":Lbtools/router/OsmNodeNamed;
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 123
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "modesFile":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no brouter service config found, mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 127
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v12

    goto/16 :goto_3

    .line 118
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cor":Lbtools/routingapp/CoordinateReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "modesFile":Ljava/lang/String;
    .restart local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :cond_8
    const/4 v11, 0x0

    .line 127
    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    :goto_6
    move-object v1, v2

    .line 118
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 127
    .end local v3    # "cor":Lbtools/routingapp/CoordinateReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "modesFile":Ljava/lang/String;
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_8
    throw v11

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cor":Lbtools/routingapp/CoordinateReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "modesFile":Ljava/lang/String;
    .restart local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catch_2
    move-exception v12

    goto :goto_6

    .end local v3    # "cor":Lbtools/routingapp/CoordinateReader;
    .end local v10    # "smc":Lbtools/routingapp/ServiceModeConfig;
    :catch_3
    move-exception v11

    goto/16 :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "modesFile":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    goto :goto_8

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "modesFile":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 121
    .end local v8    # "modesFile":Ljava/lang/String;
    :catch_5
    move-exception v4

    goto :goto_5
.end method

.method private logBundle(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-static {}, Lbtools/routingapp/AppLogger;->isLogging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, "k":Ljava/lang/String;
    const-string v3, "remoteProfile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "<..cut..>"

    .line 239
    .local v2, "val":Ljava/lang/Object;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_1

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Lbtools/routingapp/AppLogger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v0    # "desc":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 239
    .restart local v2    # "val":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " class="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " val="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 243
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/Object;
    :cond_2
    return-void
.end method


# virtual methods
.method public getTrackFromParams(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbtools/routingapp/BRouterService$1;->logBundle(Landroid/os/Bundle;)V

    .line 39
    new-instance v6, Lbtools/routingapp/BRouterWorker;

    invoke-direct {v6}, Lbtools/routingapp/BRouterWorker;-><init>()V

    .line 42
    .local v6, "worker":Lbtools/routingapp/BRouterWorker;
    const/4 v0, 0x0

    .line 43
    .local v0, "baseDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46
    .local v2, "configInput":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lbtools/routingapp/BRouterService$1;->this$0:Lbtools/routingapp/BRouterService;

    const-string v8, "config.dat"

    invoke-virtual {v7, v8}, Lbtools/routingapp/BRouterService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 47
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 55
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 57
    .end local v1    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    iput-object v0, v6, Lbtools/routingapp/BRouterWorker;->baseDir:Ljava/lang/String;

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/brouter/segments4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lbtools/routingapp/BRouterWorker;->segmentDir:Ljava/lang/String;

    .line 60
    const-string v7, "remoteProfile"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "remoteProfile":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 64
    invoke-direct {p0, v0}, Lbtools/routingapp/BRouterService$1;->checkForTestDummy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    :cond_1
    if-nez v5, :cond_3

    const-string v7, "v"

    .line 68
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fast"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v0, v7, v8}, Lbtools/routingapp/BRouterService$1;->getConfigFromMode(Lbtools/routingapp/BRouterWorker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "errMsg":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_4

    .line 82
    .end local v3    # "errMsg":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 50
    .end local v5    # "remoteProfile":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 55
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_3
    throw v7

    .line 69
    .restart local v5    # "remoteProfile":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v6, v0, v5}, Lbtools/routingapp/BRouterService$1;->getConfigForRemoteProfile(Lbtools/routingapp/BRouterWorker;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 78
    .restart local v3    # "errMsg":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v6, p1}, Lbtools/routingapp/BRouterWorker;->getTrackFromParams(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    goto :goto_2

    .line 80
    :catch_2
    move-exception v4

    .line 82
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 55
    .end local v3    # "errMsg":Ljava/lang/String;
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v5    # "remoteProfile":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    goto :goto_3
.end method
