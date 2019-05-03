.class public final Lbtools/router/SearchBoundary;
.super Ljava/lang/Object;
.source "SearchBoundary.java"


# instance fields
.field direction:I

.field private maxlat:I

.field private maxlat0:I

.field private maxlon:I

.field private maxlon0:I

.field private minlat:I

.field private minlat0:I

.field private minlon:I

.field private minlon0:I

.field private p:Lbtools/mapaccess/OsmNode;

.field private radius:I


# direct methods
.method public constructor <init>(Lbtools/mapaccess/OsmNode;II)V
    .locals 9
    .param p1, "n"    # Lbtools/mapaccess/OsmNode;
    .param p2, "radius"    # I
    .param p3, "direction"    # I

    .prologue
    const v8, 0x989680

    const v7, 0x5b8d80

    const v6, 0xf4240

    const v5, 0x4c4b40

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lbtools/router/SearchBoundary;->radius:I

    .line 31
    iput p3, p0, Lbtools/router/SearchBoundary;->direction:I

    .line 33
    new-instance v2, Lbtools/mapaccess/OsmNode;

    iget v3, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v4, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-direct {v2, v3, v4}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    iput-object v2, p0, Lbtools/router/SearchBoundary;->p:Lbtools/mapaccess/OsmNode;

    .line 35
    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    div-int/2addr v2, v5

    mul-int v1, v2, v5

    .line 36
    .local v1, "lon":I
    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    div-int/2addr v2, v5

    mul-int v0, v2, v5

    .line 38
    .local v0, "lat":I
    sub-int v2, v1, v5

    iput v2, p0, Lbtools/router/SearchBoundary;->minlon0:I

    .line 39
    sub-int v2, v0, v5

    iput v2, p0, Lbtools/router/SearchBoundary;->minlat0:I

    .line 40
    add-int v2, v1, v8

    iput v2, p0, Lbtools/router/SearchBoundary;->maxlon0:I

    .line 41
    add-int v2, v0, v8

    iput v2, p0, Lbtools/router/SearchBoundary;->maxlat0:I

    .line 43
    sub-int v2, v1, v6

    iput v2, p0, Lbtools/router/SearchBoundary;->minlon:I

    .line 44
    sub-int v2, v0, v6

    iput v2, p0, Lbtools/router/SearchBoundary;->minlat:I

    .line 45
    add-int v2, v1, v7

    iput v2, p0, Lbtools/router/SearchBoundary;->maxlon:I

    .line 46
    add-int v2, v0, v7

    iput v2, p0, Lbtools/router/SearchBoundary;->maxlat:I

    .line 47
    return-void
.end method

.method public static getFileName(Lbtools/mapaccess/OsmNode;)Ljava/lang/String;
    .locals 9
    .param p0, "n"    # Lbtools/mapaccess/OsmNode;

    .prologue
    const v8, 0xf4240

    const v7, 0x4c4b40

    .line 51
    iget v6, p0, Lbtools/mapaccess/OsmNode;->ilon:I

    div-int/2addr v6, v7

    mul-int v3, v6, v7

    .line 52
    .local v3, "lon":I
    iget v6, p0, Lbtools/mapaccess/OsmNode;->ilat:I

    div-int/2addr v6, v7

    mul-int v2, v6, v7

    .line 54
    .local v2, "lat":I
    div-int v6, v3, v8

    add-int/lit16 v1, v6, -0xb4

    .line 55
    .local v1, "dlon":I
    div-int v6, v2, v8

    add-int/lit8 v0, v6, -0x5a

    .line 57
    .local v0, "dlat":I
    if-gez v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    neg-int v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "slon":Ljava/lang/String;
    :goto_0
    if-gez v0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    neg-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "slat":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".trf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 57
    .end local v4    # "slat":Ljava/lang/String;
    .end local v5    # "slon":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 58
    .restart local v5    # "slon":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "N"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public getBoundaryDistance(Lbtools/mapaccess/OsmNode;)I
    .locals 3
    .param p1, "n"    # Lbtools/mapaccess/OsmNode;

    .prologue
    .line 77
    iget v0, p0, Lbtools/router/SearchBoundary;->direction:I

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/SearchBoundary;->direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    new-instance v0, Lbtools/mapaccess/OsmNode;

    iget v1, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v2, p0, Lbtools/router/SearchBoundary;->minlat:I

    invoke-direct {v0, v1, v2}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    invoke-virtual {p1, v0}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 80
    :pswitch_1
    new-instance v0, Lbtools/mapaccess/OsmNode;

    iget v1, p0, Lbtools/router/SearchBoundary;->minlon:I

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-direct {v0, v1, v2}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    invoke-virtual {p1, v0}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v0

    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v0, Lbtools/mapaccess/OsmNode;

    iget v1, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v2, p0, Lbtools/router/SearchBoundary;->maxlat:I

    invoke-direct {v0, v1, v2}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    invoke-virtual {p1, v0}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_3
    new-instance v0, Lbtools/mapaccess/OsmNode;

    iget v1, p0, Lbtools/router/SearchBoundary;->maxlon:I

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    invoke-direct {v0, v1, v2}, Lbtools/mapaccess/OsmNode;-><init>(II)V

    invoke-virtual {p1, v0}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v0

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInBoundary(Lbtools/mapaccess/OsmNode;I)Z
    .locals 4
    .param p1, "n"    # Lbtools/mapaccess/OsmNode;
    .param p2, "cost"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p0, Lbtools/router/SearchBoundary;->radius:I

    if-lez v2, :cond_2

    .line 66
    iget-object v2, p0, Lbtools/router/SearchBoundary;->p:Lbtools/mapaccess/OsmNode;

    invoke-virtual {p1, v2}, Lbtools/mapaccess/OsmNode;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v2

    iget v3, p0, Lbtools/router/SearchBoundary;->radius:I

    if-ge v2, v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    if-nez p2, :cond_4

    .line 70
    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v3, p0, Lbtools/router/SearchBoundary;->minlon0:I

    if-le v2, v3, :cond_3

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v3, p0, Lbtools/router/SearchBoundary;->maxlon0:I

    if-ge v2, v3, :cond_3

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    iget v3, p0, Lbtools/router/SearchBoundary;->minlat0:I

    if-le v2, v3, :cond_3

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    iget v3, p0, Lbtools/router/SearchBoundary;->maxlat0:I

    if-lt v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 72
    :cond_4
    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v3, p0, Lbtools/router/SearchBoundary;->minlon:I

    if-le v2, v3, :cond_5

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilon:I

    iget v3, p0, Lbtools/router/SearchBoundary;->maxlon:I

    if-ge v2, v3, :cond_5

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    iget v3, p0, Lbtools/router/SearchBoundary;->minlat:I

    if-le v2, v3, :cond_5

    iget v2, p1, Lbtools/mapaccess/OsmNode;->ilat:I

    iget v3, p0, Lbtools/router/SearchBoundary;->maxlat:I

    if-lt v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
