.class Lcom/akop/bach/activity/xboxlive/GameOverview$2;
.super Ljava/lang/Object;
.source "GameOverview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/activity/xboxlive/GameOverview;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;


# direct methods
.method constructor <init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 301
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Screenshots:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$402(Lcom/akop/bach/activity/xboxlive/GameOverview;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 308
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v2

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 309
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    const v4, 0x7f0800fc

    invoke-virtual {v3, v4}, Lcom/akop/bach/activity/xboxlive/GameOverview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 311
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 313
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;

    invoke-direct {v2, p0, v1}, Lcom/akop/bach/activity/xboxlive/GameOverview$2$1;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview$2;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    .local v0, "downloadThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 362
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview$2;->this$0:Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-static {v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 365
    .end local v0    # "downloadThread":Ljava/lang/Thread;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
