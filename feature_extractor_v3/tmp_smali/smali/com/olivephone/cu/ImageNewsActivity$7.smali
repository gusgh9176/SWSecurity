.class Lcom/olivephone/cu/ImageNewsActivity$7;
.super Ljava/lang/Object;
.source "ImageNewsActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/ImageNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/ImageNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/ImageNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "image_detail_position"

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 348
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    .line 350
    const-string v1, "image_detail_position"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_0

    .line 353
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iput v5, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/Image;

    .line 356
    .local v0, "img":Lcom/olivephone/model/Image;
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-virtual {v0}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->dl_url:Ljava/lang/String;

    move v1, v4

    .line 375
    .end local v0    # "img":Lcom/olivephone/model/Image;
    :goto_0
    return v1

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3d100000    # -120.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 361
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 362
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->flipper_image_news:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 364
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    .line 365
    const-string v1, "image_detail_position"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    if-gez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    .line 370
    :cond_2
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget-object v1, v1, Lcom/olivephone/cu/ImageNewsActivity;->list_images:Ljava/util/List;

    iget-object v2, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    iget v2, v2, Lcom/olivephone/cu/ImageNewsActivity;->image_detail_position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/Image;

    .line 371
    .restart local v0    # "img":Lcom/olivephone/model/Image;
    iget-object v1, p0, Lcom/olivephone/cu/ImageNewsActivity$7;->this$0:Lcom/olivephone/cu/ImageNewsActivity;

    invoke-virtual {v0}, Lcom/olivephone/model/Image;->getBurl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/olivephone/cu/ImageNewsActivity;->dl_url:Ljava/lang/String;

    move v1, v4

    .line 373
    goto :goto_0

    .end local v0    # "img":Lcom/olivephone/model/Image;
    :cond_3
    move v1, v5

    .line 375
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 380
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 389
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method
