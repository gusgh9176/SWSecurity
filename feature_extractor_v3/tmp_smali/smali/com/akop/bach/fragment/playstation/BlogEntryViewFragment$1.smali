.class Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;
.super Ljava/lang/Object;
.source "BlogEntryViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;


# direct methods
.method constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->access$000(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)Lcom/akop/bach/util/rss/RssItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->access$000(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)Lcom/akop/bach/util/rss/RssItem;

    move-result-object v1

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->access$000(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)Lcom/akop/bach/util/rss/RssItem;

    move-result-object v1

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
