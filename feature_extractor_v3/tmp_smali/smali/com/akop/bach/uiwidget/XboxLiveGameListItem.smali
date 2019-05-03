.class public Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
.super Landroid/widget/RelativeLayout;
.source "XboxLiveGameListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;
    }
.end annotation


# static fields
.field private static final ICON_PAD:F = 10.0f


# instance fields
.field public mBeaconSet:Z

.field private mCachedViewPositions:Z

.field public mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

.field private mDownEvent:Z

.field private mIconLeft:I

.field public mItemId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    .line 65
    return-void
.end method


# virtual methods
.method public bindViewInit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mCachedViewPositions:Z

    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "handled":Z
    const v5, 0x7f0b00e4

    invoke-virtual {p0, v5}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "star":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 82
    .local v4, "touchX":I
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mCachedViewPositions:Z

    if-nez v5, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .local v2, "paddingScale":F
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v2

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v1, v6

    .line 86
    .local v1, "iconPadding":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mIconLeft:I

    .line 87
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mCachedViewPositions:Z

    .line 90
    .end local v1    # "iconPadding":I
    .end local v2    # "paddingScale":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 115
    .end local v4    # "touchX":I
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->postInvalidate()V

    .line 120
    :goto_1
    return v0

    .line 93
    .restart local v4    # "touchX":I
    :pswitch_1
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mDownEvent:Z

    .line 94
    iget v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mIconLeft:I

    if-le v4, v5, :cond_1

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mDownEvent:Z

    goto :goto_0

    .line 103
    :pswitch_3
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mDownEvent:Z

    if-eqz v5, :cond_1

    .line 105
    iget v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mIconLeft:I

    if-le v4, v5, :cond_1

    iget-object v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    if-eqz v5, :cond_1

    .line 107
    iget-object v5, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    iget-wide v6, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mItemId:J

    iget-boolean v8, p0, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mBeaconSet:Z

    invoke-interface {v5, v6, v7, v8}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;->beaconClicked(JZ)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "touchX":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
