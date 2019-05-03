.class public Lbtools/mapaccess/OsmLink;
.super Ljava/lang/Object;
.source "OsmLink.java"


# instance fields
.field public descriptionBitmap:[B

.field private firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

.field public geometry:[B

.field protected n1:Lbtools/mapaccess/OsmNode;

.field protected n2:Lbtools/mapaccess/OsmNode;

.field protected next:Lbtools/mapaccess/OsmLink;

.field protected previous:Lbtools/mapaccess/OsmLink;

.field private reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lbtools/mapaccess/OsmLink;->reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 31
    iput-object v0, p0, Lbtools/mapaccess/OsmLink;->firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 35
    return-void
.end method

.method public constructor <init>(Lbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;)V
    .locals 1
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;
    .param p2, "target"    # Lbtools/mapaccess/OsmNode;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lbtools/mapaccess/OsmLink;->reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 31
    iput-object v0, p0, Lbtools/mapaccess/OsmLink;->firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 39
    iput-object p1, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    .line 40
    iput-object p2, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    .line 41
    return-void
.end method


# virtual methods
.method public final addLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V
    .locals 1
    .param p1, "holder"    # Lbtools/mapaccess/OsmLinkHolder;
    .param p2, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 172
    invoke-virtual {p0, p2}, Lbtools/mapaccess/OsmLink;->getFirstLinkHolder(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLinkHolder;

    move-result-object v0

    .line 173
    .local v0, "firstHolder":Lbtools/mapaccess/OsmLinkHolder;
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lbtools/mapaccess/OsmLinkHolder;->setNextForLink(Lbtools/mapaccess/OsmLinkHolder;)V

    .line 174
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbtools/mapaccess/OsmLink;->setFirstLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V

    .line 175
    return-void
.end method

.method protected final clear(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;
    .locals 3
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eq v1, p1, :cond_1

    .line 92
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    .line 93
    .local v0, "n":Lbtools/mapaccess/OsmLink;
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    .line 94
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    .line 95
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 108
    :goto_0
    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-nez v1, :cond_0

    .line 110
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->descriptionBitmap:[B

    .line 111
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->geometry:[B

    .line 113
    :cond_0
    return-object v0

    .line 97
    .end local v0    # "n":Lbtools/mapaccess/OsmLink;
    :cond_1
    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eq v1, p1, :cond_2

    .line 99
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    .line 100
    .restart local v0    # "n":Lbtools/mapaccess/OsmLink;
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    .line 101
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    .line 102
    iput-object v2, p0, Lbtools/mapaccess/OsmLink;->reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;

    goto :goto_0

    .line 106
    .end local v0    # "n":Lbtools/mapaccess/OsmLink;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "internal error: setNext: unknown source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getFirstLinkHolder(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLinkHolder;
    .locals 2
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 134
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eq v0, p1, :cond_0

    .line 136
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 140
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eq v0, p1, :cond_1

    .line 140
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "internal error: getFirstLinkHolder: unknown source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getNext(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmLink;
    .locals 1
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 69
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->next:Lbtools/mapaccess/OsmLink;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->previous:Lbtools/mapaccess/OsmLink;

    goto :goto_0
.end method

.method public final getTarget(Lbtools/mapaccess/OsmNode;)Lbtools/mapaccess/OsmNode;
    .locals 1
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 48
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    goto :goto_0
.end method

.method public final isBidirectional()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isReverse(Lbtools/mapaccess/OsmNode;)Z
    .locals 1
    .param p1, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 150
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFirstLinkHolder(Lbtools/mapaccess/OsmLinkHolder;Lbtools/mapaccess/OsmNode;)V
    .locals 2
    .param p1, "holder"    # Lbtools/mapaccess/OsmLinkHolder;
    .param p2, "source"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 118
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n2:Lbtools/mapaccess/OsmNode;

    if-eq v0, p2, :cond_0

    .line 120
    iput-object p1, p0, Lbtools/mapaccess/OsmLink;->firstlinkholder:Lbtools/mapaccess/OsmLinkHolder;

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbtools/mapaccess/OsmLink;->n1:Lbtools/mapaccess/OsmNode;

    if-eq v0, p2, :cond_1

    .line 124
    iput-object p1, p0, Lbtools/mapaccess/OsmLink;->reverselinkholder:Lbtools/mapaccess/OsmLinkHolder;

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "internal error: setFirstLinkHolder: unknown source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
