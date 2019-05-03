.class public final Lbtools/router/OsmTrack;
.super Ljava/lang/Object;
.source "OsmTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtools/router/OsmTrack$OsmPathElementHolder;
    }
.end annotation


# static fields
.field private static final MESSAGES_HEADER:Ljava/lang/String; = "Longitude\tLatitude\tElevation\tDistance\tCostPerKm\tElevCost\tTurnCost\tNodeCost\tInitialCost\tWayTags\tNodeTags"


# instance fields
.field public ascend:I

.field public cost:I

.field private detourMap:Lbtools/util/CompactLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbtools/util/CompactLongMap",
            "<",
            "Lbtools/router/OsmTrack$OsmPathElementHolder;",
            ">;"
        }
    .end annotation
.end field

.field public distance:I

.field public endPoint:Lbtools/router/MatchedWaypoint;

.field public energy:I

.field public isDirty:Z

.field public iternity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbtools/router/OsmPathElement;",
            ">;"
        }
    .end annotation
.end field

.field private nodesMap:Lbtools/util/CompactLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbtools/util/CompactLongMap",
            "<",
            "Lbtools/router/OsmTrack$OsmPathElementHolder;",
            ">;"
        }
    .end annotation
.end field

.field public nogoChecksums:[J

.field public plainAscend:I

.field public profileTimestamp:J

.field public showspeed:Z

.field private voiceHints:Lbtools/router/VoiceHintList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lbtools/router/OsmTrack;->message:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lbtools/router/OsmTrack;->messageList:Ljava/util/ArrayList;

    .line 59
    const-string v0, "unset"

    iput-object v0, p0, Lbtools/router/OsmTrack;->name:Ljava/lang/String;

    return-void
.end method

.method private aggregateMessages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "current":Lbtools/router/MessageData;
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtools/router/OsmPathElement;

    .line 125
    .local v2, "n":Lbtools/router/OsmPathElement;
    iget-object v5, v2, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    iget-object v5, v5, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, v2, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    invoke-virtual {v5}, Lbtools/router/MessageData;->copy()Lbtools/router/MessageData;

    move-result-object v1

    .line 128
    .local v1, "md":Lbtools/router/MessageData;
    if-eqz v0, :cond_2

    .line 130
    iget-object v5, v0, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, v0, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    iget-object v6, v1, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    :cond_1
    invoke-virtual {v0}, Lbtools/router/MessageData;->toMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v1, v0}, Lbtools/router/MessageData;->add(Lbtools/router/MessageData;)V

    goto :goto_1

    .line 142
    .end local v1    # "md":Lbtools/router/MessageData;
    .end local v2    # "n":Lbtools/router/OsmPathElement;
    :cond_4
    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v0}, Lbtools/router/MessageData;->toMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_5
    return-object v3
.end method

