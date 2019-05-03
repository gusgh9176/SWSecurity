.class public final Lcom/akop/bach/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NxeCoverView:[I

.field public static final NxeCoverView_cardHeightFraction:I = 0x1

.field public static final NxeCoverView_cardWidthFraction:I = 0x0

.field public static final NxeCoverView_marginWidthFraction:I = 0x2

.field public static final NxeCoverView_selectedCardFraction:I = 0x3

.field public static final ScreenshotGallery:[I

.field public static final ScreenshotGallery_android_galleryItemBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1181
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/R$styleable;->NxeCoverView:[I

    .line 1254
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101004c

    aput v2, v0, v1

    sput-object v0, Lcom/akop/bach/R$styleable;->ScreenshotGallery:[I

    return-void

    .line 1181
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
