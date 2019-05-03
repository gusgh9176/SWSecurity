.class Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private DATE_FORMAT:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    .line 189
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 185
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 190
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 217
    move-object/from16 v4, p1

    check-cast v4, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;

    .line 218
    .local v4, "gameListItem":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mItemId:J

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;

    .line 222
    .local v7, "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    iget-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->lastPlayed:Landroid/widget/TextView;

    const v9, 0x7f0800ac

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v13, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->pointStats:Landroid/widget/TextView;

    const v9, 0x7f080166

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const/16 v8, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->gameUrl:Ljava/lang/String;

    .line 230
    const/16 v8, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v4, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mBeaconSet:Z

    .line 231
    const/4 v8, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 233
    .local v2, "achTotal":I
    iget-object v9, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->achStats:Landroid/widget/TextView;

    if-gtz v2, :cond_1

    const v8, 0x7f0800d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v8, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v8}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$600(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 242
    .local v5, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 245
    iget-object v9, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :goto_2
    iget-object v9, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->beacon:Landroid/widget/ImageView;

    iget-boolean v8, v4, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mBeaconSet:Z

    if-eqz v8, :cond_4

    const v8, 0x7f020008

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    return-void

    .line 230
    .end local v2    # "achTotal":I
    .end local v5    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v6    # "iconUrl":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 233
    .restart local v2    # "achTotal":I
    :cond_1
    const v8, 0x7f080015

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 251
    .restart local v5    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "iconUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 252
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    invoke-static {v8}, Lcom/akop/bach/fragment/xboxlive/GamesFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/GamesFragment;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 260
    :cond_3
    iget-object v8, v7, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v9, 0x7f02006c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 264
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    const v8, 0x7f020007

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 198
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030042

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;

    .line 199
    .local v2, "view":Lcom/akop/bach/uiwidget/XboxLiveGameListItem;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/GamesFragment;Lcom/akop/bach/fragment/xboxlive/GamesFragment$1;)V

    .line 201
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;
    invoke-virtual {v2, v1}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->setTag(Ljava/lang/Object;)V

    .line 202
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/GamesFragment;

    iput-object v3, v2, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->mClickListener:Lcom/akop/bach/uiwidget/XboxLiveGameListItem$OnBeaconClickListener;

    .line 204
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 205
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 206
    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->lastPlayed:Landroid/widget/TextView;

    .line 207
    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->achStats:Landroid/widget/TextView;

    .line 208
    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->pointStats:Landroid/widget/TextView;

    .line 209
    const v3, 0x7f0b00e4

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveGameListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/GamesFragment$ViewHolder;->beacon:Landroid/widget/ImageView;

    .line 211
    return-object v2
.end method
