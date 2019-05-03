.class public Lbtools/router/OsmNodeNamed;
.super Lbtools/mapaccess/OsmNode;
.source "OsmNodeNamed.java"


# instance fields
.field public isNogo:Z

.field public name:Ljava/lang/String;

.field public radius:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lbtools/mapaccess/OsmNode;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtools/router/OsmNodeNamed;->isNogo:Z

    return-void
.end method

.method public static decodeNogo(Ljava/lang/String;)Lbtools/router/OsmNodeNamed;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    .line 24
    new-instance v2, Lbtools/router/OsmNodeNamed;

    invoke-direct {v2}, Lbtools/router/OsmNodeNamed;-><init>()V

    .line 25
    .local v2, "n":Lbtools/router/OsmNodeNamed;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 26
    .local v0, "idx1":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lbtools/router/OsmNodeNamed;->ilon:I

    .line 27
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 28
    .local v1, "idx2":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lbtools/router/OsmNodeNamed;->ilat:I

    .line 29
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    iput-boolean v3, v2, Lbtools/router/OsmNodeNamed;->isNogo:Z

    .line 31
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lbtools/router/OsmNodeNamed;->ilon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/OsmNodeNamed;->ilat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtools/router/OsmNodeNamed;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
