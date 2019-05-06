.class Lcom/olivephone/cu/RSSNewsActivity$15;
.super Ljava/lang/Object;
.source "RSSNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/RSSNewsActivity;->createSelectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/RSSNewsActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/RSSNewsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    .line 550
    :goto_0
    return v2

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->lv_news_enshrine:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    invoke-static {v0}, Lcom/olivephone/cu/RSSNewsActivity;->access$3(Lcom/olivephone/cu/RSSNewsActivity;)V

    .line 547
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/RSSNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/olivephone/cu/RSSNewsActivity$15;->this$0:Lcom/olivephone/cu/RSSNewsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/RSSNewsActivity;->isext:Z

    goto :goto_0
.end method
