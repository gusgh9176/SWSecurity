.class Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;
.super Ljava/lang/Object;
.source "TrophiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$400(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    iget-object v1, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2$2;->this$1:Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$700(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V

    .line 168
    return-void
.end method
