.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1$1;
.super Ljava/lang/Object;
.source "CompareTrophiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$700(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1$1;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$700(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->notifyDataSetChanged()V

    .line 198
    :cond_0
    return-void
.end method
