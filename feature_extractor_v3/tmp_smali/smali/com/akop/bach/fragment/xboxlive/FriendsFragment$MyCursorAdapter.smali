.class Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private mParent:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .line 242
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/widget/BaseAdapter;
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    .line 247
    invoke-direct {p0, p2, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 249
    iput-object p3, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    .line 250
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;

    .line 289
    .local v4, "vh":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;
    if-eqz v4, :cond_0

    instance-of v5, p1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    if-nez v5, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 292
    check-cast v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 294
    .local v1, "friend":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    .line 295
    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mStatusCode:I

    .line 296
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mGamertag:Ljava/lang/String;

    .line 297
    const/16 v5, 0x8

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mIsFavorite:Z

    .line 298
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    iput-object v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveFriendListItem$OnStarClickListener;

    .line 300
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->currentActivity:Landroid/widget/TextView;

    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->gamerscore:Landroid/widget/TextView;

    const v8, 0x7f080163

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {p2, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "iconUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$1300(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 308
    .local v2, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 311
    iget-object v6, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    :goto_2
    const/4 v5, 0x7

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$1500(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 333
    .restart local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 336
    iget-object v6, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    :goto_3
    iget-object v6, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->isFavorite:Landroid/widget/ImageView;

    iget-boolean v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mIsFavorite:Z

    if-eqz v5, :cond_7

    const v5, 0x7f02000d

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3    # "iconUrl":Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 297
    goto/16 :goto_1

    .line 317
    .restart local v2    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v3    # "iconUrl":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 320
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$1400(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 326
    :cond_4
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    const v6, 0x7f020002

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 342
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 345
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment;->access$1600(Lcom/akop/bach/fragment/xboxlive/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 351
    :cond_6
    iget-object v5, v4, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    const v6, 0x7f02006d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 355
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    const v5, 0x7f02000c

    goto :goto_4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 264
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 267
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 269
    .local v2, "view":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsFragment$1;)V

    .line 271
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;
    invoke-virtual {v2, v1}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->setTag(Ljava/lang/Object;)V

    .line 273
    const v3, 0x7f0b00d2

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 274
    const v3, 0x7f0b00db

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->currentActivity:Landroid/widget/TextView;

    .line 276
    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->gamerscore:Landroid/widget/TextView;

    .line 277
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 278
    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->isFavorite:Landroid/widget/ImageView;

    .line 279
    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    .line 281
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 257
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 259
    :cond_0
    return-void
.end method
