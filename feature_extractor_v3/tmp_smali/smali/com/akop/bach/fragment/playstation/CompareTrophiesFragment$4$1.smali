.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;
.super Ljava/lang/Object;
.source "CompareTrophiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 642
    return-void
.end method