.method private dumpLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 684
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 689
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private format1(D)Ljava/lang/String;
    .locals 9
    .param p1, "n"    # D

    .prologue
    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 660
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static formatILat(I)Ljava/lang/String;
    .locals 1
    .param p0, "ilat"    # I

    .prologue
    .line 634
    const v0, 0x55d4a80

    sub-int v0, p0, v0

    invoke-static {v0}, Lbtools/router/OsmTrack;->formatPos(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatILon(I)Ljava/lang/String;
    .locals 1
    .param p0, "ilon"    # I

    .prologue
    .line 629
    const v0, 0xaba9500

    sub-int v0, p0, v0

    invoke-static {v0}, Lbtools/router/OsmTrack;->formatPos(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatLongs([J)Ljava/lang/String;
    .locals 6
    .param p0, "al"    # [J

    .prologue
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 257
    .local v0, "l":J
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "l":J
    :cond_0
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatPos(I)Ljava/lang/String;
    .locals 7
    .param p0, "p"    # I

    .prologue
    .line 639
    if-gez p0, :cond_2

    const/4 v3, 0x1

    .line 640
    .local v3, "negative":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 641
    neg-int p0, p0

    .line 642
    :cond_0
    const/16 v4, 0xc

    new-array v0, v4, [C

    .line 643
    .local v0, "ac":[C
    const/16 v1, 0xb

    .local v1, "i":I
    move v2, v1

    .line 644
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez p0, :cond_1

    const/4 v4, 0x3

    if-le v2, v4, :cond_3

    .line 646
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    rem-int/lit8 v4, p0, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 647
    div-int/lit8 p0, p0, 0xa

    .line 648
    const/4 v4, 0x5

    if-ne v1, v4, :cond_5

    .line 649
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const/16 v4, 0x2e

    aput-char v4, v0, v1

    goto :goto_1

    .line 639
    .end local v0    # "ac":[C
    .end local v2    # "i":I
    .end local v3    # "negative":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 651
    .restart local v0    # "ac":[C
    .restart local v2    # "i":I
    .restart local v3    # "negative":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 652
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0x2d

    aput-char v4, v0, v2

    .line 653
    :goto_2
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    rsub-int/lit8 v6, v1, 0xb

    invoke-direct {v4, v0, v5, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private getTotalSeconds()I
    .locals 6

    .prologue
    .line 613
    iget-object v1, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    .line 614
    .local v0, "s":F
    :goto_0
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1

    .line 613
    .end local v0    # "s":F
    :cond_0
    iget-object v1, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    iget-object v2, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmPathElement;

    invoke-virtual {v1}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v2

    iget-object v1, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmPathElement;

    invoke-virtual {v1}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v1

    sub-float v0, v2, v1

    goto :goto_0
.end method

.method public static readBinary(Ljava/lang/String;Lbtools/router/OsmNodeNamed;[JJLjava/lang/StringBuilder;)Lbtools/router/OsmTrack;
    .locals 25
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "newEp"    # Lbtools/router/OsmNodeNamed;
    .param p2, "nogoChecksums"    # [J
    .param p3, "profileChecksum"    # J
    .param p5, "debugInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 175
    const/16 v17, 0x0

    .line 176
    .local v17, "t":Lbtools/router/OsmTrack;
    if-eqz p0, :cond_9

    .line 178
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 183
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-static {v3}, Lbtools/router/MatchedWaypoint;->readFromStream(Ljava/io/DataInput;)Lbtools/router/MatchedWaypoint;

    move-result-object v7

    .line 185
    .local v7, "ep":Lbtools/router/MatchedWaypoint;
    iget-object v0, v7, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilon:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 186
    .local v5, "dlon":I
    iget-object v0, v7, Lbtools/router/MatchedWaypoint;->waypoint:Lbtools/router/OsmNodeNamed;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbtools/router/OsmNodeNamed;->ilat:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 187
    .local v4, "dlat":I
    const/16 v20, 0x14

    move/from16 v0, v20

    if-ge v5, v0, :cond_1

    const/16 v20, -0x14

    move/from16 v0, v20

    if-le v5, v0, :cond_1

    const/16 v20, 0x14

    move/from16 v0, v20

    if-ge v4, v0, :cond_1

    const/16 v20, -0x14

    move/from16 v0, v20

    if-le v4, v0, :cond_1

    const/16 v19, 0x1

    .line 188
    .local v19, "targetMatch":Z
    :goto_0
    if-eqz p5, :cond_0

    .line 190
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "target-delta = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " targetMatch="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    if-eqz v19, :cond_8

    .line 194
    new-instance v18, Lbtools/router/OsmTrack;

    invoke-direct/range {v18 .. v18}, Lbtools/router/OsmTrack;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v17    # "t":Lbtools/router/OsmTrack;
    .local v18, "t":Lbtools/router/OsmTrack;
    :try_start_1
    move-object/from16 v0, v18

    iput-object v7, v0, Lbtools/router/OsmTrack;->endPoint:Lbtools/router/MatchedWaypoint;

    .line 196
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 197
    .local v11, "n":I
    const/4 v10, 0x0

    .line 198
    .local v10, "last_pe":Lbtools/router/OsmPathElement;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_2

    .line 200
    invoke-static {v3}, Lbtools/router/OsmPathElement;->readFromStream(Ljava/io/DataInput;)Lbtools/router/OsmPathElement;

    move-result-object v13

    .line 201
    .local v13, "pe":Lbtools/router/OsmPathElement;
    iput-object v10, v13, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 202
    move-object v10, v13

    .line 203
    move-object/from16 v0, v18

    iget-object v0, v0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    .end local v9    # "i":I
    .end local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .end local v11    # "n":I
    .end local v13    # "pe":Lbtools/router/OsmPathElement;
    .end local v18    # "t":Lbtools/router/OsmTrack;
    .end local v19    # "targetMatch":Z
    .restart local v17    # "t":Lbtools/router/OsmTrack;
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 205
    .end local v17    # "t":Lbtools/router/OsmTrack;
    .restart local v9    # "i":I
    .restart local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .restart local v11    # "n":I
    .restart local v18    # "t":Lbtools/router/OsmTrack;
    .restart local v19    # "targetMatch":Z
    :cond_2
    iget v0, v10, Lbtools/router/OsmPathElement;->cost:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lbtools/router/OsmTrack;->cost:I

    .line 206
    invoke-virtual/range {v18 .. v18}, Lbtools/router/OsmTrack;->buildMap()V

    .line 209
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v2, v0, [J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    .local v2, "al":[J
    const-wide/16 v14, 0x0

    .line 213
    .local v14, "pchecksum":J
    const/16 v20, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    aput-wide v22, v2, v20

    .line 214
    const/16 v20, 0x1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    aput-wide v22, v2, v20

    .line 215
    const/16 v20, 0x2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    aput-wide v22, v2, v20
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 220
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lbtools/router/OsmTrack;->isDirty:Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 225
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v14

    .line 228
    :goto_4
    const/16 v20, 0x0

    :try_start_5
    aget-wide v20, v2, v20

    const/16 v22, 0x0

    aget-wide v22, p2, v22

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/16 v22, 0x14

    cmp-long v20, v20, v22

    if-gtz v20, :cond_5

    const/16 v20, 0x1

    aget-wide v20, v2, v20

    const/16 v22, 0x1

    aget-wide v22, p2, v22

    sub-long v20, v20, v22

    .line 229
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/16 v22, 0x14

    cmp-long v20, v20, v22

    if-gtz v20, :cond_5

    const/16 v20, 0x2

    aget-wide v20, v2, v20

    const/16 v22, 0x2

    aget-wide v22, p2, v22

    sub-long v20, v20, v22

    .line 230
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/16 v22, 0x14

    cmp-long v20, v20, v22

    if-gtz v20, :cond_5

    const/4 v12, 0x1

    .line 231
    .local v12, "nogoCheckOk":Z
    :goto_5
    cmp-long v20, v14, p3

    if-nez v20, :cond_6

    const/16 v16, 0x1

    .line 233
    .local v16, "profileCheckOk":Z
    :goto_6
    if-eqz p5, :cond_3

    .line 235
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " nogoCheckOk="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " profileCheckOk="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " al="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v2}, Lbtools/router/OsmTrack;->formatLongs([J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " nogoChecksums="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lbtools/router/OsmTrack;->formatLongs([J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 238
    :cond_3
    if-eqz v12, :cond_4

    if-nez v16, :cond_7

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v20, v17

    move-object/from16 v17, v18

    .line 248
    .end local v2    # "al":[J
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dlat":I
    .end local v5    # "dlon":I
    .end local v7    # "ep":Lbtools/router/MatchedWaypoint;
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "i":I
    .end local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .end local v11    # "n":I
    .end local v12    # "nogoCheckOk":Z
    .end local v14    # "pchecksum":J
    .end local v16    # "profileCheckOk":Z
    .end local v18    # "t":Lbtools/router/OsmTrack;
    .end local v19    # "targetMatch":Z
    .restart local v17    # "t":Lbtools/router/OsmTrack;
    :goto_7
    return-object v20

    .line 230
    .end local v17    # "t":Lbtools/router/OsmTrack;
    .restart local v2    # "al":[J
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dlat":I
    .restart local v5    # "dlon":I
    .restart local v7    # "ep":Lbtools/router/MatchedWaypoint;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v9    # "i":I
    .restart local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .restart local v11    # "n":I
    .restart local v14    # "pchecksum":J
    .restart local v18    # "t":Lbtools/router/OsmTrack;
    .restart local v19    # "targetMatch":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 231
    .restart local v12    # "nogoCheckOk":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    .restart local v16    # "profileCheckOk":Z
    :cond_7
    move-object/from16 v17, v18

    .line 240
    .end local v2    # "al":[J
    .end local v9    # "i":I
    .end local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .end local v11    # "n":I
    .end local v12    # "nogoCheckOk":Z
    .end local v14    # "pchecksum":J
    .end local v16    # "profileCheckOk":Z
    .end local v18    # "t":Lbtools/router/OsmTrack;
    .restart local v17    # "t":Lbtools/router/OsmTrack;
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dlat":I
    .end local v5    # "dlon":I
    .end local v7    # "ep":Lbtools/router/MatchedWaypoint;
    .end local v8    # "f":Ljava/io/File;
    .end local v19    # "targetMatch":Z
    :cond_9
    move-object/from16 v20, v17

    .line 248
    goto :goto_7

    .line 242
    .restart local v8    # "f":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 244
    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception reading rawTrack: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 227
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v17    # "t":Lbtools/router/OsmTrack;
    .restart local v2    # "al":[J
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dlat":I
    .restart local v5    # "dlon":I
    .restart local v7    # "ep":Lbtools/router/MatchedWaypoint;
    .restart local v9    # "i":I
    .restart local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .restart local v11    # "n":I
    .restart local v14    # "pchecksum":J
    .restart local v18    # "t":Lbtools/router/OsmTrack;
    .restart local v19    # "targetMatch":Z
    :catch_1
    move-exception v20

    goto/16 :goto_4

    .line 242
    .end local v2    # "al":[J
    .end local v9    # "i":I
    .end local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .end local v11    # "n":I
    .end local v14    # "pchecksum":J
    :catch_2
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "t":Lbtools/router/OsmTrack;
    .restart local v17    # "t":Lbtools/router/OsmTrack;
    goto :goto_8

    .line 222
    .end local v17    # "t":Lbtools/router/OsmTrack;
    .restart local v2    # "al":[J
    .restart local v9    # "i":I
    .restart local v10    # "last_pe":Lbtools/router/OsmPathElement;
    .restart local v11    # "n":I
    .restart local v14    # "pchecksum":J
    .restart local v18    # "t":Lbtools/router/OsmTrack;
    :catch_3
    move-exception v20

    goto/16 :goto_3

    .line 217
    :catch_4
    move-exception v20

    goto/16 :goto_2
.end method

.method private startSection(Lbtools/router/OsmPathElement;Lbtools/router/OsmPathElement;)Lbtools/router/MessageData;
    .locals 6
    .param p1, "element"    # Lbtools/router/OsmPathElement;
    .param p2, "root"    # Lbtools/router/OsmPathElement;

    .prologue
    .line 790
    move-object v2, p1

    .line 791
    .local v2, "e":Lbtools/router/OsmPathElement;
    const/4 v0, 0x0

    .local v0, "cnt":I
    move v1, v0

    .line 792
    .end local v0    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    if-eqz v3, :cond_1

    .line 794
    iget-object v3, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v3

    invoke-virtual {p2}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v3

    invoke-virtual {p2}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 796
    iget-object v3, v2, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    .line 804
    :goto_1
    return-object v3

    .line 798
    :cond_0
    iget-object v2, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 799
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    const v3, 0xf4240

    if-ne v1, v3, :cond_2

    .line 801
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ups: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 804
    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .end local v1    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_2
    move v1, v0

    .end local v0    # "cnt":I
    .restart local v1    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public addNode(Lbtools/router/OsmPathElement;)V
    .locals 2
    .param p1, "node"    # Lbtools/router/OsmPathElement;

    .prologue
    .line 63
    iget-object v0, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public addNodes(Lbtools/router/OsmTrack;)V
    .locals 3
    .param p1, "t"    # Lbtools/router/OsmTrack;

    .prologue
    .line 267
    iget-object v1, p1, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmPathElement;

    .line 268
    .local v0, "n":Lbtools/router/OsmPathElement;
    invoke-virtual {p0, v0}, Lbtools/router/OsmTrack;->addNode(Lbtools/router/OsmPathElement;)V

    goto :goto_0

    .line 269
    .end local v0    # "n":Lbtools/router/OsmPathElement;
    :cond_0
    invoke-virtual {p0}, Lbtools/router/OsmTrack;->buildMap()V

    .line 270
    return-void
.end method

.method public appendTrack(Lbtools/router/OsmTrack;)V
    .locals 6
    .param p1, "t"    # Lbtools/router/OsmTrack;

    .prologue
    .line 294
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 295
    .local v2, "ourSize":I
    if-lez v2, :cond_2

    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmPathElement;

    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v3

    .line 296
    .local v3, "t0":F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p1, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 298
    if-gtz v1, :cond_0

    if-nez v2, :cond_1

    .line 300
    :cond_0
    iget-object v4, p1, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmPathElement;

    .line 301
    .local v0, "e":Lbtools/router/OsmPathElement;
    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v0, v4}, Lbtools/router/OsmPathElement;->setTime(F)V

    .line 302
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v0    # "e":Lbtools/router/OsmPathElement;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v1    # "i":I
    .end local v3    # "t0":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 306
    .restart local v1    # "i":I
    .restart local v3    # "t0":F
    :cond_3
    iget-object v4, p1, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    if-eqz v4, :cond_4

    .line 308
    iget-object v4, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    if-nez v4, :cond_5

    .line 310
    iget-object v4, p1, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iput-object v4, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    .line 318
    :cond_4
    :goto_2
    iget v4, p0, Lbtools/router/OsmTrack;->distance:I

    iget v5, p1, Lbtools/router/OsmTrack;->distance:I

    add-int/2addr v4, v5

    iput v4, p0, Lbtools/router/OsmTrack;->distance:I

    .line 319
    iget v4, p0, Lbtools/router/OsmTrack;->ascend:I

    iget v5, p1, Lbtools/router/OsmTrack;->ascend:I

    add-int/2addr v4, v5

    iput v4, p0, Lbtools/router/OsmTrack;->ascend:I

    .line 320
    iget v4, p0, Lbtools/router/OsmTrack;->plainAscend:I

    iget v5, p1, Lbtools/router/OsmTrack;->plainAscend:I

    add-int/2addr v4, v5

    iput v4, p0, Lbtools/router/OsmTrack;->plainAscend:I

    .line 321
    iget v4, p0, Lbtools/router/OsmTrack;->cost:I

    iget v5, p1, Lbtools/router/OsmTrack;->cost:I

    add-int/2addr v4, v5

    iput v4, p0, Lbtools/router/OsmTrack;->cost:I

    .line 322
    iget v4, p0, Lbtools/router/OsmTrack;->energy:I

    iget v5, p1, Lbtools/router/OsmTrack;->energy:I

    add-int/2addr v4, v5

    iput v4, p0, Lbtools/router/OsmTrack;->energy:I

    .line 324
    iget-boolean v4, p0, Lbtools/router/OsmTrack;->showspeed:Z

    iget-boolean v5, p1, Lbtools/router/OsmTrack;->showspeed:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lbtools/router/OsmTrack;->showspeed:Z

    .line 325
    return-void

    .line 314
    :cond_5
    iget-object v4, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v4, v4, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    iget-object v5, p1, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v5, v5, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public buildMap()V
    .locals 7

    .prologue
    .line 96
    new-instance v5, Lbtools/util/CompactLongMap;

    invoke-direct {v5}, Lbtools/util/CompactLongMap;-><init>()V

    iput-object v5, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    .line 97
    iget-object v5, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmPathElement;

    .line 99
    .local v4, "node":Lbtools/router/OsmPathElement;
    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v2

    .line 100
    .local v2, "id":J
    new-instance v1, Lbtools/router/OsmTrack$OsmPathElementHolder;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lbtools/router/OsmTrack$OsmPathElementHolder;-><init>(Lbtools/router/OsmTrack$1;)V

    .line 101
    .local v1, "nh":Lbtools/router/OsmTrack$OsmPathElementHolder;
    iput-object v4, v1, Lbtools/router/OsmTrack$OsmPathElementHolder;->node:Lbtools/router/OsmPathElement;

    .line 102
    iget-object v6, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    invoke-virtual {v6, v2, v3}, Lbtools/util/CompactLongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 103
    .local v0, "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    if-eqz v0, :cond_1

    .line 105
    :goto_1
    iget-object v6, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    if-eqz v6, :cond_0

    .line 107
    iget-object v0, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    goto :goto_1

    .line 109
    :cond_0
    iput-object v1, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v6, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    invoke-virtual {v6, v2, v3, v1}, Lbtools/util/CompactLongMap;->fastPut(JLjava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0    # "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    .end local v1    # "nh":Lbtools/router/OsmTrack$OsmPathElementHolder;
    .end local v2    # "id":J
    .end local v4    # "node":Lbtools/router/OsmPathElement;
    :cond_2
    new-instance v5, Lbtools/util/FrozenLongMap;

    iget-object v6, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    invoke-direct {v5, v6}, Lbtools/util/FrozenLongMap;-><init>(Lbtools/util/CompactLongMap;)V

    iput-object v5, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    .line 117
    return-void
.end method

.method public containsNode(Lbtools/mapaccess/OsmPos;)Z
    .locals 4
    .param p1, "node"    # Lbtools/mapaccess/OsmPos;

    .prologue
    .line 274
    iget-object v0, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    invoke-interface {p1}, Lbtools/mapaccess/OsmPos;->getIdFromPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbtools/util/CompactLongMap;->contains(J)Z

    move-result v0

    return v0
.end method

.method public copyDetours(Lbtools/router/OsmTrack;)V
    .locals 2
    .param p1, "source"    # Lbtools/router/OsmTrack;

    .prologue
    .line 91
    iget-object v0, p1, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    .line 92
    return-void

    .line 91
    :cond_0
    new-instance v0, Lbtools/util/FrozenLongMap;

    iget-object v1, p1, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    invoke-direct {v0, v1}, Lbtools/util/FrozenLongMap;-><init>(Lbtools/util/CompactLongMap;)V

    goto :goto_0
.end method

.method public dumpMessages(Ljava/lang/String;Lbtools/router/RoutingContext;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "rc"    # Lbtools/router/RoutingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 665
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 666
    .local v0, "bw":Ljava/io/BufferedWriter;
    :goto_0
    invoke-virtual {p0, v0, p2}, Lbtools/router/OsmTrack;->writeMessages(Ljava/io/BufferedWriter;Lbtools/router/RoutingContext;)V

    .line 667
    return-void

    .line 665
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public equalsTrack(Lbtools/router/OsmTrack;)Z
    .locals 6
    .param p1, "t"    # Lbtools/router/OsmTrack;

    .prologue
    const/4 v3, 0x0

    .line 726
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p1, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v3

    .line 728
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 730
    iget-object v4, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmPathElement;

    .line 731
    .local v0, "e1":Lbtools/router/OsmPathElement;
    iget-object v4, p1, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmPathElement;

    .line 732
    .local v1, "e2":Lbtools/router/OsmPathElement;
    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v4

    invoke-virtual {v1}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v4

    invoke-virtual {v1}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 735
    .end local v0    # "e1":Lbtools/router/OsmPathElement;
    .end local v1    # "e2":Lbtools/router/OsmPathElement;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public formatAsGeoJson()Ljava/lang/String;
    .locals 14

    .prologue
    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0x2000

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 539
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v9, "{\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v9, "  \"type\": \"FeatureCollection\",\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v9, "  \"features\": [\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v9, "    {\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v9, "      \"type\": \"Feature\",\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v9, "      \"properties\": {\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v9, "        \"creator\": \"BRouter-1.1\",\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v9, "        \"name\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lbtools/router/OsmTrack;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v9, "        \"track-length\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lbtools/router/OsmTrack;->distance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v9, "        \"filtered ascend\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lbtools/router/OsmTrack;->ascend:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v9, "        \"plain-ascend\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lbtools/router/OsmTrack;->plainAscend:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v9, "        \"total-time\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lbtools/router/OsmTrack;->getTotalSeconds()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v9, "        \"total-energy\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lbtools/router/OsmTrack;->energy:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v9, "        \"cost\": \""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lbtools/router/OsmTrack;->cost:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v9, "        \"messages\": [\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v9, "          [\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Longitude\tLatitude\tElevation\tDistance\tCostPerKm\tElevCost\tTurnCost\tNodeCost\tInitialCost\tWayTags\tNodeTags"

    const-string v11, "\t"

    const-string v12, "\", \""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"],\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-direct {p0}, Lbtools/router/OsmTrack;->aggregateMessages()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 557
    .local v2, "m":Ljava/lang/String;
    const-string v10, "          [\""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t"

    const-string v12, "\", \""

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"],\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 559
    .end local v2    # "m":Ljava/lang/String;
    :cond_0
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v9, "        ]\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v9, "      },\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v9, p0, Lbtools/router/OsmTrack;->iternity:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 566
    const-string v9, "      \"iternity\": [\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v9, p0, Lbtools/router/OsmTrack;->iternity:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 569
    .local v5, "s":Ljava/lang/String;
    const-string v10, "        \""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 572
    const-string v9, "        ],\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_2
    const-string v9, "      \"geometry\": {\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v9, "        \"type\": \"LineString\",\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v9, "        \"coordinates\": [\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const/4 v4, 0x0

    .line 579
    .local v4, "nn":Lbtools/router/OsmPathElement;
    iget-object v9, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/OsmPathElement;

    .line 581
    .local v3, "n":Lbtools/router/OsmPathElement;
    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getSElev()S

    move-result v10

    const/16 v11, -0x8000

    if-ne v10, v11, :cond_5

    const-string v7, ""

    .line 582
    .local v7, "sele":Ljava/lang/String;
    :goto_3
    iget-boolean v10, p0, Lbtools/router/OsmTrack;->showspeed:Z

    if-eqz v10, :cond_4

    .line 584
    const/4 v8, 0x0

    .line 585
    .local v8, "speed":I
    if-eqz v4, :cond_3

    .line 587
    invoke-virtual {v3, v4}, Lbtools/router/OsmPathElement;->calcDistance(Lbtools/mapaccess/OsmPos;)I

    move-result v0

    .line 588
    .local v0, "dist":I
    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v10

    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getTime()F

    move-result v11

    sub-float v1, v10, v11

    .line 589
    .local v1, "dt":F
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-eqz v10, :cond_3

    .line 591
    const v10, 0x40666666    # 3.6f

    int-to-float v11, v0

    mul-float/2addr v10, v11

    div-float/2addr v10, v1

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v8, v10

    .line 594
    .end local v0    # "dist":I
    .end local v1    # "dt":F
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 596
    .end local v8    # "speed":I
    :cond_4
    const-string v10, "          ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v11

    invoke-static {v11}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v11

    invoke-static {v11}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 597
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "],\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move-object v4, v3

    .line 599
    goto :goto_2

    .line 581
    .end local v7    # "sele":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lbtools/router/OsmPathElement;->getElev()D

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 600
    .end local v3    # "n":Lbtools/router/OsmPathElement;
    :cond_6
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 602
    const-string v9, "        ]\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v9, "      }\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v9, "    }\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v9, "  ]\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string v9, "}\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public formatAsGpx()Ljava/lang/String;
    .locals 4

    .prologue
    .line 350
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 351
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 352
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p0, v0}, Lbtools/router/OsmTrack;->formatAsGpx(Ljava/io/BufferedWriter;)Ljava/lang/String;

    .line 353
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 354
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 356
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public formatAsGpx(Ljava/io/BufferedWriter;)Ljava/lang/String;
    .locals 14
    .param p1, "sb"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget v6, v7, Lbtools/router/VoiceHintList;->turnInstructionMode:I

    .line 366
    .local v6, "turnInstructionMode":I
    :goto_0
    const-string v7, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 367
    iget-object v7, p0, Lbtools/router/OsmTrack;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 369
    iget-object v7, p0, Lbtools/router/OsmTrack;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    .local v3, "message":Ljava/lang/String;
    iget-object v7, p0, Lbtools/router/OsmTrack;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(alt-index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    :cond_0
    if-eqz v3, :cond_1

    .line 373
    const-string v7, "<!-- "

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, " -->\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 367
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 364
    .end local v1    # "i":I
    .end local v3    # "message":Ljava/lang/String;
    .end local v6    # "turnInstructionMode":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 376
    .restart local v1    # "i":I
    .restart local v6    # "turnInstructionMode":I
    :cond_3
    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 378
    const-string v7, "<!-- $transport-mode$"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    iget-object v8, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    invoke-virtual {v8}, Lbtools/router/VoiceHintList;->getTransportMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "$ -->\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 379
    const-string v7, "<!--          cmd    idx        lon        lat d2next  geometry -->\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 380
    const-string v7, "<!-- $turn-instruction-start$\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 381
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v7, v7, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/VoiceHint;

    .line 383
    .local v0, "hint":Lbtools/router/VoiceHint;
    const-string v8, "     $turn$%6s;%6d;%10s;%10s;%6d;%s$\n"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getCommandString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v0, Lbtools/router/VoiceHint;->indexInTrack:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v0, Lbtools/router/VoiceHint;->ilon:I

    .line 384
    invoke-static {v11}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v0, Lbtools/router/VoiceHint;->ilat:I

    invoke-static {v11}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-wide v12, v0, Lbtools/router/VoiceHint;->distanceToNext:D

    double-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->formatGeometry()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 383
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_2

    .line 386
    .end local v0    # "hint":Lbtools/router/VoiceHint;
    :cond_4
    const-string v7, "    $turn-instruction-end$ -->\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 388
    :cond_5
    const-string v7, "<gpx \n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 389
    const-string v7, " xmlns=\"http://www.topografix.com/GPX/1/1\" \n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 390
    const-string v7, " xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 391
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 393
    const-string v7, " xmlns:locus=\"http://www.locusmap.eu\" \n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 395
    :cond_6
    const-string v7, " xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\" \n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 397
    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 399
    const-string v7, " creator=\"OsmAndRouter\" version=\"1.1\">\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 406
    :goto_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 408
    const-string v7, " <rte>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 409
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v7, v7, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/VoiceHint;

    .line 411
    .restart local v0    # "hint":Lbtools/router/VoiceHint;
    const-string v8, "  <rtept lat=\""

    invoke-virtual {p1, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    iget v9, v0, Lbtools/router/VoiceHint;->ilat:I

    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "\" lon=\""

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    iget v9, v0, Lbtools/router/VoiceHint;->ilon:I

    .line 412
    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "\">\n"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "   <desc>"

    .line 413
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getMessageString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</desc>\n   <extensions>\n   <turn>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    .line 414
    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getCommandString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</turn>\n   <turn-angle>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lbtools/router/VoiceHint;->angle:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</turn-angle>\n   <offset>"

    .line 415
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lbtools/router/VoiceHint;->indexInTrack:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</offset>\n  </extensions>\n </rtept>\n"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_4

    .line 403
    .end local v0    # "hint":Lbtools/router/VoiceHint;
    :cond_7
    const-string v7, " creator=\"BRouter-1.4.9\" version=\"1.1\">\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_3

    .line 417
    :cond_8
    const-string v7, "</rte>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 420
    :cond_9
    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 422
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v7, v7, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/VoiceHint;

    .line 424
    .restart local v0    # "hint":Lbtools/router/VoiceHint;
    const-string v7, " <wpt lon=\""

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    iget v9, v0, Lbtools/router/VoiceHint;->ilon:I

    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "\" lat=\""

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    iget v9, v0, Lbtools/router/VoiceHint;->ilat:I

    .line 425
    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "\">"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    iget-short v7, v0, Lbtools/router/VoiceHint;->selev:S

    const/16 v10, -0x8000

    if-ne v7, v10, :cond_a

    const-string v7, ""

    .line 426
    :goto_6
    invoke-virtual {v9, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "<name>"

    .line 427
    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getMessageString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "</name>"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "<extensions><locus:rteDistance>"

    .line 428
    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lbtools/router/VoiceHint;->distanceToNext:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "</locus:rteDistance>"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "<locus:rtePointAction>"

    .line 429
    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getLocusAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "</locus:rtePointAction></extensions>"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v9, "</wpt>\n"

    .line 430
    invoke-virtual {v7, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_5

    .line 425
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<ele>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v10, v0, Lbtools/router/VoiceHint;->selev:S

    int-to-double v10, v10

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "</ele>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 433
    .end local v0    # "hint":Lbtools/router/VoiceHint;
    :cond_b
    const/4 v7, 0x5

    if-ne v6, v7, :cond_c

    .line 435
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v7, v7, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/VoiceHint;

    .line 437
    .restart local v0    # "hint":Lbtools/router/VoiceHint;
    const-string v8, " <wpt lon=\""

    invoke-virtual {p1, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    iget v9, v0, Lbtools/router/VoiceHint;->ilon:I

    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "\" lat=\""

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    iget v9, v0, Lbtools/router/VoiceHint;->ilat:I

    .line 438
    invoke-static {v9}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "<name>"

    .line 439
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getMessageString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</name>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "<sym>"

    .line 440
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getSymbolString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</sym>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "<type>"

    .line 441
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getSymbolString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</type>"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v9, "</wpt>\n"

    .line 442
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_7

    .line 445
    .end local v0    # "hint":Lbtools/router/VoiceHint;
    :cond_c
    const-string v7, " <trk>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 446
    const-string v7, "  <name>"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    iget-object v8, p0, Lbtools/router/OsmTrack;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "</name>\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 447
    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 449
    const-string v7, "  <type>"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    iget-object v8, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    invoke-virtual {v8}, Lbtools/router/VoiceHintList;->getTransportMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "</type>\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 452
    :cond_d
    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 454
    const-string v7, "  <extensions><locus:rteComputeType>"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    invoke-virtual {v9}, Lbtools/router/VoiceHintList;->getLocusRouteType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "</locus:rteComputeType></extensions>\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 455
    const-string v7, "  <extensions><locus:rteSimpleRoundabouts>1</locus:rteSimpleRoundabouts></extensions>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 458
    :cond_e
    const-string v7, "  <trkseg>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 460
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_8
    iget-object v7, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 462
    iget-object v7, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtools/router/OsmPathElement;

    .line 463
    .local v4, "n":Lbtools/router/OsmPathElement;
    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getSElev()S

    move-result v7

    const/16 v8, -0x8000

    if-ne v7, v8, :cond_10

    const-string v5, ""

    .line 464
    .local v5, "sele":Ljava/lang/String;
    :goto_9
    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 466
    iget-object v7, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v7, v7, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/VoiceHint;

    .line 468
    .restart local v0    # "hint":Lbtools/router/VoiceHint;
    iget v8, v0, Lbtools/router/VoiceHint;->indexInTrack:I

    if-ne v8, v2, :cond_f

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<sym>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lbtools/router/VoiceHint;->getCommandString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</sym>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 463
    .end local v0    # "hint":Lbtools/router/VoiceHint;
    .end local v5    # "sele":Ljava/lang/String;
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<ele>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getElev()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</ele>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 474
    .restart local v5    # "sele":Ljava/lang/String;
    :cond_11
    const-string v7, "   <trkpt lon=\""

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v8

    invoke-static {v8}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "\" lat=\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    .line 475
    invoke-virtual {v4}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v8

    invoke-static {v8}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v7

    const-string v8, "</trkpt>\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 478
    .end local v4    # "n":Lbtools/router/OsmPathElement;
    .end local v5    # "sele":Ljava/lang/String;
    :cond_12
    const-string v7, "  </trkseg>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 479
    const-string v7, " </trk>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 480
    const-string v7, "</gpx>\n"

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 482
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public formatAsKml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 497
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v2, "<kml xmlns=\"http://earth.google.com/kml/2.0\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v2, "  <Document>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v2, "    <name>KML Samples</name>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v2, "    <open>1</open>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, "    <distance>3.497064</distance>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v2, "    <traveltime>872</traveltime>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v2, "    <description>To enable simple instructions add: \'instructions=1\' as parameter to the URL</description>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v2, "    <Folder>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v2, "      <name>Paths</name>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v2, "      <visibility>0</visibility>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, "      <description>Examples of paths.</description>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, "      <Placemark>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, "        <name>Tessellated</name>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v2, "        <visibility>0</visibility>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, "        <description><![CDATA[If the <tessellate> tag has a value of 1, the line will contour to the underlying terrain]]></description>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v2, "        <LineString>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v2, "          <tessellate>1</tessellate>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v2, "         <coordinates> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v2, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmPathElement;

    .line 520
    .local v0, "n":Lbtools/router/OsmPathElement;
    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v3

    invoke-static {v3}, Lbtools/router/OsmTrack;->formatILon(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v4

    invoke-static {v4}, Lbtools/router/OsmTrack;->formatILat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 523
    .end local v0    # "n":Lbtools/router/OsmPathElement;
    :cond_0
    const-string v2, "          </coordinates>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v2, "        </LineString>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v2, "      </Placemark>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, "    </Folder>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v2, "  </Document>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, "</kml>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFormattedEnergy()Ljava/lang/String;
    .locals 6

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lbtools/router/OsmTrack;->energy:I

    int-to-double v2, v1

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lbtools/router/OsmTrack;->format1(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kwh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbtools/router/OsmTrack;->getTotalSeconds()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lbtools/router/OsmTrack;->format1(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink(JJ)Lbtools/router/OsmPathElement;
    .locals 5
    .param p1, "n1"    # J
    .param p3, "n2"    # J

    .prologue
    .line 279
    iget-object v2, p0, Lbtools/router/OsmTrack;->nodesMap:Lbtools/util/CompactLongMap;

    invoke-virtual {v2, p3, p4}, Lbtools/util/CompactLongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 280
    .local v1, "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    :goto_0
    if-eqz v1, :cond_1

    .line 282
    iget-object v2, v1, Lbtools/router/OsmTrack$OsmPathElementHolder;->node:Lbtools/router/OsmPathElement;

    iget-object v0, v2, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    .line 283
    .local v0, "e1":Lbtools/router/OsmPathElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 285
    iget-object v2, v1, Lbtools/router/OsmTrack$OsmPathElementHolder;->node:Lbtools/router/OsmPathElement;

    .line 289
    .end local v0    # "e1":Lbtools/router/OsmPathElement;
    :goto_1
    return-object v2

    .line 287
    .restart local v0    # "e1":Lbtools/router/OsmPathElement;
    :cond_0
    iget-object v1, v1, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 288
    goto :goto_0

    .line 289
    .end local v0    # "e1":Lbtools/router/OsmPathElement;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public processVoiceHints(Lbtools/router/RoutingContext;)V
    .locals 14
    .param p1, "rc"    # Lbtools/router/RoutingContext;

    .prologue
    .line 740
    new-instance v10, Lbtools/router/VoiceHintList;

    invoke-direct {v10}, Lbtools/router/VoiceHintList;-><init>()V

    iput-object v10, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    .line 741
    iget-object v10, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-boolean v11, p1, Lbtools/router/RoutingContext;->carMode:Z

    iget-boolean v12, p1, Lbtools/router/RoutingContext;->bikeMode:Z

    invoke-virtual {v10, v11, v12}, Lbtools/router/VoiceHintList;->setTransportMode(ZZ)V

    .line 742
    iget-object v10, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget v11, p1, Lbtools/router/RoutingContext;->turnInstructionMode:I

    iput v11, v10, Lbtools/router/VoiceHintList;->turnInstructionMode:I

    .line 744
    iget-object v10, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    if-nez v10, :cond_1

    .line 785
    :cond_0
    return-void

    .line 748
    :cond_1
    iget-object v10, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .line 749
    .local v7, "nodeNr":I
    iget-object v10, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbtools/router/OsmPathElement;

    .line 750
    .local v6, "node":Lbtools/router/OsmPathElement;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v5, "inputs":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    :goto_0
    if-eqz v6, :cond_4

    .line 753
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    if-eqz v10, :cond_3

    .line 755
    new-instance v4, Lbtools/router/VoiceHint;

    invoke-direct {v4}, Lbtools/router/VoiceHint;-><init>()V

    .line 756
    .local v4, "input":Lbtools/router/VoiceHint;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v10}, Lbtools/router/OsmPathElement;->getILat()I

    move-result v10

    iput v10, v4, Lbtools/router/VoiceHint;->ilat:I

    .line 758
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v10}, Lbtools/router/OsmPathElement;->getILon()I

    move-result v10

    iput v10, v4, Lbtools/router/VoiceHint;->ilon:I

    .line 759
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v10}, Lbtools/router/OsmPathElement;->getSElev()S

    move-result v10

    iput-short v10, v4, Lbtools/router/VoiceHint;->selev:S

    .line 760
    add-int/lit8 v7, v7, -0x1

    iput v7, v4, Lbtools/router/VoiceHint;->indexInTrack:I

    .line 761
    iget-object v10, v6, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    iput-object v10, v4, Lbtools/router/VoiceHint;->goodWay:Lbtools/router/MessageData;

    .line 762
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    iget-object v10, v10, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    if-nez v10, :cond_2

    iget-object v10, v6, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    :goto_1
    iput-object v10, v4, Lbtools/router/VoiceHint;->oldWay:Lbtools/router/MessageData;

    .line 764
    iget-object v10, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    iget-object v11, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-virtual {v11}, Lbtools/router/OsmPathElement;->getIdFromPos()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lbtools/util/CompactLongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 765
    .local v0, "detours":Lbtools/router/OsmTrack$OsmPathElementHolder;
    if-eqz v0, :cond_3

    .line 767
    move-object v2, v0

    .line 768
    .local v2, "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    :goto_2
    if-eqz v2, :cond_3

    .line 770
    iget-object v1, v2, Lbtools/router/OsmTrack$OsmPathElementHolder;->node:Lbtools/router/OsmPathElement;

    .line 771
    .local v1, "e":Lbtools/router/OsmPathElement;
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    invoke-direct {p0, v1, v10}, Lbtools/router/OsmTrack;->startSection(Lbtools/router/OsmPathElement;Lbtools/router/OsmPathElement;)Lbtools/router/MessageData;

    move-result-object v10

    invoke-virtual {v4, v10}, Lbtools/router/VoiceHint;->addBadWay(Lbtools/router/MessageData;)V

    .line 772
    iget-object v2, v2, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 773
    goto :goto_2

    .line 762
    .end local v0    # "detours":Lbtools/router/OsmTrack$OsmPathElementHolder;
    .end local v1    # "e":Lbtools/router/OsmPathElement;
    .end local v2    # "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    :cond_2
    iget-object v10, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    iget-object v10, v10, Lbtools/router/OsmPathElement;->message:Lbtools/router/MessageData;

    goto :goto_1

    .line 776
    .end local v4    # "input":Lbtools/router/VoiceHint;
    :cond_3
    iget-object v6, v6, Lbtools/router/OsmPathElement;->origin:Lbtools/router/OsmPathElement;

    goto :goto_0

    .line 779
    :cond_4
    new-instance v9, Lbtools/router/VoiceHintProcessor;

    iget-wide v10, p1, Lbtools/router/RoutingContext;->turnInstructionCatchingRange:D

    iget-boolean v12, p1, Lbtools/router/RoutingContext;->turnInstructionRoundabouts:Z

    invoke-direct {v9, v10, v11, v12}, Lbtools/router/VoiceHintProcessor;-><init>(DZ)V

    .line 780
    .local v9, "vproc":Lbtools/router/VoiceHintProcessor;
    invoke-virtual {v9, v5}, Lbtools/router/VoiceHintProcessor;->process(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 781
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Lbtools/router/VoiceHint;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbtools/router/VoiceHint;

    .line 783
    .local v3, "hint":Lbtools/router/VoiceHint;
    iget-object v11, p0, Lbtools/router/OsmTrack;->voiceHints:Lbtools/router/VoiceHintList;

    iget-object v11, v11, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public readGpx(Ljava/lang/String;)V
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 722
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 702
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 703
    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 721
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 706
    :cond_2
    const-string v9, "<trkpt lon=\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 707
    .local v2, "idx0":I
    if-ltz v2, :cond_1

    .line 709
    add-int/lit8 v2, v2, 0xc

    .line 710
    const/16 v9, 0x22

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 711
    .local v3, "idx1":I
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    add-double/2addr v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v7, v10

    .line 712
    .local v7, "ilon":I
    const-string v9, " lat=\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 713
    .local v4, "idx2":I
    if-ltz v4, :cond_1

    .line 715
    add-int/lit8 v4, v4, 0x6

    .line 716
    const/16 v9, 0x22

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 717
    .local v5, "idx3":I
    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4056800000000000L    # 90.0

    add-double/2addr v10, v12

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v6, v10

    .line 718
    .local v6, "ilat":I
    iget-object v9, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v6, v10, v11, v12}, Lbtools/router/OsmPathElement;->create(IISLbtools/router/OsmPathElement;Z)Lbtools/router/OsmPathElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public registerDetourForId(JLbtools/router/OsmPathElement;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "detour"    # Lbtools/router/OsmPathElement;

    .prologue
    .line 68
    iget-object v2, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Lbtools/util/CompactLongMap;

    invoke-direct {v2}, Lbtools/util/CompactLongMap;-><init>()V

    iput-object v2, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    .line 72
    :cond_0
    new-instance v1, Lbtools/router/OsmTrack$OsmPathElementHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbtools/router/OsmTrack$OsmPathElementHolder;-><init>(Lbtools/router/OsmTrack$1;)V

    .line 73
    .local v1, "nh":Lbtools/router/OsmTrack$OsmPathElementHolder;
    iput-object p3, v1, Lbtools/router/OsmTrack$OsmPathElementHolder;->node:Lbtools/router/OsmPathElement;

    .line 74
    iget-object v2, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    invoke-virtual {v2, p1, p2}, Lbtools/util/CompactLongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 75
    .local v0, "h":Lbtools/router/OsmTrack$OsmPathElementHolder;
    if-eqz v0, :cond_2

    .line 77
    :goto_0
    iget-object v2, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    if-eqz v2, :cond_1

    .line 79
    iget-object v0, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    goto :goto_0

    .line 81
    :cond_1
    iput-object v1, v0, Lbtools/router/OsmTrack$OsmPathElementHolder;->nextHolder:Lbtools/router/OsmTrack$OsmPathElementHolder;

    .line 87
    :goto_1
    return-void

    .line 85
    :cond_2
    iget-object v2, p0, Lbtools/router/OsmTrack;->detourMap:Lbtools/util/CompactLongMap;

    invoke-virtual {v2, p1, p2, v1}, Lbtools/util/CompactLongMap;->fastPut(JLjava/lang/Object;)V

    goto :goto_1
.end method

.method public writeBinary(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v2, p0, Lbtools/router/OsmTrack;->endPoint:Lbtools/router/MatchedWaypoint;

    invoke-virtual {v2, v0}, Lbtools/router/MatchedWaypoint;->writeToStream(Ljava/io/DataOutput;)V

    .line 160
    iget-object v2, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 161
    iget-object v2, p0, Lbtools/router/OsmTrack;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/OsmPathElement;

    .line 163
    .local v1, "node":Lbtools/router/OsmPathElement;
    invoke-virtual {v1, v0}, Lbtools/router/OsmPathElement;->writeToStream(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 165
    .end local v1    # "node":Lbtools/router/OsmPathElement;
    :cond_0
    iget-object v2, p0, Lbtools/router/OsmTrack;->nogoChecksums:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 166
    iget-object v2, p0, Lbtools/router/OsmTrack;->nogoChecksums:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 167
    iget-object v2, p0, Lbtools/router/OsmTrack;->nogoChecksums:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 168
    iget-boolean v2, p0, Lbtools/router/OsmTrack;->isDirty:Z

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 169
    iget-wide v2, p0, Lbtools/router/OsmTrack;->profileTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 170
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 171
    return-void
.end method

.method public writeGpx(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 342
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p0, v0}, Lbtools/router/OsmTrack;->formatAsGpx(Ljava/io/BufferedWriter;)Ljava/lang/String;

    .line 343
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 344
    return-void
.end method

.method public writeKml(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 489
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lbtools/router/OsmTrack;->formatAsKml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 491
    return-void
.end method

.method public writeMessages(Ljava/io/BufferedWriter;Lbtools/router/RoutingContext;)V
    .locals 3
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "rc"    # Lbtools/router/RoutingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 671
    const-string v1, "Longitude\tLatitude\tElevation\tDistance\tCostPerKm\tElevCost\tTurnCost\tNodeCost\tInitialCost\tWayTags\tNodeTags"

    invoke-direct {p0, p1, v1}, Lbtools/router/OsmTrack;->dumpLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lbtools/router/OsmTrack;->aggregateMessages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    .local v0, "m":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lbtools/router/OsmTrack;->dumpLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    .end local v0    # "m":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 678
    :cond_1
    return-void
.end method
