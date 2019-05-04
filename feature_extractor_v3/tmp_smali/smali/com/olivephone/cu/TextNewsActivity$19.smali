.class Lcom/olivephone/cu/TextNewsActivity$19;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity;->updateChannel()V
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
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1187
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1192
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    .line 1193
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/TextNewsActivity;->isClickable:Z

    .line 1202
    :goto_0
    return v2

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->selectView:Lcom/olivephone/mywidget/SelectView;

    iget-object v0, v0, Lcom/olivephone/mywidget/SelectView;->llay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->lv_text_news:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1199
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v3, v0, Lcom/olivephone/cu/TextNewsActivity;->isext:Z

    .line 1200
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$19;->this$0:Lcom/olivephone/cu/TextNewsActivity;

    iput-boolean v2, v0, Lcom/olivephone/cu/TextNewsActivity;->isClickable:Z

    goto :goto_0
.end method
