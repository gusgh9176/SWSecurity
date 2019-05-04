.class Lcom/olivephone/cu/TextNewsActivity$7;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
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

    .line 378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 381
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const/high16 v2, 0x7f040000

    .line 380
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 382
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 384
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 385
    const v2, 0x7f040001

    .line 384
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 386
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 387
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    .line 388
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput v4, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    :cond_0
    move v0, v3

    .line 408
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3d100000    # -120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 395
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 396
    const v2, 0x7f040002

    .line 395
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 397
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    .line 399
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 400
    const v2, 0x7f040003

    .line 398
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->vf_newcontent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 402
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v1, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    .line 403
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v0, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    if-gez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/TextNewsActivity;->list_news:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/olivephone/cu/TextNewsActivity;->news_id:I

    :cond_2
    move v0, v3

    .line 406
    goto :goto_0

    :cond_3
    move v0, v4

    .line 408
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$7;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity;->access$1(Lcom/olivephone/cu/TextNewsActivity;)V

    .line 413
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method
