.class Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private mParent:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .line 209
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/fragment/playstation/FriendsFragment;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/widget/BaseAdapter;
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    .line 214
    invoke-direct {p0, p2, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 216
    iput-object p3, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    .line 217
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;

    .line 260
    .local v12, "vh":Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;
    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    if-nez v13, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v5, p1

    .line 263
    check-cast v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 265
    .local v5, "friend":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mFriendId:J

    .line 266
    const/4 v13, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mStatusCode:I

    .line 267
    const/16 v13, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mIsFavorite:Z

    .line 268
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mOnlineId:Ljava/lang/String;

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    iput-object v13, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mClickListener:Lcom/akop/bach/uiwidget/PsnFriendListItem$OnStarClickListener;

    .line 271
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->onlineId:Landroid/widget/TextView;

    iget-object v14, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const-string v2, ""

    .line 274
    .local v2, "activity":Ljava/lang/String;
    const/16 v13, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 275
    const/16 v13, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_2
    const-string v13, "null"

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 278
    const-string v2, ""

    .line 280
    :cond_3
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->currentActivity:Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 283
    .local v4, "bronze":I
    const/4 v13, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 284
    .local v11, "silver":I
    const/4 v13, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 285
    .local v6, "gold":I
    const/4 v13, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 286
    .local v10, "plat":I
    const/16 v13, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_5

    const/4 v9, 0x1

    .line 289
    .local v9, "isPlus":Z
    :goto_2
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesBronze:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesSilver:Landroid/widget/TextView;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesGold:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesPlat:Landroid/widget/TextView;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesAll:Landroid/widget/TextView;

    add-int v14, v4, v11

    add-int/2addr v14, v6

    add-int/2addr v14, v10

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->level:Landroid/widget/TextView;

    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v14, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->isPlus:Landroid/widget/ImageView;

    if-eqz v9, :cond_6

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    const/16 v13, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-static {v13}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->access$900(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/SoftReference;

    .line 300
    .local v7, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 303
    iget-object v14, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    :goto_4
    iget-object v14, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->isFavorite:Landroid/widget/ImageView;

    iget-boolean v13, v5, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mIsFavorite:Z

    if-eqz v13, :cond_9

    const v13, 0x7f02000d

    :goto_5
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "activity":Ljava/lang/String;
    .end local v4    # "bronze":I
    .end local v6    # "gold":I
    .end local v7    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v8    # "iconUrl":Ljava/lang/String;
    .end local v9    # "isPlus":Z
    .end local v10    # "plat":I
    .end local v11    # "silver":I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 286
    .restart local v2    # "activity":Ljava/lang/String;
    .restart local v4    # "bronze":I
    .restart local v6    # "gold":I
    .restart local v10    # "plat":I
    .restart local v11    # "silver":I
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 295
    .restart local v9    # "isPlus":Z
    :cond_6
    const/16 v13, 0x8

    goto :goto_3

    .line 309
    .restart local v7    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v8    # "iconUrl":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-static {v14}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->access$1000(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 310
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/FriendsFragment;

    invoke-static {v13}, Lcom/akop/bach/fragment/playstation/FriendsFragment;->access$1100(Lcom/akop/bach/fragment/playstation/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v13

    new-instance v14, Ljava/lang/ref/SoftReference;

    invoke-direct {v14, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 318
    :cond_8
    iget-object v13, v12, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    const v14, 0x7f020002

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 322
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :cond_9
    const v13, 0x7f02000c

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 234
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 236
    .local v2, "view":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/FriendsFragment$1;)V

    .line 238
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;
    invoke-virtual {v2, v1}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->setTag(Ljava/lang/Object;)V

    .line 240
    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->onlineId:Landroid/widget/TextView;

    .line 241
    const v3, 0x7f0b004e

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesBronze:Landroid/widget/TextView;

    .line 242
    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesSilver:Landroid/widget/TextView;

    .line 243
    const v3, 0x7f0b004c

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesGold:Landroid/widget/TextView;

    .line 244
    const v3, 0x7f0b004b

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesPlat:Landroid/widget/TextView;

    .line 245
    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->trophiesAll:Landroid/widget/TextView;

    .line 246
    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->level:Landroid/widget/TextView;

    .line 247
    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->currentActivity:Landroid/widget/TextView;

    .line 248
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 249
    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->isFavorite:Landroid/widget/ImageView;

    .line 250
    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/FriendsFragment$ViewHolder;->isPlus:Landroid/widget/ImageView;

    .line 252
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 224
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendsFragment$MyCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void
.end method
