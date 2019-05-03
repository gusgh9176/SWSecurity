.class public Lcom/akop/bach/ImageCache$OnImageReadyListener$ViewBitmapContainer;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/ImageCache$OnImageReadyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewBitmapContainer"
.end annotation


# instance fields
.field public BitmapToSet:Landroid/graphics/Bitmap;

.field public Control:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
