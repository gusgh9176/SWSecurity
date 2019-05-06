.class public Lcom/olivephone/parserxml/TextNewsHandler;
.super Lcom/olivephone/parserxml/DefaultHandler;
.source "TextNewsHandler.java"


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

.field textNews:Lcom/olivephone/model/TextNews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->characters([CII)V

    .line 28
    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 33
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 30
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/olivephone/parserxml/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setNewsUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setBigTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_5
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setPubTime(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_6
    const-string v0, "author "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setAuthor(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_7
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setOrigin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_8
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setNewsDesc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_9
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setNewsUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_a
    const-string v0, "newsContent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setNewsContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_b
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    iget-object v1, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/olivephone/model/TextNews;->setImg(Ljava/lang/String;)V

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
    .line 22
    iget-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->list:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lcom/olivephone/parserxml/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    const-string v0, "newsList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->list:Ljava/util/List;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    new-instance v0, Lcom/olivephone/model/TextNews;

    invoke-direct {v0}, Lcom/olivephone/model/TextNews;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->textNews:Lcom/olivephone/model/TextNews;

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const-string v0, "newsUuid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    const-string v0, "media"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    const-string v0, "bigTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    const-string v0, "pubTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string v0, "author"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    const-string v0, "origin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    const-string v0, "newsDesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    const-string v0, "newsUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const-string v0, "newsContent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    const-string v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/olivephone/parserxml/TextNewsHandler;->attr:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
