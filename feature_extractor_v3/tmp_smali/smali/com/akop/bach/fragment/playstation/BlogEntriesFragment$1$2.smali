.class Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;
.super Ljava/lang/Object;
.source "BlogEntriesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/util/rss/RssChannel;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/util/rss/RssChannel;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$402(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;Lcom/akop/bach/util/rss/RssChannel;)Lcom/akop/bach/util/rss/RssChannel;

    .line 115
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$500(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V

    .line 116
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$600(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$000(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$100(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$000(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1$2;->this$1:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$200(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method
