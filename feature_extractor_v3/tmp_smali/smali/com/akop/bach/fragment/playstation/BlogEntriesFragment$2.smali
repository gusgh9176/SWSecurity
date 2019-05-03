.class Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$2;
.super Ljava/lang/Object;
.source "BlogEntriesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$1100(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 385
    return-void
.end method
