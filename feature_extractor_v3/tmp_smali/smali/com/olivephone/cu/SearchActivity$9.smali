.class Lcom/olivephone/cu/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SearchActivity;->popMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SearchActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SearchActivity$9;->this$0:Lcom/olivephone/cu/SearchActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/olivephone/cu/SearchActivity$9;->this$0:Lcom/olivephone/cu/SearchActivity;

    iget-object v1, v1, Lcom/olivephone/cu/SearchActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/olivephone/cu/SearchActivity$9;->this$0:Lcom/olivephone/cu/SearchActivity;

    const-class v2, Lcom/olivephone/cu/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/olivephone/cu/SearchActivity$9;->this$0:Lcom/olivephone/cu/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/olivephone/cu/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/olivephone/cu/SearchActivity$9;->this$0:Lcom/olivephone/cu/SearchActivity;

    invoke-virtual {v1}, Lcom/olivephone/cu/SearchActivity;->finish()V

    .line 199
    const/4 v1, 0x0

    return v1
.end method
