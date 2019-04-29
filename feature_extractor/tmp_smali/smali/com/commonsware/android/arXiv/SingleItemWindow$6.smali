.class Lcom/commonsware/android/arXiv/SingleItemWindow$6;
.super Ljava/lang/Thread;
.source "SingleItemWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow;->printSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SingleItemWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    .line 509
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$6;)Lcom/commonsware/android/arXiv/SingleItemWindow;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 513
    :try_start_0
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-static {v9}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$7(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "abs"

    const-string v11, "pdf"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    const-string v11, "https"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "pdfaddress":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".pdf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 519
    .local v8, "u":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 518
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 520
    .local v0, "c":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 524
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    int-to-long v1, v9

    .line 525
    .local v1, "ifs":J
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 526
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v1

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    const-wide/16 v11, 0x400

    div-long v3, v9, v11

    .line 527
    .local v3, "jfs":J
    long-to-double v9, v3

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double v6, v9, v11

    .line 528
    .local v6, "rfs":D
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-static {v9}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$5(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;

    invoke-direct {v10, p0, v6, v7}, Lcom/commonsware/android/arXiv/SingleItemWindow$6$1;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$6;D)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0    # "c":Ljava/net/HttpURLConnection;
    .end local v1    # "ifs":J
    .end local v3    # "jfs":J
    .end local v5    # "pdfaddress":Ljava/lang/String;
    .end local v6    # "rfs":D
    .end local v8    # "u":Ljava/net/URL;
    :goto_0
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$6;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    invoke-static {v9}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$18(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    return-void

    .line 533
    :catch_0
    move-exception v9

    goto :goto_0
.end method
