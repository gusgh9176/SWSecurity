.class Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;
.super Ljava/lang/Thread;
.source "ArxivAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

.field private final synthetic val$appWidgetId:I

.field private final synthetic val$myAppWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Landroid/appwidget/AppWidgetManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    iput-object p2, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->val$myAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput p3, p0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->val$appWidgetId:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$0(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$1(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->val$myAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->val$appWidgetId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 192
    return-void

    .line 115
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/commonsware/android/arXiv/Feed;

    .line 117
    .local v9, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v2, v9, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://export.arxiv.org/api/query?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    const-string v3, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 122
    .local v16, "urlAddress":Ljava/lang/String;
    const/4 v11, 0x0

    .line 124
    .local v11, "numberOfTotalResults":I
    :try_start_0
    new-instance v15, Ljava/net/URL;

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .local v15, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v13

    .line 126
    .local v13, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v13}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v12

    .line 127
    .local v12, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v17

    .line 128
    .local v17, "xr":Lorg/xml/sax/XMLReader;
    new-instance v10, Lcom/commonsware/android/arXiv/XMLHandlerSearch;

    invoke-direct {v10}, Lcom/commonsware/android/arXiv/XMLHandlerSearch;-><init>()V

    .line 129
    .local v10, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 130
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v15}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 131
    iget v11, v10, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v10    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v12    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v13    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$2(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030001

    invoke-direct {v14, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v14, "tempViews":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    iget-object v3, v9, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$3(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/String;)V

    .line 139
    const-string v2, "arXiv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updating widget "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/commonsware/android/arXiv/Feed;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v2, v9, Lcom/commonsware/android/arXiv/Feed;->count:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_4

    .line 142
    iget v2, v9, Lcom/commonsware/android/arXiv/Feed;->count:I

    sub-int v7, v11, v2

    .line 143
    .local v7, "newArticles":I
    if-ltz v7, :cond_3

    .line 144
    const v2, 0x7f090003

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    :goto_3
    iget v2, v9, Lcom/commonsware/android/arXiv/Feed;->unread:I

    if-eq v7, v2, :cond_2

    .line 149
    new-instance v1, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$2(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    iget-wide v2, v9, Lcom/commonsware/android/arXiv/Feed;->feedId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v9, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    iget-object v5, v9, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    iget v6, v9, Lcom/commonsware/android/arXiv/Feed;->count:I

    invoke-virtual/range {v1 .. v7}, Lcom/commonsware/android/arXiv/arXivDB;->updateFeed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 151
    invoke-virtual {v1}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 156
    .end local v1    # "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    .end local v7    # "newArticles":I
    :cond_2
    :goto_4
    const v2, 0x7f090004

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$4(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    const-class v3, Landroid/widget/RemoteViews;

    const-string v4, "addView"

    .line 160
    invoke-static {}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$5()[Ljava/lang/Class;

    move-result-object v5

    .line 159
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$6(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/reflect/Method;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f090002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v14, v2, v3

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$8(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v8

    .line 166
    .local v8, "ef":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x7f090001

    const-string v4, "Widget only supported on Android 2.1+"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    .end local v8    # "ef":Ljava/lang/Exception;
    .end local v14    # "tempViews":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v8

    .line 133
    .restart local v8    # "ef":Ljava/lang/Exception;
    const-string v2, "arXiv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 146
    .end local v8    # "ef":Ljava/lang/Exception;
    .restart local v7    # "newArticles":I
    .restart local v14    # "tempViews":Landroid/widget/RemoteViews;
    :cond_3
    const v2, 0x7f090003

    const-string v3, "0"

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 154
    .end local v7    # "newArticles":I
    :cond_4
    const v2, 0x7f090003

    const-string v3, "0"

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 173
    .end local v9    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v11    # "numberOfTotalResults":I
    .end local v14    # "tempViews":Landroid/widget/RemoteViews;
    .end local v16    # "urlAddress":Ljava/lang/String;
    :cond_5
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$2(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030001

    invoke-direct {v14, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 174
    .restart local v14    # "tempViews":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    const-string v3, "No favorite categories or searches set, or incompatible source preference set in all favorites."

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$3(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/String;)V

    .line 175
    const v2, 0x7f090003

    const-string v3, "-"

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 176
    const v2, 0x7f090004

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$4(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    const-class v3, Landroid/widget/RemoteViews;

    const-string v4, "addView"

    .line 179
    invoke-static {}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$5()[Ljava/lang/Class;

    move-result-object v5

    .line 178
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$6(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;Ljava/lang/reflect/Method;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f090002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v14, v2, v3

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$8(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v3}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$7(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 184
    :catch_2
    move-exception v8

    .line 185
    .restart local v8    # "ef":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider$1;->this$0:Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    invoke-static {v2}, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;->access$9(Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;)Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x7f090001

    const-string v4, "Widget only supported on Android 2.1+"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
