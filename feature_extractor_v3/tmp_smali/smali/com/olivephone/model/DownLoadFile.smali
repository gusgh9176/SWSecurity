.class public Lcom/olivephone/model/DownLoadFile;
.super Ljava/lang/Object;
.source "DownLoadFile.java"


# instance fields
.field private dla:Lcom/olivephone/cu/DownLoadActivity;

.field private isAlive:Z

.field private isDelete:Z

.field private isPause:Z

.field private name:Ljava/lang/String;

.field private size:I

.field private tempSize:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    .line 14
    iput-boolean v1, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    .line 15
    iput-boolean v1, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getDla()Lcom/olivephone/cu/DownLoadActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->dla:Lcom/olivephone/cu/DownLoadActivity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/olivephone/model/DownLoadFile;->size:I

    return v0
.end method

.method public getTempSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/olivephone/model/DownLoadFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    return v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    return v0
.end method

.method public setAlive(Z)V
    .locals 0
    .param p1, "isAlive"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isAlive:Z

    .line 56
    return-void
.end method

.method public setDelete(Z)V
    .locals 0
    .param p1, "isDelete"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isDelete:Z

    .line 68
    return-void
.end method

.method public setDla(Lcom/olivephone/cu/DownLoadActivity;)V
    .locals 0
    .param p1, "dla"    # Lcom/olivephone/cu/DownLoadActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->dla:Lcom/olivephone/cu/DownLoadActivity;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "isPause"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/olivephone/model/DownLoadFile;->isPause:Z

    .line 62
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/olivephone/model/DownLoadFile;->size:I

    .line 38
    return-void
.end method

.method public setTempSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempSize"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->tempSize:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->thread:Ljava/lang/Thread;

    .line 44
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/olivephone/model/DownLoadFile;->url:Ljava/lang/String;

    .line 28
    return-void
.end method
