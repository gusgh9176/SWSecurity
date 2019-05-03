.class Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CompareGamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/CompareGamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    .line 184
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 185
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;

    .line 230
    .local v15, "vh":Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/16 v16, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 233
    .local v13, "selfPlatinum":I
    const/16 v16, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 234
    .local v12, "selfGold":I
    const/16 v16, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 235
    .local v14, "selfSilver":I
    const/16 v16, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 236
    .local v11, "selfBronze":I
    add-int v16, v13, v12

    add-int v16, v16, v14

    add-int v10, v16, v11

    .line 238
    .local v10, "selfAll":I
    const/16 v16, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 239
    .local v8, "oppPlatinum":I
    const/16 v16, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 240
    .local v7, "oppGold":I
    const/16 v16, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 241
    .local v9, "oppSilver":I
    const/16 v16, 0xe

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 242
    .local v6, "oppBronze":I
    add-int v16, v8, v7

    add-int v16, v16, v9

    add-int v5, v16, v6

    .line 244
    .local v5, "oppAll":I
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesPlat:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesGold:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesSilver:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesBronze:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesAll:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesPlat:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesGold:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesSilver:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesBronze:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesAll:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_0

    .line 258
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfNotPlayed:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfSection:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfProgress:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    const v18, 0x7f08003b

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    const/16 v16, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_1

    .line 272
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppNotPlayed:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppSection:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppProgress:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    const v18, 0x7f08003b

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_1
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$000(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$100(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$1300(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 290
    .local v3, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 293
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    :goto_2
    return-void

    .line 265
    .end local v3    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "iconUrl":Ljava/lang/String;
    :cond_0
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfSection:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfNotPlayed:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 279
    :cond_1
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppNotPlayed:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppSection:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppProgress:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    const v18, 0x7f0800da

    invoke-virtual/range {v17 .. v18}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 299
    .restart local v3    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v4    # "iconUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$1400(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 300
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareGamesFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment;->access$1500(Lcom/akop/bach/fragment/playstation/CompareGamesFragment;)Ljava/util/HashMap;

    move-result-object v16

    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 308
    :cond_3
    iget-object v0, v15, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f020032

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 193
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/CompareGamesFragment$1;)V

    .line 194
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;
    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 199
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->gameIcon:Landroid/widget/ImageView;

    .line 201
    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfSection:Landroid/view/View;

    .line 202
    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesPlat:Landroid/widget/TextView;

    .line 203
    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesGold:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesSilver:Landroid/widget/TextView;

    .line 205
    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesBronze:Landroid/widget/TextView;

    .line 206
    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfTrophiesAll:Landroid/widget/TextView;

    .line 207
    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfProgress:Landroid/widget/TextView;

    .line 208
    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfNotPlayed:Landroid/widget/TextView;

    .line 210
    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppSection:Landroid/view/View;

    .line 211
    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesPlat:Landroid/widget/TextView;

    .line 212
    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesGold:Landroid/widget/TextView;

    .line 213
    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesSilver:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesBronze:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppTrophiesAll:Landroid/widget/TextView;

    .line 216
    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppProgress:Landroid/widget/TextView;

    .line 217
    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppNotPlayed:Landroid/widget/TextView;

    .line 219
    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->selfIcon:Landroid/widget/ImageView;

    .line 220
    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareGamesFragment$ViewHolder;->oppIcon:Landroid/widget/ImageView;

    .line 222
    return-object v2
.end method
