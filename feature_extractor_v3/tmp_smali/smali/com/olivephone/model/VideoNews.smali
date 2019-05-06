.class public Lcom/olivephone/model/VideoNews;
.super Ljava/lang/Object;
.source "VideoNews.java"


# instance fields
.field private author:Ljava/lang/String;

.field private bigTitle:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private newsDesc:Ljava/lang/String;

.field private newsUrl:Ljava/lang/String;

.field private newsUuid:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private playTime:Ljava/lang/String;

.field private pubTime:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->newsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->newsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->newsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->playTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/olivephone/model/VideoNews;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->author:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "bigTitle"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->bigTitle:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->img:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setNewsDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsDesc"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->newsDesc:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->newsUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setNewsUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsUuid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->newsUuid:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->origin:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "playTime"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->playTime:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pubTime"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->pubTime:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/olivephone/model/VideoNews;->type:Ljava/lang/String;

    .line 37
    return-void
.end method
