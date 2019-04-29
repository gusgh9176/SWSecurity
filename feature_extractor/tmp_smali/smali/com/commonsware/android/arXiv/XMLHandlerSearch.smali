.class public Lcom/commonsware/android/arXiv/XMLHandlerSearch;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLHandlerSearch.java"


# instance fields
.field public categories:[Ljava/lang/String;

.field public creators:[Ljava/lang/String;

.field public descriptions:[Ljava/lang/String;

.field public icount:I

.field private in_dccreator:Z

.field private in_description:Z

.field private in_item:Z

.field private in_link:Z

.field private in_published_date:Z

.field private in_title:Z

.field private in_totalresults:Z

.field private in_updated_date:Z

.field public links:[Ljava/lang/String;

.field public ntotal:Ljava/lang/String;

.field public numItems:I

.field public numTotalItems:I

.field public publishedDates:[Ljava/lang/String;

.field public titles:[Ljava/lang/String;

.field public updatedDates:[Ljava/lang/String;

.field private vFirstCategory:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_totalresults:Z

    .line 41
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_item:Z

    .line 42
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_title:Z

    .line 43
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_link:Z

    .line 44
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_updated_date:Z

    .line 45
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_published_date:Z

    .line 46
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_description:Z

    .line 47
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_dccreator:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->vFirstCategory:Z

    .line 49
    iput v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    .line 50
    iput v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numItems:I

    .line 51
    iput v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->ntotal:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_item:Z

    if-eqz v0, :cond_6

    .line 67
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_description:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->descriptions:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_title:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->titles:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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

    .line 71
    :cond_2
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_link:Z

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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
    :cond_3
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_updated_date:Z

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->updatedDates:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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

    .line 75
    :cond_4
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_published_date:Z

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->publishedDates:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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

    goto/16 :goto_0

    .line 77
    :cond_5
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_dccreator:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

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

    goto/16 :goto_0

    .line 81
    :cond_6
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_totalresults:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->ntotal:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->ntotal:Ljava/lang/String;

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
    .line 90
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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

    .line 96
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_updated_date:Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "published"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_published_date:Z

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_item:Z

    .line 102
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->vFirstCategory:Z

    .line 104
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numItems:I

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "totalResults"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_totalresults:Z

    .line 107
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->ntotal:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I

    goto :goto_0

    .line 108
    :cond_4
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_title:Z

    goto :goto_0

    .line 110
    :cond_5
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_link:Z

    goto :goto_0

    .line 112
    :cond_6
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_dccreator:Z

    .line 114
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v4, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 115
    :cond_7
    const-string v0, "summary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_description:Z

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
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
    const/16 v2, 0x1e

    const/4 v1, 0x1

    .line 129
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_updated_date:Z

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v0, "published"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_published_date:Z

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_item:Z

    .line 135
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->titles:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->updatedDates:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->publishedDates:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->descriptions:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "totalResults"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_totalresults:Z

    .line 143
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->updatedDates:[Ljava/lang/String;

    .line 144
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->publishedDates:[Ljava/lang/String;

    .line 145
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->descriptions:[Ljava/lang/String;

    .line 146
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->categories:[Ljava/lang/String;

    .line 147
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->titles:[Ljava/lang/String;

    .line 148
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->links:[Ljava/lang/String;

    .line 149
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_4
    const-string v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_title:Z

    goto :goto_0

    .line 152
    :cond_5
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_link:Z

    goto/16 :goto_0

    .line 154
    :cond_6
    const-string v0, "category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->vFirstCategory:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->categories:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    const-string v2, "term"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->vFirstCategory:Z

    goto/16 :goto_0

    .line 159
    :cond_7
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_dccreator:Z

    .line 161
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->creators:[Ljava/lang/String;

    iget v4, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->icount:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 162
    :cond_8
    const-string v0, "summary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iput-boolean v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->in_description:Z

    goto/16 :goto_0
.end method
