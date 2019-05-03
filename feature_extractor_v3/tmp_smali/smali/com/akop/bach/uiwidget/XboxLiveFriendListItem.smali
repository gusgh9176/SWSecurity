.class public Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
.super Landroid/widget/RelativeLayout;
.source "XboxLiveFriendListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;
    }
.end annotation


# static fields
.field private static final STAR_PAD:F = 10.0f


# instance fields
.field public mBinding:Ljava/lang/Object;

.field private mCachedViewPositions:Z

.field public mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

.field private mDownEvent:Z

.field public mFriendId:J

.field public mGamertag:Ljava/lang/String;

.field public mIsFavorite:Z

.field private mStarLeft:I

.field public mStatusCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    .line 68
    return-void
.end method


# virtual methods
.method public bindViewInit()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mCachedViewPositions:Z

    .line 73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "handled":Z
    const v5, 0x7f0b0076

    invoke-virtual {p0, v5}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "star":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 85
    .local v4, "touchX":I
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mCachedViewPositions:Z

    if-nez v5, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 89
    .local v1, "paddingScale":F
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v1

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 90
    .local v3, "starPadding":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mStarLeft:I

    .line 91
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mCachedViewPositions:Z

    .line 94
    .end local v1    # "paddingScale":F
    .end local v3    # "starPadding":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 119
    .end local v4    # "touchX":I
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->postInvalidate()V

    .line 124
    :goto_1
    return v0

    .line 97
    .restart local v4    # "touchX":I
    :pswitch_1
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mDownEvent:Z

    .line 98
    iget v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mStarLeft:I

    if-le v4, v5, :cond_1

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mDownEvent:Z

    goto :goto_0

    .line 107
    :pswitch_3
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mDownEvent:Z

    if-eqz v5, :cond_1

    .line 109
    iget v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mStarLeft:I

    if-le v4, v5, :cond_1

    iget-object v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    if-eqz v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    iget-wide v6, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    iget-boolean v8, p0, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mIsFavorite:Z

    invoke-interface {v5, v6, v7, v8}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;->starClicked(JZ)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    .end local v4    # "touchX":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
