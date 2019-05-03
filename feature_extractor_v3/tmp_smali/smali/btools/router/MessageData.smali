.class final Lbtools/router/MessageData;
.super Ljava/lang/Object;
.source "MessageData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field classifiermask:I

.field costfactor:F

.field ele:S

.field energy:F

.field lat:I

.field linkdist:I

.field linkelevationcost:I

.field linkinitcost:I

.field linknodecost:I

.field linkturncost:I

.field lon:I

.field nodeKeyValues:Ljava/lang/String;

.field priorityclassifier:I

.field time:F

.field turnangle:F

.field wayKeyValues:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lbtools/router/MessageData;->linkdist:I

    .line 13
    iput v0, p0, Lbtools/router/MessageData;->linkelevationcost:I

    .line 14
    iput v0, p0, Lbtools/router/MessageData;->linkturncost:I

    .line 15
    iput v0, p0, Lbtools/router/MessageData;->linknodecost:I

    .line 16
    iput v0, p0, Lbtools/router/MessageData;->linkinitcost:I

    return-void
.end method


# virtual methods
.method add(Lbtools/router/MessageData;)V
    .locals 2
    .param p1, "d"    # Lbtools/router/MessageData;

    .prologue
    .line 55
    iget v0, p0, Lbtools/router/MessageData;->linkdist:I

    iget v1, p1, Lbtools/router/MessageData;->linkdist:I

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/router/MessageData;->linkdist:I

    .line 56
    iget v0, p0, Lbtools/router/MessageData;->linkelevationcost:I

    iget v1, p1, Lbtools/router/MessageData;->linkelevationcost:I

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/router/MessageData;->linkelevationcost:I

    .line 57
    iget v0, p0, Lbtools/router/MessageData;->linkturncost:I

    iget v1, p1, Lbtools/router/MessageData;->linkturncost:I

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/router/MessageData;->linkturncost:I

    .line 58
    iget v0, p0, Lbtools/router/MessageData;->linknodecost:I

    iget v1, p1, Lbtools/router/MessageData;->linknodecost:I

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/router/MessageData;->linknodecost:I

    .line 59
    iget v0, p0, Lbtools/router/MessageData;->linkinitcost:I

    iget v1, p1, Lbtools/router/MessageData;->linkinitcost:I

    add-int/2addr v0, v1

    iput v0, p0, Lbtools/router/MessageData;->linkinitcost:I

    .line 60
    return-void
.end method

.method copy()Lbtools/router/MessageData;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtools/router/MessageData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPrio()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lbtools/router/MessageData;->priorityclassifier:I

    return v0
.end method

.method public isBadOneway()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lbtools/router/MessageData;->classifiermask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoodForCars()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lbtools/router/MessageData;->classifiermask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoodOneway()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lbtools/router/MessageData;->classifiermask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinktType()Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lbtools/router/MessageData;->classifiermask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoundabout()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lbtools/router/MessageData;->classifiermask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    .line 39
    :cond_0
    iget v1, p0, Lbtools/router/MessageData;->costfactor:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 40
    .local v0, "iCost":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lbtools/router/MessageData;->lon:I

    const v3, 0xaba9500

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->lat:I

    const v3, 0x55d4a80

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lbtools/router/MessageData;->ele:S

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->linkdist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->linkelevationcost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->linkturncost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->linknodecost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbtools/router/MessageData;->linkinitcost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbtools/router/MessageData;->wayKeyValues:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lbtools/router/MessageData;->nodeKeyValues:Ljava/lang/String;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/MessageData;->linkdist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/MessageData;->priorityclassifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " turn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtools/router/MessageData;->turnangle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
