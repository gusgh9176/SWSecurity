.class public Lcom/akop/bach/uiwidget/PsnFriendListItem;
.super Landroid/widget/RelativeLayout;
.source "PsnFriendListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;
    }
.end annotation


# static fields
.field private static final STAR_PAD:F = 10.0f


# instance fields
.field private mCachedViewPositions:Z

.field public mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

.field private mDownEvent:Z

.field public mFriendId:J

.field public mIsFavorite:Z

.field public mOnlineId:Ljava/lang/String;

.field private mStarLeft:I

.field public mStatusCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    .line 67
    return-void
.end method


# virtual methods
.method public bindViewInit()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mCachedViewPositions:Z

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "handled":Z
    const v5, 0x7f0b0076

    invoke-virtual {p0, v5}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "star":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 84
    .local v4, "touchX":I
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mCachedViewPositions:Z

    if-nez v5, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v1, "paddingScale":F
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v1

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 89
    .local v3, "starPadding":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mStarLeft:I

    .line 90
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mCachedViewPositions:Z

    .line 93
    .end local v1    # "paddingScale":F
    .end local v3    # "starPadding":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 118
    .end local v4    # "touchX":I
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->postInvalidate()V

    .line 123
    :goto_1
    return v0

    .line 96
    .restart local v4    # "touchX":I
    :pswitch_1
    iput-boolean v10, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mDownEvent:Z

    .line 97
    iget v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mStarLeft:I

    if-le v4, v5, :cond_1

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mDownEvent:Z

    goto :goto_0

    .line 106
    :pswitch_3
    iget-boolean v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mDownEvent:Z

    if-eqz v5, :cond_1

    .line 108
    iget v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mStarLeft:I

    if-le v4, v5, :cond_1

    iget-object v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    iget-wide v6, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mFriendId:J

    iget-boolean v8, p0, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mIsFavorite:Z

    invoke-interface {v5, v6, v7, v8}, Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;->starClicked(JZ)V

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "touchX":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
