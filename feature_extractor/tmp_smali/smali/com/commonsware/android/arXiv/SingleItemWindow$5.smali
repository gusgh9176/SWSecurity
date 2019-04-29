.class Lcom/commonsware/android/arXiv/SingleItemWindow$5;
.super Ljava/lang/Thread;
.source "SingleItemWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SingleItemWindow;->pressedPDFButton(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    .line 292
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)Lcom/commonsware/android/arXiv/SingleItemWindow;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V

    .line 298
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/arXiv"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 299
    .local v27, "storagePath":Ljava/lang/String;
    const-string v31, "arXiv - "

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Storage path: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v9, "fare":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v28

    .line 304
    .local v28, "success":Z
    const-string v31, "arXiv - "

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Storage path: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_4

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$2(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V

    .line 332
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$3(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$4(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$5(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/TextView;

    move-result-object v31

    new-instance v32, Lcom/commonsware/android/arXiv/SingleItemWindow$5$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$1;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$6(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/ProgressBar;

    move-result-object v31

    new-instance v32, Lcom/commonsware/android/arXiv/SingleItemWindow$5$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$2;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 346
    const-string v31, "arXiv - "

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "PDF url: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$7(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$7(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "abs"

    const-string v33, "pdf"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "http"

    const-string v33, "https"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 350
    .local v26, "pdfaddress":Ljava/lang/String;
    const-string v31, "arXiv - "

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "PDF url 2: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ".pdf"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 354
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 356
    .local v29, "u":Ljava/net/URL;
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 355
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 357
    .local v4, "c":Ljava/net/HttpURLConnection;
    const-string v31, "GET"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 361
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 362
    .local v17, "ifs":J
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    .line 364
    .local v19, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$8(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v13

    .line 366
    .local v13, "filepath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$9(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ":"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 367
    .local v12, "filename":Ljava/lang/String;
    const-string v31, "?"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 368
    const-string v31, "*"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 369
    const-string v31, "/"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 370
    const-string v31, ". "

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 371
    const-string v31, "`"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 372
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ".pdf"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 374
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 375
    .local v30, "vdownload":Ljava/lang/Boolean;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v14, "futureFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 377
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 378
    .local v20, "itmp":J
    cmp-long v31, v20, v17

    if-nez v31, :cond_1

    const-wide/16 v31, 0x0

    cmp-long v31, v20, v31

    if-eqz v31, :cond_1

    .line 379
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    .line 383
    .end local v20    # "itmp":J
    :cond_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 384
    new-instance v8, Ljava/io/FileOutputStream;

    .line 385
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, v31

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    .local v8, "f":Ljava/io/FileOutputStream;
    const/16 v31, 0x400

    move/from16 v0, v31

    new-array v3, v0, [B

    .line 388
    .local v3, "buffer":[B
    const/16 v25, 0x0

    .line 389
    .local v25, "len1":I
    const-wide/16 v15, 0x0

    .line 390
    .local v15, "i":J
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v25

    if-gtz v25, :cond_7

    .line 404
    :cond_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 413
    .end local v3    # "buffer":[B
    .end local v8    # "f":Ljava/io/FileOutputStream;
    .end local v15    # "i":J
    .end local v25    # "len1":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$10(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_a

    .line 414
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    new-instance v32, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$0(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/content/Context;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$11(Lcom/commonsware/android/arXiv/SingleItemWindow;Lcom/commonsware/android/arXiv/arXivDB;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$9(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "displaytext":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$12(Lcom/commonsware/android/arXiv/SingleItemWindow;)I

    move-result v31

    move/from16 v0, v31

    if-lt v15, v0, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$14(Lcom/commonsware/android/arXiv/SingleItemWindow;)Lcom/commonsware/android/arXiv/arXivDB;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 421
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lcom/commonsware/android/arXiv/arXivDB;->insertHistory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$14(Lcom/commonsware/android/arXiv/SingleItemWindow;)Lcom/commonsware/android/arXiv/arXivDB;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 426
    .end local v5    # "displaytext":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_3
    new-instance v11, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v11, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$5(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/TextView;

    move-result-object v31

    new-instance v32, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$5;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;Ljava/io/File;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 492
    .end local v4    # "c":Ljava/net/HttpURLConnection;
    .end local v9    # "fare":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "filepath":Ljava/lang/String;
    .end local v14    # "futureFile":Ljava/io/File;
    .end local v17    # "ifs":J
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v26    # "pdfaddress":Ljava/lang/String;
    .end local v27    # "storagePath":Ljava/lang/String;
    .end local v28    # "success":Z
    .end local v29    # "u":Ljava/net/URL;
    .end local v30    # "vdownload":Ljava/lang/Boolean;
    :goto_4
    return-void

    .line 310
    .restart local v9    # "fare":Ljava/io/File;
    .restart local v27    # "storagePath":Ljava/lang/String;
    .restart local v28    # "success":Z
    :cond_4
    new-instance v7, Ljava/io/File;

    const-string v31, "/mnt/sdcard/arXiv"

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v7, "efare":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 312
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const-string v32, "/mnt/sdcard/arXiv/"

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$2(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 487
    .end local v7    # "efare":Ljava/io/File;
    .end local v9    # "fare":Ljava/io/File;
    .end local v27    # "storagePath":Ljava/lang/String;
    .end local v28    # "success":Z
    :catch_0
    move-exception v6

    .line 488
    .local v6, "e":Ljava/lang/Exception;
    const-string v31, "arxiv"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "error "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$17(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 316
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "efare":Ljava/io/File;
    .restart local v9    # "fare":Ljava/io/File;
    .restart local v27    # "storagePath":Ljava/lang/String;
    .restart local v28    # "success":Z
    :cond_5
    :try_start_1
    new-instance v7, Ljava/io/File;

    .end local v7    # "efare":Ljava/io/File;
    const-string v31, "/emmc/arXiv"

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v7    # "efare":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 318
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const-string v32, "/emmc/arXiv/"

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$2(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 322
    :cond_6
    new-instance v7, Ljava/io/File;

    .end local v7    # "efare":Ljava/io/File;
    const-string v31, "/media/arXiv"

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v7    # "efare":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 324
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const-string v32, "/media/arXiv/"

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$2(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$1(Lcom/commonsware/android/arXiv/SingleItemWindow;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 391
    .end local v7    # "efare":Ljava/io/File;
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Ljava/net/HttpURLConnection;
    .restart local v8    # "f":Ljava/io/FileOutputStream;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v13    # "filepath":Ljava/lang/String;
    .restart local v14    # "futureFile":Ljava/io/File;
    .local v15, "i":J
    .restart local v17    # "ifs":J
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v25    # "len1":I
    .restart local v26    # "pdfaddress":Ljava/lang/String;
    .restart local v29    # "u":Ljava/net/URL;
    .restart local v30    # "vdownload":Ljava/lang/Boolean;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$10(Lcom/commonsware/android/arXiv/SingleItemWindow;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_2

    .line 394
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v8, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 395
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v15, v15, v31

    .line 396
    const-wide/16 v31, 0x64

    mul-long v31, v31, v15

    div-long v23, v31, v17

    .line 397
    .local v23, "jt":J
    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v22, v0

    .line 398
    .local v22, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$6(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/ProgressBar;

    move-result-object v31

    new-instance v32, Lcom/commonsware/android/arXiv/SingleItemWindow$5$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$3;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;I)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 406
    .end local v3    # "buffer":[B
    .end local v8    # "f":Ljava/io/FileOutputStream;
    .end local v15    # "i":J
    .end local v22    # "j":I
    .end local v23    # "jt":J
    .end local v25    # "len1":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$6(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/widget/ProgressBar;

    move-result-object v31

    new-instance v32, Lcom/commonsware/android/arXiv/SingleItemWindow$5$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/SingleItemWindow$5$4;-><init>(Lcom/commonsware/android/arXiv/SingleItemWindow$5;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 418
    .restart local v5    # "displaytext":Ljava/lang/String;
    .local v15, "i":I
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, " - "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$13(Lcom/commonsware/android/arXiv/SingleItemWindow;)[Ljava/lang/String;

    move-result-object v32

    aget-object v32, v32, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 418
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 480
    .end local v5    # "displaytext":Ljava/lang/String;
    .end local v15    # "i":I
    :cond_a
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v10, "fd":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_4

    .line 485
    .end local v4    # "c":Ljava/net/HttpURLConnection;
    .end local v10    # "fd":Ljava/io/File;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "filepath":Ljava/lang/String;
    .end local v14    # "futureFile":Ljava/io/File;
    .end local v17    # "ifs":J
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v26    # "pdfaddress":Ljava/lang/String;
    .end local v29    # "u":Ljava/net/URL;
    .end local v30    # "vdownload":Ljava/lang/Boolean;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SingleItemWindow$5;->this$0:Lcom/commonsware/android/arXiv/SingleItemWindow;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/commonsware/android/arXiv/SingleItemWindow;->access$16(Lcom/commonsware/android/arXiv/SingleItemWindow;)Landroid/os/Handler;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
