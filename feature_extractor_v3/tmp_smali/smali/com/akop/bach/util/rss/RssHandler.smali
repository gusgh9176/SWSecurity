.class public Lcom/akop/bach/util/rss/RssHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RssHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/util/rss/RssHandler$DateUtils;
    }
.end annotation


# static fields
.field private static final STATE_IN_DESC:I = 0x2000

.field private static final STATE_IN_ITEM:I = 0x4

.field private static final STATE_IN_ITEM_AUTHOR:I = 0x80

.field private static final STATE_IN_ITEM_CONTENT:I = 0x200

.field private static final STATE_IN_ITEM_DATE:I = 0x40

.field private static final STATE_IN_ITEM_LINK:I = 0x10

.field private static final STATE_IN_ITEM_THUMB:I = 0x100

.field private static final STATE_IN_ITEM_TITLE:I = 0x8

.field private static final STATE_IN_LINK:I = 0x4000

.field private static final STATE_IN_TITLE:I = 0x1000

.field private static mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannel:Lcom/akop/bach/util/rss/RssChannel;

.field private mCurrent:Lcom/akop/bach/util/rss/RssItem;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "title"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "link"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "content:encoded"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "dc:date"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "updated"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "pubDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "dc:author"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "dc:creator"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "author"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    const-string v1, "thumbnail_url"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    .line 89
    new-instance v0, Lcom/akop/bach/util/rss/RssChannel;

    invoke-direct {v0}, Lcom/akop/bach/util/rss/RssChannel;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    .line 90
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    iput-object p1, v0, Lcom/akop/bach/util/rss/RssChannel;->link:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static getFeed(Ljava/lang/String;)Lcom/akop/bach/util/rss/RssChannel;
    .locals 18
    .param p0, "rssUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v3, Lcom/akop/bach/util/rss/RssHandler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/akop/bach/util/rss/RssHandler;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "handler":Lcom/akop/bach/util/rss/RssHandler;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 98
    const-string v10, "RssHandler: Fetching %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-static {v10, v11}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 104
    .local v6, "started":J
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 107
    .local v2, "c":Ljava/net/URLConnection;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 108
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 109
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 111
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v9, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 112
    invoke-interface {v9, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 113
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    const-string v10, "RssHandler: Completed (%.02f s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_1
    iget-object v10, v3, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    return-object v10

    .line 117
    .end local v2    # "c":Ljava/net/URLConnection;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v10

    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 119
    const-string v11, "RssHandler: Completed (%.02f s)"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    throw v10
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 166
    iget v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 169
    :sswitch_0
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssChannel;->title:Ljava/lang/String;

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssChannel;->description:Ljava/lang/String;

    goto :goto_0

    .line 175
    :sswitch_2
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssChannel;->link:Ljava/lang/String;

    goto :goto_0

    .line 178
    :sswitch_3
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    goto :goto_0

    .line 186
    :sswitch_4
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    goto :goto_0

    .line 189
    :sswitch_5
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/akop/bach/util/rss/RssHandler$DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    goto :goto_0

    .line 192
    :sswitch_6
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    goto :goto_0

    .line 195
    :sswitch_7
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_8
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3
        0x14 -> :sswitch_4
        0x44 -> :sswitch_5
        0x84 -> :sswitch_6
        0x104 -> :sswitch_7
        0x204 -> :sswitch_8
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_2
    .end sparse-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 158
    iget v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x4

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 130
    const-string v0, "item"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    .line 134
    new-instance v0, Lcom/akop/bach/util/rss/RssItem;

    invoke-direct {v0}, Lcom/akop/bach/util/rss/RssItem;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    .line 135
    iget-object v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mChannel:Lcom/akop/bach/util/rss/RssChannel;

    iget-object v0, v0, Lcom/akop/bach/util/rss/RssChannel;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/akop/bach/util/rss/RssHandler;->mCurrent:Lcom/akop/bach/util/rss/RssItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 142
    const-string v0, "title"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const/16 v0, 0x1000

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const/16 v0, 0x4000

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "description"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/16 v0, 0x2000

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    goto :goto_0

    .line 151
    :cond_4
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/akop/bach/util/rss/RssHandler;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/akop/bach/util/rss/RssHandler;->mState:I

    goto :goto_0
.end method
