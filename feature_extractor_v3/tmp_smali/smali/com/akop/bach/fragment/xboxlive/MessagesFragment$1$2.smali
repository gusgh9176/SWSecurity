.class Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->onTaskSucceeded(Lcom/akop/bach/Account;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    iget-object v1, v1, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1$2;->this$1:Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)V

    .line 146
    return-void
.end method
