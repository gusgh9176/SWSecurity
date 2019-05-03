.class public final Lbtools/mapaccess/GeometryDecoder;
.super Ljava/lang/Object;
.source "GeometryDecoder.java"


# instance fields
.field private cachedNodes:[Lbtools/mapaccess/OsmTransferNode;

.field private firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

.field private lastGeometry:[B

.field private lastReverse:Z

.field private nCachedNodes:I

.field private r:Lbtools/util/ByteDataReader;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Lbtools/util/ByteDataReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbtools/util/ByteDataReader;-><init>([B)V

    iput-object v1, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    .line 15
    const/16 v1, 0x80

    iput v1, p0, Lbtools/mapaccess/GeometryDecoder;->nCachedNodes:I

    .line 25
    iget v1, p0, Lbtools/mapaccess/GeometryDecoder;->nCachedNodes:I

    new-array v1, v1, [Lbtools/mapaccess/OsmTransferNode;

    iput-object v1, p0, Lbtools/mapaccess/GeometryDecoder;->cachedNodes:[Lbtools/mapaccess/OsmTransferNode;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbtools/mapaccess/GeometryDecoder;->nCachedNodes:I

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lbtools/mapaccess/GeometryDecoder;->cachedNodes:[Lbtools/mapaccess/OsmTransferNode;

    new-instance v2, Lbtools/mapaccess/OsmTransferNode;

    invoke-direct {v2}, Lbtools/mapaccess/OsmTransferNode;-><init>()V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public decodeGeometry([BLbtools/mapaccess/OsmNode;Lbtools/mapaccess/OsmNode;Z)Lbtools/mapaccess/OsmTransferNode;
    .locals 10
    .param p1, "geometry"    # [B
    .param p2, "sourceNode"    # Lbtools/mapaccess/OsmNode;
    .param p3, "targetNode"    # Lbtools/mapaccess/OsmNode;
    .param p4, "reverseLink"    # Z

    .prologue
    const/4 v9, 0x0

    .line 34
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->lastGeometry:[B

    if-ne v8, p1, :cond_0

    iget-boolean v8, p0, Lbtools/mapaccess/GeometryDecoder;->lastReverse:Z

    if-ne v8, p4, :cond_0

    .line 36
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    .line 79
    :goto_0
    return-object v8

    .line 39
    :cond_0
    iput-object v9, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "lastTransferNode":Lbtools/mapaccess/OsmTransferNode;
    if-eqz p4, :cond_1

    move-object v6, p3

    .line 42
    .local v6, "startnode":Lbtools/mapaccess/OsmNode;
    :goto_1
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    invoke-virtual {v8, p1}, Lbtools/util/ByteDataReader;->reset([B)V

    .line 43
    iget v4, v6, Lbtools/mapaccess/OsmNode;->ilon:I

    .line 44
    .local v4, "olon":I
    iget v3, v6, Lbtools/mapaccess/OsmNode;->ilat:I

    .line 45
    .local v3, "olat":I
    iget-short v5, v6, Lbtools/mapaccess/OsmNode;->selev:S

    .line 46
    .local v5, "oselev":I
    const/4 v0, 0x0

    .line 47
    .local v0, "idx":I
    :goto_2
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    invoke-virtual {v8}, Lbtools/util/ByteDataReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 49
    iget v8, p0, Lbtools/mapaccess/GeometryDecoder;->nCachedNodes:I

    if-ge v0, v8, :cond_2

    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->cachedNodes:[Lbtools/mapaccess/OsmTransferNode;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    aget-object v7, v8, v0

    move v0, v1

    .line 50
    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    .local v7, "trans":Lbtools/mapaccess/OsmTransferNode;
    :goto_3
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    invoke-virtual {v8}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v8

    add-int/2addr v8, v4

    iput v8, v7, Lbtools/mapaccess/OsmTransferNode;->ilon:I

    .line 51
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    invoke-virtual {v8}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v8

    add-int/2addr v8, v3

    iput v8, v7, Lbtools/mapaccess/OsmTransferNode;->ilat:I

    .line 52
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->r:Lbtools/util/ByteDataReader;

    invoke-virtual {v8}, Lbtools/util/ByteDataReader;->readVarLengthSigned()I

    move-result v8

    add-int/2addr v8, v5

    int-to-short v8, v8

    iput-short v8, v7, Lbtools/mapaccess/OsmTransferNode;->selev:S

    .line 53
    iget v4, v7, Lbtools/mapaccess/OsmTransferNode;->ilon:I

    .line 54
    iget v3, v7, Lbtools/mapaccess/OsmTransferNode;->ilat:I

    .line 55
    iget-short v5, v7, Lbtools/mapaccess/OsmTransferNode;->selev:S

    .line 56
    if-eqz p4, :cond_3

    .line 58
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    iput-object v8, v7, Lbtools/mapaccess/OsmTransferNode;->next:Lbtools/mapaccess/OsmTransferNode;

    .line 59
    iput-object v7, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    goto :goto_2

    .end local v0    # "idx":I
    .end local v3    # "olat":I
    .end local v4    # "olon":I
    .end local v5    # "oselev":I
    .end local v6    # "startnode":Lbtools/mapaccess/OsmNode;
    .end local v7    # "trans":Lbtools/mapaccess/OsmTransferNode;
    :cond_1
    move-object v6, p2

    .line 41
    goto :goto_1

    .line 49
    .restart local v0    # "idx":I
    .restart local v3    # "olat":I
    .restart local v4    # "olon":I
    .restart local v5    # "oselev":I
    .restart local v6    # "startnode":Lbtools/mapaccess/OsmNode;
    :cond_2
    new-instance v7, Lbtools/mapaccess/OsmTransferNode;

    invoke-direct {v7}, Lbtools/mapaccess/OsmTransferNode;-><init>()V

    goto :goto_3

    .line 63
    .restart local v7    # "trans":Lbtools/mapaccess/OsmTransferNode;
    :cond_3
    iput-object v9, v7, Lbtools/mapaccess/OsmTransferNode;->next:Lbtools/mapaccess/OsmTransferNode;

    .line 64
    if-nez v2, :cond_4

    .line 66
    iput-object v7, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    .line 72
    :goto_4
    move-object v2, v7

    goto :goto_2

    .line 70
    :cond_4
    iput-object v7, v2, Lbtools/mapaccess/OsmTransferNode;->next:Lbtools/mapaccess/OsmTransferNode;

    goto :goto_4

    .line 76
    .end local v7    # "trans":Lbtools/mapaccess/OsmTransferNode;
    :cond_5
    iput-boolean p4, p0, Lbtools/mapaccess/GeometryDecoder;->lastReverse:Z

    .line 77
    iput-object p1, p0, Lbtools/mapaccess/GeometryDecoder;->lastGeometry:[B

    .line 79
    iget-object v8, p0, Lbtools/mapaccess/GeometryDecoder;->firstTransferNode:Lbtools/mapaccess/OsmTransferNode;

    goto :goto_0
.end method
