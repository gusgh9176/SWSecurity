.class public Lcom/olivephone/util/ImageAndText;
.super Ljava/lang/Object;
.source "ImageAndText.java"


# instance fields
.field private bigTitle:Ljava/lang/String;

.field private drawabe:Landroid/graphics/drawable/Drawable;

.field private imgUrl:Ljava/lang/String;

.field private newsDesc:Ljava/lang/String;

.field private pubTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pubTime"    # Ljava/lang/String;
    .param p2, "bigTitle"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;
    .param p4, "newsDesc"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/olivephone/util/ImageAndText;->imgUrl:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/olivephone/util/ImageAndText;->bigTitle:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->pubTime:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/olivephone/util/ImageAndText;->newsDesc:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getBigTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/olivephone/util/ImageAndText;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawabe()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/olivephone/util/ImageAndText;->drawabe:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/olivephone/util/ImageAndText;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/olivephone/util/ImageAndText;->newsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/olivephone/util/ImageAndText;->pubTime:Ljava/lang/String;

    return-object v0
.end method

.method public setBigTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "bigTitle"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->bigTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setDrawabe(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawabe"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->drawabe:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->imgUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNewsDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsDesc"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->newsDesc:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pubTime"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/olivephone/util/ImageAndText;->pubTime:Ljava/lang/String;

    .line 29
    return-void
.end method
