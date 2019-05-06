.class public Lcom/olivephone/model/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private burl:Ljava/lang/String;

.field private picDesc:Ljava/lang/String;

.field private picDrawable:Landroid/graphics/drawable/Drawable;

.field private surl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/olivephone/model/Image;->burl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/olivephone/model/Image;->picDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPicDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/olivephone/model/Image;->picDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/olivephone/model/Image;->surl:Ljava/lang/String;

    return-object v0
.end method

.method public setBurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "burl"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/olivephone/model/Image;->burl:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPicDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "picDesc"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/olivephone/model/Image;->picDesc:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPicDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "picDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/olivephone/model/Image;->picDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "surl"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/olivephone/model/Image;->surl:Ljava/lang/String;

    .line 17
    return-void
.end method
