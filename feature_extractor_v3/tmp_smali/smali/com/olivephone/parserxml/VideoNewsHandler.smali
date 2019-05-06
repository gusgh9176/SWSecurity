.class public Lcom/olivephone/parserxml/VideoNewsHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "VideoNewsHandler.java"


# instance fields
.field attr:Ljava/lang/StringBuffer;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field videoNews:Lcom/olivephone/model/VideoNews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/olivephone/parserxml/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 26
    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 31
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 28
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setNewsUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setBigTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_4
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setPubTime(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_5
    const-string v0, "author "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setAuthor(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_6
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setOrigin(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_7
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setImg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_8
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setNewsDesc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_9
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setNewsUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_a
    const-string v0, "playTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/VideoNews;->setPlayTime(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "newsList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->list:Ljava/util/List;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lcom/olivephone/model/VideoNews;

    invoke-direct {v0}, Lcom/olivephone/model/VideoNews;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->videoNews:Lcom/olivephone/model/VideoNews;

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string v0, "playTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/VideoNewsHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
