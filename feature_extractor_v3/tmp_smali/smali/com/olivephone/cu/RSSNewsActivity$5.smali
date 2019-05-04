.class Lcom/olivephone/cu/RSSNewsActivity$5;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const/high16 v2, 0x7f040000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 195
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    .line 196
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iput v4, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    :cond_0
    move v0, v3

    .line 210
    :goto_0
    return v0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d100000    # -120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 204
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    .line 205
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    if-gez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/RSSNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->news_id:I

    :cond_2
    move v0, v3

    .line 208
    goto :goto_0

    :cond_3
    move v0, v4

    .line 210
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$5;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-static {v0}, Lcom/olivephone/cu/RSSNewsActivity;->access$0(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 215
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method
