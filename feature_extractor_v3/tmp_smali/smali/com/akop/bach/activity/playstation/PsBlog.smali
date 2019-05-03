.class public Lcom/akop/bach/activity/playstation/PsBlog;
.super Lcom/akop/bach/activity/playstation/PsnMultiPane;
.source "PsBlog.java"

# interfaces
.implements Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$OnBlogEntrySelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/akop/bach/activity/playstation/PsnMultiPane;-><init>()V

    return-void
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/playstation/PsBlog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/akop/bach/activity/playstation/PsBlog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateDetailFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->newInstance()Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateTitleFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsBlog;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    move-result-object v0

    return-object v0
.end method

.method public onEntrySelected(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/akop/bach/util/rss/RssItem;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsBlog;->isDualPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/PsBlog;->mDetailFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    .line 58
    .local v0, "detailFragment":Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
    invoke-virtual {v0, p1, p2}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->resetTitle(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)V

    .line 64
    .end local v0    # "detailFragment":Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/playstation/PsBlog;->getAccount()Lcom/akop/bach/PsnAccount;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/akop/bach/activity/playstation/PsBlogEntry;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)V

    goto :goto_0
.end method
