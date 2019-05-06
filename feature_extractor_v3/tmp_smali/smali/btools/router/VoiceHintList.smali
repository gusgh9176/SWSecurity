.class public Lbtools/router/VoiceHintList;
.super Ljava/lang/Object;
.source "VoiceHintList.java"


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbtools/router/VoiceHint;",
            ">;"
        }
    .end annotation
.end field

.field private transportMode:Ljava/lang/String;

.field turnInstructionMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtools/router/VoiceHintList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLocusRouteType()I
    .locals 2

    .prologue
    .line 30
    const-string v0, "car"

    iget-object v1, p0, Lbtools/router/VoiceHintList;->transportMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 34
    :cond_0
    const-string v0, "bike"

    iget-object v1, p0, Lbtools/router/VoiceHintList;->transportMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x5

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getTransportMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbtools/router/VoiceHintList;->transportMode:Ljava/lang/String;

    return-object v0
.end method

.method public setTransportMode(ZZ)V
    .locals 1
    .param p1, "isCar"    # Z
    .param p2, "isBike"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_0

    const-string v0, "car"

    :goto_0
    iput-object v0, p0, Lbtools/router/VoiceHintList;->transportMode:Ljava/lang/String;

    .line 21
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "bike"

    goto :goto_0

    :cond_1
    const-string v0, "foot"

    goto :goto_0
.end method
