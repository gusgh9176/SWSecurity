.class Lbtools/routingapp/BInstallerView$DownloadTask;
.super Landroid/os/AsyncTask;
.source "BInstallerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtools/routingapp/BInstallerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lbtools/routingapp/BInstallerView;


# direct methods
.method public constructor <init>(Lbtools/routingapp/BInstallerView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    iput-object p1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 567
    iput-object p2, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->context:Landroid/content/Context;

    .line 568
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbtools/routingapp/BInstallerView$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .param p1, "sUrls"    # [Ljava/lang/String;

    .prologue
    .line 573
    const/4 v11, 0x0

    .line 574
    .local v11, "input":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 575
    .local v12, "output":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 576
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/16 v23, 0x0

    aget-object v15, p1, v23

    .line 577
    .local v15, "surl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 578
    .local v10, "fname":Ljava/lang/String;
    const/16 v18, 0x0

    .line 583
    .local v18, "tmp_file":Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 585
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 586
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 590
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 591
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Server returned HTTP "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 592
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 643
    if-eqz v12, :cond_0

    .line 644
    :try_start_1
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_0
    if-eqz v11, :cond_1

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 650
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 651
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 656
    :cond_2
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 640
    .end local v22    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    return-object v2

    .line 597
    .restart local v22    # "url":Ljava/net/URL;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 598
    .local v9, "fileLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    move-object/from16 v23, v0

    int-to-long v0, v9

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lbtools/routingapp/BInstallerView;->access$002(Lbtools/routingapp/BInstallerView;J)J

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lbtools/routingapp/BInstallerView;->access$100(Lbtools/routingapp/BInstallerView;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-ltz v23, :cond_8

    int-to-long v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lbtools/routingapp/BInstallerView;->access$100(Lbtools/routingapp/BInstallerView;)J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_8

    const-string v2, "not enough space on sd-card"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    if-eqz v12, :cond_5

    .line 644
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_5
    if-eqz v11, :cond_6

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 651
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 656
    :cond_7
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 602
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 604
    const-string v23, "segments4/"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 605
    .local v14, "slidx":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lbtools/routingapp/BInstallerView;->access$200(Lbtools/routingapp/BInstallerView;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/brouter/segments4/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v14, 0xa

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 606
    new-instance v19, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_tmp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 607
    .end local v18    # "tmp_file":Ljava/io/File;
    .local v19, "tmp_file":Ljava/io/File;
    :try_start_7
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 609
    .end local v12    # "output":Ljava/io/OutputStream;
    .local v13, "output":Ljava/io/OutputStream;
    const/16 v23, 0x1000

    :try_start_8
    move/from16 v0, v23

    new-array v5, v0, [B

    .line 610
    .local v5, "data":[B
    const-wide/16 v20, 0x0

    .line 611
    .local v20, "total":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 613
    .local v16, "t0":J
    :cond_9
    :goto_3
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_10

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lbtools/routingapp/BInstallerView;->isDownloadCanceled()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 615
    const-string v2, "Download canceled!"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 643
    if-eqz v13, :cond_a

    .line 644
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_a
    if-eqz v11, :cond_b

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 650
    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 651
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 656
    :cond_c
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_d
    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .line 615
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 617
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v19    # "tmp_file":Ljava/io/File;
    :cond_e
    int-to-long v0, v4

    move-wide/from16 v24, v0

    add-long v20, v20, v24

    .line 619
    if-lez v9, :cond_f

    .line 620
    const/16 v23, 0x1

    :try_start_b
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v26, 0x64

    mul-long v26, v26, v20

    int-to-long v0, v9

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lbtools/routingapp/BInstallerView$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 621
    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v5, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 624
    const-wide/16 v24, 0x106

    div-long v24, v20, v24

    add-long v24, v24, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-wide v26

    sub-long v6, v24, v26

    .line 625
    .local v6, "dt":J
    const-wide/16 v24, 0x0

    cmp-long v23, v6, v24

    if-lez v23, :cond_9

    .line 627
    :try_start_c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_3

    :catch_0
    move-exception v23

    goto :goto_3

    .line 630
    .end local v6    # "dt":J
    :cond_10
    const/16 v23, 0x1

    :try_start_d
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x65

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lbtools/routingapp/BInstallerView$DownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 631
    invoke-static/range {v19 .. v19}, Lbtools/mapaccess/PhysicalFile;->checkFileIntegrity(Ljava/io/File;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v2

    .line 632
    .local v2, "check_result":Ljava/lang/String;
    if-eqz v2, :cond_15

    .line 643
    if-eqz v13, :cond_11

    .line 644
    :try_start_e
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_11
    if-eqz v11, :cond_12

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 650
    :cond_12
    :goto_5
    if-eqz v3, :cond_13

    .line 651
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 656
    :cond_13
    if-eqz v19, :cond_14

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_14
    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .line 632
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 634
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v19    # "tmp_file":Ljava/io/File;
    :cond_15
    :try_start_10
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 636
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Could not rename to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result-object v2

    .line 643
    .end local v2    # "check_result":Ljava/lang/String;
    if-eqz v13, :cond_16

    .line 644
    :try_start_11
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_16
    if-eqz v11, :cond_17

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 650
    :cond_17
    :goto_6
    if-eqz v3, :cond_18

    .line 651
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 656
    :cond_18
    if-eqz v19, :cond_19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_19
    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .line 636
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 638
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v2    # "check_result":Ljava/lang/String;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v19    # "tmp_file":Ljava/io/File;
    :cond_1a
    const/4 v2, 0x0

    .line 643
    .end local v2    # "check_result":Ljava/lang/String;
    if-eqz v13, :cond_1b

    .line 644
    :try_start_13
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_1b
    if-eqz v11, :cond_1c

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 650
    :cond_1c
    :goto_7
    if-eqz v3, :cond_1d

    .line 651
    :try_start_14
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 656
    :cond_1d
    if-eqz v19, :cond_1e

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_1e
    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .line 638
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 639
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v9    # "fileLength":I
    .end local v14    # "slidx":I
    .end local v16    # "t0":J
    .end local v20    # "total":J
    .end local v22    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 640
    .local v8, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_15
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v2

    .line 643
    if-eqz v12, :cond_1f

    .line 644
    :try_start_16
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_1f
    if-eqz v11, :cond_20

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 650
    :cond_20
    :goto_9
    if-eqz v3, :cond_21

    .line 651
    :try_start_17
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 656
    :cond_21
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 642
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 643
    :goto_a
    if-eqz v12, :cond_22

    .line 644
    :try_start_18
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 645
    :cond_22
    if-eqz v11, :cond_23

    .line 646
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 650
    :cond_23
    :goto_b
    if-eqz v3, :cond_24

    .line 651
    :try_start_19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_24
    throw v23
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 656
    :catchall_1
    move-exception v23

    :goto_c
    if-eqz v18, :cond_25

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    :cond_25
    throw v23

    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v9    # "fileLength":I
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v14    # "slidx":I
    .restart local v16    # "t0":J
    .restart local v19    # "tmp_file":Ljava/io/File;
    .restart local v20    # "total":J
    .restart local v22    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v23

    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto :goto_c

    .line 647
    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v9    # "fileLength":I
    .end local v14    # "slidx":I
    .end local v16    # "t0":J
    .end local v20    # "total":J
    .end local v22    # "url":Ljava/net/URL;
    :catch_2
    move-exception v24

    goto :goto_b

    .line 642
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v9    # "fileLength":I
    .restart local v14    # "slidx":I
    .restart local v19    # "tmp_file":Ljava/io/File;
    .restart local v22    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v23

    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    goto :goto_a

    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v19    # "tmp_file":Ljava/io/File;
    :catchall_4
    move-exception v23

    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto :goto_a

    .line 647
    .end local v9    # "fileLength":I
    .end local v14    # "slidx":I
    .end local v22    # "url":Ljava/net/URL;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v23

    goto :goto_9

    .line 639
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v9    # "fileLength":I
    .restart local v14    # "slidx":I
    .restart local v19    # "tmp_file":Ljava/io/File;
    .restart local v22    # "url":Ljava/net/URL;
    :catch_4
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    goto :goto_8

    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v19    # "tmp_file":Ljava/io/File;
    :catch_5
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "tmp_file":Ljava/io/File;
    .restart local v18    # "tmp_file":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local v12    # "output":Ljava/io/OutputStream;
    goto :goto_8

    .line 647
    .end local v12    # "output":Ljava/io/OutputStream;
    .end local v18    # "tmp_file":Ljava/io/File;
    .restart local v4    # "count":I
    .restart local v5    # "data":[B
    .restart local v13    # "output":Ljava/io/OutputStream;
    .restart local v16    # "t0":J
    .restart local v19    # "tmp_file":Ljava/io/File;
    .restart local v20    # "total":J
    :catch_6
    move-exception v23

    goto :goto_7

    :catch_7
    move-exception v23

    goto :goto_6

    .restart local v2    # "check_result":Ljava/lang/String;
    :catch_8
    move-exception v23

    goto/16 :goto_5

    .end local v2    # "check_result":Ljava/lang/String;
    :catch_9
    move-exception v23

    goto/16 :goto_4

    .end local v4    # "count":I
    .end local v5    # "data":[B
    .end local v13    # "output":Ljava/io/OutputStream;
    .end local v14    # "slidx":I
    .end local v16    # "t0":J
    .end local v19    # "tmp_file":Ljava/io/File;
    .end local v20    # "total":J
    .restart local v12    # "output":Ljava/io/OutputStream;
    .restart local v18    # "tmp_file":Ljava/io/File;
    :catch_a
    move-exception v23

    goto/16 :goto_2

    .end local v9    # "fileLength":I
    :catch_b
    move-exception v23

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 561
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbtools/routingapp/BInstallerView$DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    iget-object v3, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lbtools/routingapp/BInstallerView;->downloadDone(Z)V

    .line 685
    if-eqz p1, :cond_1

    .line 686
    iget-object v0, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 683
    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->context:Landroid/content/Context;

    const-string v1, "File downloaded"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 662
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 665
    iget-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 666
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 667
    iget-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 668
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 672
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    const-string v0, "Verifying.."

    .line 673
    .local v0, "newAction":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    invoke-static {v1}, Lbtools/routingapp/BInstallerView;->access$300(Lbtools/routingapp/BInstallerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    iget-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    invoke-static {v1, v0}, Lbtools/routingapp/BInstallerView;->access$302(Lbtools/routingapp/BInstallerView;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lbtools/routingapp/BInstallerView$DownloadTask;->this$0:Lbtools/routingapp/BInstallerView;

    invoke-virtual {v1}, Lbtools/routingapp/BInstallerView;->invalidate()V

    .line 678
    :cond_0
    return-void

    .line 672
    .end local v0    # "newAction":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 561
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lbtools/routingapp/BInstallerView$DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
