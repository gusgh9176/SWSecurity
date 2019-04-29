.class Lcom/commonsware/android/arXiv/RSSListWindow$3;
.super Ljava/lang/Thread;
.source "RSSListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/RSSListWindow;->getInfoFromXML()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 188
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/RSSListWindow$3;)Lcom/commonsware/android/arXiv/RSSListWindow;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    const/16 v25, 0xc8

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$4(Lcom/commonsware/android/arXiv/RSSListWindow;I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v25, Lcom/commonsware/android/arXiv/RSSListWindow$3$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow$3$1;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 200
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$6(Lcom/commonsware/android/arXiv/RSSListWindow;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    .local v20, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v17

    .line 202
    .local v17, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v15

    .line 203
    .local v15, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v22

    .line 204
    .local v22, "xr":Lorg/xml/sax/XMLReader;
    new-instance v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;

    invoke-direct {v9}, Lcom/commonsware/android/arXiv/XMLHandlerRSS;-><init>()V

    .line 205
    .local v9, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerRSS;
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 207
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 210
    .local v21, "vcompleted":Ljava/lang/Boolean;
    :try_start_1
    new-instance v24, Lorg/xml/sax/InputSource;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :cond_0
    :goto_0
    :try_start_2
    iget v11, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    .line 223
    .local v11, "nitems":I
    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->date:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "T"

    const-string v26, " "

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "Z"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 224
    .local v19, "tdate":Ljava/lang/String;
    move v12, v11

    .line 226
    .local v12, "nitemst":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v25, Lcom/commonsware/android/arXiv/RSSListWindow$3$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/commonsware/android/arXiv/RSSListWindow$3$3;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;ILjava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_1
    iget v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    .line 237
    iget v11, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    .line 238
    move v13, v11

    .line 239
    .local v13, "nitemst2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v25, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2, v13}, Lcom/commonsware/android/arXiv/RSSListWindow$3$4;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;ILjava/lang/String;I)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 251
    .end local v13    # "nitemst2":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$7(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$8(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$9(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$10(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$11(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$12(Lcom/commonsware/android/arXiv/RSSListWindow;[Ljava/lang/String;)V

    .line 258
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v11, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$18(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    .end local v7    # "i":I
    .end local v9    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerRSS;
    .end local v11    # "nitems":I
    .end local v12    # "nitemst":I
    .end local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v17    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v19    # "tdate":Ljava/lang/String;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "vcompleted":Ljava/lang/Boolean;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->val$dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->dismiss()V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$19(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    return-void

    .line 211
    .restart local v9    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerRSS;
    .restart local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v17    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "vcompleted":Ljava/lang/Boolean;
    .restart local v22    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v14

    .line 212
    .local v14, "saxe":Ljava/lang/Exception;
    :try_start_3
    iget v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v25, Lcom/commonsware/android/arXiv/RSSListWindow$3$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/commonsware/android/arXiv/RSSListWindow$3$2;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 218
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_0

    .line 259
    .end local v14    # "saxe":Ljava/lang/Exception;
    .restart local v7    # "i":I
    .restart local v11    # "nitems":I
    .restart local v12    # "nitemst":I
    .restart local v19    # "tdate":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$13(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v7

    .line 260
    const-string v26, "(.arXiv.*)"

    const-string v27, ""

    .line 259
    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v7

    .line 262
    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v7

    const-string v25, ".*\\["

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "])"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "] UPDATED)"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$14(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->creators:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v7

    aput-object v25, v24, v7

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$15(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->links:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v7

    aput-object v25, v24, v7

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$16(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->descriptions:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v7

    aput-object v25, v24, v7

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$1(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$13(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v25

    aget-object v25, v25, v7

    aput-object v25, v24, v7

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    aput-object v25, v24, v7

    .line 269
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<begin>"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$14(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v25

    aget-object v25, v25, v7

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n</begin>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 269
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 273
    .local v4, "creatort":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v18

    .line 274
    .local v18, "spf2":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v16

    .line 275
    .local v16, "sp2":Ljavax/xml/parsers/SAXParser;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v23

    .line 276
    .local v23, "xr2":Lorg/xml/sax/XMLReader;
    new-instance v10, Lcom/commonsware/android/arXiv/XMLHandlerCreator;

    invoke-direct {v10}, Lcom/commonsware/android/arXiv/XMLHandlerCreator;-><init>()V

    .line 277
    .local v10, "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 278
    new-instance v24, Lorg/xml/sax/InputSource;

    .line 279
    new-instance v25, Ljava/io/StringReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 278
    invoke-interface/range {v23 .. v24}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "-Authors: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 281
    iget-object v0, v10, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 280
    aput-object v25, v24, v7

    .line 282
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_3
    iget v0, v10, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    move/from16 v24, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v0, v24

    if-lt v8, v0, :cond_6

    .line 289
    .end local v8    # "j":I
    .end local v10    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v16    # "sp2":Ljavax/xml/parsers/SAXParser;
    .end local v18    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .end local v23    # "xr2":Lorg/xml/sax/XMLReader;
    :goto_4
    :try_start_5
    iget-object v0, v9, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v7

    const-string v25, "UPDATED"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "\n-Updated"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v7

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$17(Lcom/commonsware/android/arXiv/RSSListWindow;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "\n-Cross-Ref: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 258
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 284
    .restart local v8    # "j":I
    .restart local v10    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .restart local v16    # "sp2":Ljavax/xml/parsers/SAXParser;
    .restart local v18    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v23    # "xr2":Lorg/xml/sax/XMLReader;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v7

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 285
    iget-object v0, v10, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 284
    aput-object v25, v24, v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 282
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 299
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "creatort":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerRSS;
    .end local v10    # "myXMLHandler2":Lcom/commonsware/android/arXiv/XMLHandlerCreator;
    .end local v11    # "nitems":I
    .end local v12    # "nitemst":I
    .end local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "sp2":Ljavax/xml/parsers/SAXParser;
    .end local v17    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v18    # "spf2":Ljavax/xml/parsers/SAXParserFactory;
    .end local v19    # "tdate":Ljava/lang/String;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "vcompleted":Ljava/lang/Boolean;
    .end local v22    # "xr":Lorg/xml/sax/XMLReader;
    .end local v23    # "xr2":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v5

    .line 301
    .local v5, "e":Ljava/lang/Exception;
    move-object v6, v5

    .line 302
    .local v6, "ef":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/RSSListWindow$3;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$5(Lcom/commonsware/android/arXiv/RSSListWindow;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v25, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/commonsware/android/arXiv/RSSListWindow$3$5;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$3;Ljava/lang/Exception;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 287
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ef":Ljava/lang/Exception;
    .restart local v3    # "category":Ljava/lang/String;
    .restart local v4    # "creatort":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerRSS;
    .restart local v11    # "nitems":I
    .restart local v12    # "nitemst":I
    .restart local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v17    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v19    # "tdate":Ljava/lang/String;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "vcompleted":Ljava/lang/Boolean;
    .restart local v22    # "xr":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v24

    goto/16 :goto_4
.end method
