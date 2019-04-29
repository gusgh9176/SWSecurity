.class public Lcom/commonsware/android/arXiv/XMLHandlerRSS;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLHandlerRSS.java"


# instance fields
.field public creators:[Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public descriptions:[Ljava/lang/String;

.field public icount:I

.field private in_date:Z

.field private in_dccreator:Z

.field private in_description:Z

.field private in_item:Z

.field private in_items:Z

.field private in_link:Z

.field private in_title:Z

.field public links:[Ljava/lang/String;

.field public numItems:I

.field public titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_items:Z

    .line 42
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_item:Z

    .line 43
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_title:Z

    .line 44
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_link:Z

    .line 45
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_date:Z

    .line 46
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_description:Z

    .line 47
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_dccreator:Z

    .line 48
    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    .line 49
    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->date:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_items:Z

    if-nez v0, :cond_0

    .line 62
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_item:Z

    if-eqz v0, :cond_4

    .line 63
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_description:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->descriptions:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_title:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_link:Z

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 69
    :cond_3
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_dccreator:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 73
    :cond_4
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_date:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->date:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->date:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_items:Z

    .line 91
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->creators:[Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->links:[Ljava/lang/String;

    .line 94
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->descriptions:[Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_item:Z

    .line 97
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_title:Z

    goto :goto_0

    .line 100
    :cond_3
    const-string v0, "link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_link:Z

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_date:Z

    goto :goto_0

    .line 104
    :cond_5
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_description:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 118
    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_items:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_item:Z

    .line 122
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->titles:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->descriptions:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_title:Z

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_link:Z

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "creator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_dccreator:Z

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_description:Z

    goto :goto_0

    .line 134
    :cond_6
    const-string v0, "date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->in_date:Z

    goto :goto_0

    .line 136
    :cond_7
    const-string v0, "li"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerRSS;->numItems:I

    goto :goto_0
.end method
