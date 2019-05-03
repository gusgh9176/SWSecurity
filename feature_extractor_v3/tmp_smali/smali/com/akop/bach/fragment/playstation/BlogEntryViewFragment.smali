.class public Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "BlogEntryViewFragment.java"


# instance fields
.field private mChannelUrl:Ljava/lang/String;

.field private mItem:Lcom/akop/bach/util/rss/RssItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)Lcom/akop/bach/util/rss/RssItem;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    return-object v0
.end method

.method public static newInstance()Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {v0, v0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->newInstance(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
    .locals 3
    .param p0, "channelUrl"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/akop/bach/util/rss/RssItem;

    .prologue
    .line 56
    new-instance v1, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;-><init>()V

    .line 58
    .local v1, "f":Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "item"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    const-string v2, "channelUrl"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 10

    .prologue
    const v3, 0x7f0b0053

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 187
    .local v7, "parent":Landroid/view/View;
    if-nez v7, :cond_0

    .line 215
    :goto_0
    return-void

    .line 190
    :cond_0
    const v1, 0x7f0b0057

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 192
    .local v6, "message":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    if-nez v1, :cond_1

    .line 194
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v1, 0x7f0b0054

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 203
    .local v9, "title":Landroid/widget/TextView;
    const v1, 0x7f0b0055

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 205
    .local v8, "posted":Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 206
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_2
    if-eqz v8, :cond_3

    .line 208
    const v1, 0x7f080028

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v4, v4, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v5, v5, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v4, v4, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_3
    const v1, 0x7f0b0056

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 213
    .local v0, "webView":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mChannelUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v2, v2, Lcom/akop/bach/util/rss/RssItem;->content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mChannelUrl:Ljava/lang/String;

    .line 74
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/util/rss/RssItem;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    .line 76
    if-eqz p1, :cond_0

    .line 78
    const-string v1, "item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/util/rss/RssItem;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    .line 82
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 145
    const v0, 0x7f0a0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    if-nez p2, :cond_1

    .line 90
    const/4 v0, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "layout":Landroid/view/View;
    const v2, 0x7f0b0054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "title":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 173
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v1, v1, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0b0109
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 153
    const v1, 0x7f0b0105

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->synchronizeLocal()V

    .line 182
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "item"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public resetTitle(Ljava/lang/String;Lcom/akop/bach/util/rss/RssItem;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/akop/bach/util/rss/RssItem;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    iget-object v0, v0, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    iget-object v1, p2, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mChannelUrl:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->mItem:Lcom/akop/bach/util/rss/RssItem;

    .line 133
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/BlogEntryViewFragment;->synchronizeLocal()V

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 136
    new-instance v0, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    .line 138
    :cond_1
    return-void
.end method
