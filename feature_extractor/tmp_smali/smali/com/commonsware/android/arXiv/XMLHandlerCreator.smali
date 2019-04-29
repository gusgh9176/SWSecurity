.class public Lcom/commonsware/android/arXiv/XMLHandlerCreator;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLHandlerCreator.java"


# instance fields
.field public creators:[Ljava/lang/String;

.field private in_a:Z

.field public numItems:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->in_a:Z

    .line 41
    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    .line 42
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

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
    .line 49
    iget-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->in_a:Z

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

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

    .line 54
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->in_a:Z

    .line 67
    iget v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    .line 69
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 74
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
    .line 80
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->in_a:Z

    .line 82
    iget-object v0, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->creators:[Ljava/lang/String;

    iget v1, p0, Lcom/commonsware/android/arXiv/XMLHandlerCreator;->numItems:I

    const-string v2, ""

    aput-object v2, v0, v1

    .line 84
    :cond_0
    return-void
.end method
