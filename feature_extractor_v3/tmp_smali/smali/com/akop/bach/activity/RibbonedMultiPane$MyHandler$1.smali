.class Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler$1;
.super Ljava/lang/Object;
.source "RibbonedMultiPane.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->updateAvatar(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler$1;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    iput-object p2, p0, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler$1;->this$1:Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;

    iget-object v1, v1, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler;->this$0:Lcom/akop/bach/activity/RibbonedMultiPane;

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Lcom/akop/bach/activity/RibbonedMultiPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/akop/bach/activity/RibbonedMultiPane$MyHandler$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_0
    return-void
.end method
