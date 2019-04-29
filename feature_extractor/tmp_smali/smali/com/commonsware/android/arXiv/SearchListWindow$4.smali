.class Lcom/commonsware/android/arXiv/SearchListWindow$4;
.super Ljava/lang/Thread;
.source "SearchListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/SearchListWindow;->getInfoFromXML()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->val$dialog:Landroid/app/ProgressDialog;

    .line 255
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SearchListWindow$4;)Lcom/commonsware/android/arXiv/SearchListWindow;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$4(Lcom/commonsware/android/arXiv/SearchListWindow;I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4$1;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 267
    :try_start_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$6(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 268
    .local v23, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v21

    .line 269
    .local v21, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v19

    .line 270
    .local v19, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v24

    .line 271
    .local v24, "xr":Lorg/xml/sax/XMLReader;
    new-instance v17, Lcom/commonsware/android/arXiv/XMLHandlerSearch;

    invoke-direct/range {v17 .. v17}, Lcom/commonsware/android/arXiv/XMLHandlerSearch;-><init>()V

    .line 272
    .local v17, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 273
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numItems:I

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$7(Lcom/commonsware/android/arXiv/SearchListWindow;I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$8(Lcom/commonsware/android/arXiv/SearchListWindow;I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$9(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v13

    .line 278
    .local v13, "fnmin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$9(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v12, v2, -0x1

    .line 279
    .local v12, "fnmax":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v14

    .line 281
    .local v14, "fntotalitems":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$12(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v2

    if-le v2, v12, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$13(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4$2;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 298
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$9(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$14(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4$4;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 312
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v12, v14}, Lcom/commonsware/android/arXiv/SearchListWindow$4$6;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;III)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$15(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$16(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$17(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$18(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$19(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$20(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$21(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$22(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$23(Lcom/commonsware/android/arXiv/SearchListWindow;[Ljava/lang/String;)V

    .line 329
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v2

    if-lt v15, v2, :cond_4

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$12(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v2

    iget v2, v2, Lcom/commonsware/android/arXiv/Feed;->count:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 377
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    new-instance v3, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    iget-object v4, v4, Lcom/commonsware/android/arXiv/SearchListWindow;->thisActivity:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v3, v4}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$34(Lcom/commonsware/android/arXiv/SearchListWindow;Lcom/commonsware/android/arXiv/arXivDB;)V

    .line 378
    const/4 v8, 0x0

    .line 379
    .local v8, "unread":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$35(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/arXivDB;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v3

    iget-wide v3, v3, Lcom/commonsware/android/arXiv/Feed;->feedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v4

    iget-object v4, v4, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v5}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v5

    iget-object v5, v5, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v6}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v6

    iget-object v6, v6, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v7}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Lcom/commonsware/android/arXiv/arXivDB;->updateFeed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$35(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/arXivDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$33(Lcom/commonsware/android/arXiv/SearchListWindow;)Lcom/commonsware/android/arXiv/Feed;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$11(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v3

    iput v3, v2, Lcom/commonsware/android/arXiv/Feed;->count:I

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-virtual {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->updateWidget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .end local v8    # "unread":I
    :cond_0
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$10(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v2

    if-lez v2, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$36(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$37(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    .end local v12    # "fnmax":I
    .end local v13    # "fnmin":I
    .end local v14    # "fntotalitems":I
    .end local v15    # "i":I
    .end local v17    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v19    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v21    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v23    # "url":Ljava/net/URL;
    .end local v24    # "xr":Lorg/xml/sax/XMLReader;
    :goto_4
    return-void

    .line 292
    .restart local v12    # "fnmax":I
    .restart local v13    # "fnmin":I
    .restart local v14    # "fntotalitems":I
    .restart local v17    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .restart local v19    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v21    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v23    # "url":Ljava/net/URL;
    .restart local v24    # "xr":Lorg/xml/sax/XMLReader;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$13(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4$3;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 394
    .end local v12    # "fnmax":I
    .end local v13    # "fnmin":I
    .end local v14    # "fntotalitems":I
    .end local v17    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v19    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v21    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v23    # "url":Ljava/net/URL;
    .end local v24    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v10

    .line 396
    .local v10, "e":Ljava/lang/Exception;
    move-object v11, v10

    .line 397
    .local v11, "ef":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$5(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/commonsware/android/arXiv/SearchListWindow$4$7;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$37(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 305
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "ef":Ljava/lang/Exception;
    .restart local v12    # "fnmax":I
    .restart local v13    # "fnmin":I
    .restart local v14    # "fntotalitems":I
    .restart local v17    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .restart local v19    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v21    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v23    # "url":Ljava/net/URL;
    .restart local v24    # "xr":Lorg/xml/sax/XMLReader;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$14(Lcom/commonsware/android/arXiv/SearchListWindow;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/commonsware/android/arXiv/SearchListWindow$4$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/commonsware/android/arXiv/SearchListWindow$4$5;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$4;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 330
    .restart local v15    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$24(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->titles:[Ljava/lang/String;

    aget-object v3, v3, v15

    .line 331
    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " +"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    aput-object v3, v2, v15

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$25(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$26(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->updatedDates:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$27(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->publishedDates:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$28(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->categories:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$29(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->links:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$30(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->descriptions:[Ljava/lang/String;

    aget-object v3, v3, v15

    .line 338
    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    aput-object v3, v2, v15

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$1(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$24(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v15

    aput-object v3, v2, v15

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aput-object v3, v2, v15

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<begin>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$25(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n</begin>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 347
    .local v9, "creatort":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v22

    .line 348
    .local v22, "spf2":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v20

    .line 349
    .local v20, "sp2":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v20 .. v20}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v25

    .line 350
    .local v25, "xr2":Lorg/xml/sax/XMLReader;
    new-instance v18, Lcom/commonsware/android/arXiv/XMLHandlerCreator;

    invoke-direct/range {v18 .. v18}, Lcom/commonsware/android/arXiv/XMLHandlerCreator;-><init>()V

    .line 351
    .local v18, "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 352
    new-instance v2, Lorg/xml/sax/InputSource;

    .line 353
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 352
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-Authors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 355
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    aput-object v3, v2, v15

    .line 356
    const/16 v16, 0x1

    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v18

    iget v2, v0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v0, v16

    if-lt v0, v2, :cond_6

    .line 362
    .end local v16    # "j":I
    .end local v18    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v20    # "sp2":Ljavax/xml/parsers/SAXParser;
    .end local v22    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .end local v25    # "xr2":Lorg/xml/sax/XMLReader;
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$26(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$27(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n-Published: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$27(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Z"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    .line 368
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$31(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$28(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$32(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n-Cross-Ref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$28(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 329
    :cond_5
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 357
    .restart local v16    # "j":I
    .restart local v18    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .restart local v20    # "sp2":Ljavax/xml/parsers/SAXParser;
    .restart local v22    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v25    # "xr2":Lorg/xml/sax/XMLReader;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    aget-object v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    aput-object v3, v2, v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 356
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 365
    .end local v16    # "j":I
    .end local v18    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v20    # "sp2":Ljavax/xml/parsers/SAXParser;
    .end local v22    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .end local v25    # "xr2":Lorg/xml/sax/XMLReader;
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n-Updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$26(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Z"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n-Published: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$27(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Z"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    goto/16 :goto_7

    .line 370
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$32(Lcom/commonsware/android/arXiv/SearchListWindow;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n-Category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/SearchListWindow$4;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$28(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_8

    .line 383
    .end local v9    # "creatort":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 360
    .restart local v9    # "creatort":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_6
.end method
