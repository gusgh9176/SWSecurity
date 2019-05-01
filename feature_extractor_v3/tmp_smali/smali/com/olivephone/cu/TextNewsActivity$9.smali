.class Lcom/olivephone/cu/TextNewsActivity$9;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/TextNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v1, v1, Lcom/olivephone/cu/TextNewsActivity;->isFirstRun:Z

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v1, Lcom/olivephone/cu/TextNewsActivity;->isFirstRun:Z

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 530
    if-eqz p4, :cond_0

    .line 534
    :cond_2
    add-int v1, p2, p3

    if-ne v1, p4, :cond_0

    .line 535
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v1, v1, Lcom/olivephone/cu/TextNewsActivity;->isRefresh:Z

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget v2, v1, Lcom/olivephone/cu/TextNewsActivity;->page:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/olivephone/cu/TextNewsActivity;->page:I

    .line 537
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v1, Lcom/olivephone/cu/TextNewsActivity;->isRefresh:Z

    .line 538
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Lcom/olivephone/cu/TextNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 539
    .local v0, "tv_loadtext":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v1, v1, Lcom/olivephone/cu/TextNewsActivity;->isLast:Z

    if-eqz v1, :cond_3

    .line 540
    const-string v1, "\u6700\u540e\u4e00\u6761\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    new-instance v1, Lcom/olivephone/cu/TextNewsActivity$LoadThread;

    iget-object v2, p0, Lcom/olivephone/cu/TextNewsActivity$9;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    invoke-direct {v1, v2}, Lcom/olivephone/cu/TextNewsActivity$LoadThread;-><init>(Lcom/olivephone/cu/TextNewsActivity;)V

    invoke-virtual {v1}, Lcom/olivephone/cu/TextNewsActivity$LoadThread;->start()V

    goto :goto_0

    .line 542
    :cond_3
    const-string v1, "\u6570\u636e\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 550
    return-void
.end method
