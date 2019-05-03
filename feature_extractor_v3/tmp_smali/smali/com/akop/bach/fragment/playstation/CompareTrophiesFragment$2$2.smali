.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;
.super Ljava/lang/Object;
.source "CompareTrophiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->val$result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/akop/bach/PSN$ComparedTrophyInfo;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->val$result:Ljava/lang/Object;

    check-cast v0, Lcom/akop/bach/PSN$ComparedTrophyInfo;

    invoke-static {v1, v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1302(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Lcom/akop/bach/PSN$ComparedTrophyInfo;)Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .line 237
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1400(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)V

    .line 238
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1000(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$900(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$900(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$1100(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method
