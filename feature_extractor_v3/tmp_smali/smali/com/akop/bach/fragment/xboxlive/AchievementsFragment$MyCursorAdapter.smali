.class Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private DATE_FORMAT:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    .line 196
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 192
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 197
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;

    .line 227
    .local v9, "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->pointStats:Landroid/widget/TextView;

    const v11, 0x7f080163

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/4 v10, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    .line 233
    .local v8, "locked":Z
    :goto_0
    const/4 v10, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 234
    .local v4, "acquired":J
    const/4 v2, 0x0

    .line 236
    .local v2, "acqString":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 238
    const v10, 0x7f0800b4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    :goto_1
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->acquired:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v10, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "iconUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v10}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$1000(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 253
    .local v6, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 256
    iget-object v11, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    :goto_2
    return-void

    .line 232
    .end local v2    # "acqString":Ljava/lang/String;
    .end local v4    # "acquired":J
    .end local v6    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v7    # "iconUrl":Ljava/lang/String;
    .end local v8    # "locked":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 242
    .restart local v2    # "acqString":Ljava/lang/String;
    .restart local v4    # "acquired":J
    .restart local v8    # "locked":Z
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_2

    const v10, 0x7f080017

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    goto :goto_1

    :cond_2
    const v10, 0x7f080016

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 262
    .restart local v6    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v7    # "iconUrl":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 263
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 265
    iget-object v10, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    invoke-static {v10}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;->access$1100(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 271
    :cond_4
    iget-object v10, v9, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v11, 0x7f02005d

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 202
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/AchievementsFragment;Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$1;)V

    .line 209
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 212
    const v3, 0x7f0b00a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 213
    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 215
    const v3, 0x7f0b00a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->pointStats:Landroid/widget/TextView;

    .line 216
    const v3, 0x7f0b00aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/AchievementsFragment$ViewHolder;->acquired:Landroid/widget/TextView;

    .line 219
    return-object v2
.end method
