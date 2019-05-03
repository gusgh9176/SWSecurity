.class Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GameCatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# static fields
.field private static final ITEM_NORMAL:I = 0x0

.field private static final ITEM_PLACEHOLDER:I = 0x1


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/PSN$GameCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/PSN$GameCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/PSN$GameCatalogItem;>;"
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->mItems:Ljava/util/List;

    .line 163
    return-void
.end method

.method private renderItem(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 10
    .param p1, "vh"    # Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;
    .param p2, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 207
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->genre:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->publisher:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/akop/bach/PSN$GameCatalogItem;->Publisher:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p2, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    .line 217
    .local v3, "releaseDate":Ljava/lang/String;
    iget-object v7, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->releaseDate:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->releaseDate:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    const v8, 0x7f08010d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->overview:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/akop/bach/PSN$GameCatalogItem;->Overview:Ljava/lang/String;

    if-eqz v7, :cond_1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->overview:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/akop/bach/PSN$GameCatalogItem;->Overview:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, p2, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    .line 223
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$800(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 225
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 228
    iget-object v5, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :goto_2
    return-void

    .end local v1    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "iconUrl":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 217
    goto :goto_0

    :cond_1
    move v5, v6

    .line 219
    goto :goto_1

    .line 234
    .restart local v1    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v2    # "iconUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$900(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 236
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1000(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_3
    iget-object v4, p1, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 198
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 199
    .local v0, "lastItemPos":I
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x1

    .line 202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    if-nez p2, :cond_4

    .line 250
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-virtual {v3, v6}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 254
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1100(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 255
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1300(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    .line 257
    :cond_0
    const v3, 0x7f03001d

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 292
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_1
    :goto_0
    return-object p2

    .line 262
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    const v3, 0x7f03001c

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "row":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;

    invoke-direct {v2, v6}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$1;)V

    .line 265
    .local v2, "vh":Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;
    const v3, 0x7f0b0078

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 266
    const v3, 0x7f0b0079

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->overview:Landroid/widget/TextView;

    .line 267
    const v3, 0x7f0b0077

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 268
    const v3, 0x7f0b007b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->genre:Landroid/widget/TextView;

    .line 269
    const v3, 0x7f0b007c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->releaseDate:Landroid/widget/TextView;

    .line 270
    const v3, 0x7f0b007a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;->publisher:Landroid/widget/TextView;

    .line 272
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-direct {p0, v2, v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->renderItem(Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;Lcom/akop/bach/PSN$GameCatalogItem;)V

    :cond_3
    move-object p2, v1

    .line 292
    goto :goto_0

    .line 277
    .end local v1    # "row":Landroid/view/View;
    .end local v2    # "vh":Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 279
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1100(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 280
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GameCatalogFragment;

    invoke-static {v3}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment;->access$1300(Lcom/akop/bach/fragment/playstation/GameCatalogFragment;)V

    goto :goto_0

    .line 285
    :cond_5
    move-object v1, p2

    .line 286
    .restart local v1    # "row":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;

    .restart local v2    # "vh":Lcom/akop/bach/fragment/playstation/GameCatalogFragment$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lcom/akop/bach/fragment/playstation/GameCatalogFragment$MyAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
