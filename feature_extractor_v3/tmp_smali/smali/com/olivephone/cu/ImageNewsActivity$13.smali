.class Lcom/olivephone/cu/ImageNewsActivity$13;
.super Ljava/lang/Thread;
.source "ImageNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->LoadIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 835
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 838
    :try_start_0
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v4, v4, Lcom/olivephone/cu/ImageNewsActivity;->cateID:Ljava/lang/String;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    invoke-static {v3, v4, v5}, Lcom/olivephone/constant/URLConstant;->imageNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/olivephone/parserxml/ImageNewsHandler;

    invoke-direct {v4}, Lcom/olivephone/parserxml/ImageNewsHandler;-><init>()V

    invoke-static {v3, v4}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v1

    .line 840
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v3, "new_list_url"

    iget-object v4, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v5, v5, Lcom/olivephone/cu/ImageNewsActivity;->cateID:Ljava/lang/String;

    iget-object v6, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v6, v6, Lcom/olivephone/cu/ImageNewsActivity;->page:I

    invoke-static {v4, v5, v6}, Lcom/olivephone/constant/URLConstant;->imageNewsURL(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->handler_image_news:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 843
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->handler_image_news:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v3, v3, Lcom/olivephone/cu/ImageNewsActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 845
    iget-object v3, p0, Lcom/olivephone/cu/ImageNewsActivity$13;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/olivephone/cu/ImageNewsActivity;->isClickable:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 857
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 849
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 850
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 851
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 852
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 853
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
