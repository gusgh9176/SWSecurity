.class public Lbtools/routingapp/CoordinateReaderNone;
.super Lbtools/routingapp/CoordinateReader;
.source "CoordinateReaderNone.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    invoke-direct {p0, v0}, Lbtools/routingapp/CoordinateReader;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "none"

    iput-object v0, p0, Lbtools/routingapp/CoordinateReaderNone;->rootdir:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTurnInstructionMode()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public readPointmap()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method
