.class Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BlogEntriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlogItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/akop/bach/util/rss/RssItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mMedDate:Ljava/text/DateFormat;

.field private mShortTime:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/util/rss/RssItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/util/rss/RssItem;>;"
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    .line 143
    const v0, 0x7f03000c

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->mMedDate:Ljava/text/DateFormat;

    .line 131
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->mShortTime:Ljava/text/DateFormat;

    .line 144
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 154
    iget-object v7, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-virtual {v7}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000c

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 156
    .local v5, "row":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$1;)V

    .line 157
    .local v6, "vh":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;
    const v7, 0x7f0b001a

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 159
    const v7, 0x7f0b001b

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->posted:Landroid/widget/TextView;

    .line 160
    const v7, 0x7f0b0019

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->thumb:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 170
    :goto_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/util/rss/RssItem;

    .line 172
    .local v4, "info":Lcom/akop/bach/util/rss/RssItem;
    iget-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/akop/bach/util/rss/RssItem;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->posted:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    const v9, 0x7f080028

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->mMedDate:Ljava/text/DateFormat;

    iget-object v13, v4, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->mShortTime:Ljava/text/DateFormat;

    iget-object v13, v4, Lcom/akop/bach/util/rss/RssItem;->date:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v4, Lcom/akop/bach/util/rss/RssItem;->author:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/akop/bach/util/rss/RssItem;->link:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v3, v4, Lcom/akop/bach/util/rss/RssItem;->thumbUrl:Ljava/lang/String;

    .line 180
    .local v3, "iconUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v7}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$900(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 182
    .local v2, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 185
    iget-object v8, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    :goto_1
    return-object v5

    .end local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3    # "iconUrl":Ljava/lang/String;
    .end local v4    # "info":Lcom/akop/bach/util/rss/RssItem;
    .end local v5    # "row":Landroid/widget/LinearLayout;
    .end local v6    # "vh":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;
    :cond_0
    move-object/from16 v5, p2

    .line 166
    check-cast v5, Landroid/widget/LinearLayout;

    .line 167
    .restart local v5    # "row":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;

    .restart local v6    # "vh":Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;
    goto :goto_0

    .line 191
    .restart local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v3    # "iconUrl":Ljava/lang/String;
    .restart local v4    # "info":Lcom/akop/bach/util/rss/RssItem;
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 193
    iget-object v7, p0, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter;->this$0:Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;

    invoke-static {v7}, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;->access$1000(Lcom/akop/bach/fragment/playstation/BlogEntriesFragment;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    iget-object v7, v6, Lcom/akop/bach/fragment/playstation/BlogEntriesFragment$BlogItemAdapter$ViewHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
