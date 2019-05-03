.class Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
.super Ljava/lang/Object;
.source "XboxLiveGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/widget/XboxLiveGamerstrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskParam"
.end annotation


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public imageUrl:Ljava/lang/String;

.field public resId:I

.field public views:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/akop/bach/widget/XboxLiveGamerstrip$1;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;-><init>()V

    return-void
.end method
