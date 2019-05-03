.class public Lcom/akop/bach/uiwidget/CoverFlow;
.super Landroid/widget/Gallery;
.source "CoverFlow.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCoverflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, -0x78

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    .line 38
    iput v1, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    .line 45
    invoke-virtual {p0, v1}, Lcom/akop/bach/uiwidget/CoverFlow;->setMaxZoom(I)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    .line 38
    const/16 v0, -0x78

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    .line 38
    const/16 v0, -0x78

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/akop/bach/uiwidget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 59
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/CoverFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/CoverFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/CoverFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/CoverFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;
    .param p3, "rotationAngle"    # I

    .prologue
    .line 131
    iget-object v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 133
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 134
    .local v1, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .local v0, "imageHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .local v2, "imageWidth":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 138
    .local v3, "rotation":I
    iget-object v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x430c0000    # 140.0f

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 140
    iget v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    if-ge v3, v5, :cond_0

    .line 142
    iget v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    int-to-double v6, v5

    int-to-double v8, v3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 143
    .local v4, "zoomAmount":F
    iget-object v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 147
    .end local v4    # "zoomAmount":F
    :cond_0
    iget-object v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 149
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 150
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 152
    iget-object v5, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 153
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/akop/bach/uiwidget/CoverFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 95
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 96
    .local v1, "childWidth":I
    const/4 v2, 0x0

    .line 98
    .local v2, "rotationAngle":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 99
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v3}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 101
    iget v3, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCoverflowCenter:I

    if-ne v0, v3, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/akop/bach/uiwidget/CoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 119
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 107
    :cond_0
    iget v3, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCoverflowCenter:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 110
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    if-le v3, v4, :cond_1

    .line 112
    if-gez v2, :cond_2

    iget v3, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    neg-int v2, v3

    .line 116
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/akop/bach/uiwidget/CoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    goto :goto_0

    .line 112
    :cond_2
    iget v2, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    goto :goto_1
.end method

.method public getMaxRotationAngle()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/akop/bach/uiwidget/CoverFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mCoverflowCenter:I

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 126
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .param p1, "maxRotationAngle"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxRotationAngle:I

    .line 69
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .param p1, "maxZoom"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/akop/bach/uiwidget/CoverFlow;->mMaxZoom:I

    .line 79
    return-void
.end method
