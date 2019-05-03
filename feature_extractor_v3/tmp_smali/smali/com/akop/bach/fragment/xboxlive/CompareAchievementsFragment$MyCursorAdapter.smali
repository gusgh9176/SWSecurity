.class Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CompareAchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .line 83
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 84
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;

    .line 114
    .local v8, "vh":Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->score:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v12, 0x7f080163

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v10, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v11, 0x7f0800b4

    invoke-virtual {v10, v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "myAcquired":Ljava/lang/String;
    :goto_0
    const/16 v10, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v11, 0x7f0800b4

    invoke-virtual {v10, v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "yourAcquired":Ljava/lang/String;
    :goto_1
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->myAcquired:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->yourAcquired:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->myGamerpic:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->yourGamerpic:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$200(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    const/16 v10, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v10}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$300(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 156
    .local v5, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 159
    iget-object v11, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    :goto_2
    return-void

    .line 126
    .end local v5    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v6    # "iconUrl":Ljava/lang/String;
    .end local v7    # "myAcquired":Ljava/lang/String;
    .end local v9    # "yourAcquired":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 127
    .local v2, "acquired":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v11, 0x7f080017

    invoke-virtual {v10, v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "myAcquired":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v7    # "myAcquired":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "myAcquired":Ljava/lang/String;
    goto/16 :goto_0

    .line 140
    .end local v2    # "acquired":J
    :cond_2
    const/4 v10, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 141
    .restart local v2    # "acquired":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    const v11, 0x7f080017

    invoke-virtual {v10, v11}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "yourAcquired":Ljava/lang/String;
    goto/16 :goto_1

    .line 144
    .end local v9    # "yourAcquired":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "yourAcquired":Ljava/lang/String;
    goto/16 :goto_1

    .line 165
    .end local v2    # "acquired":J
    .restart local v5    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "iconUrl":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 166
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-static {v10}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->access$400(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 174
    :cond_5
    iget-object v10, v8, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

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
    .line 89
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;)V

    .line 93
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;
    const v3, 0x7f03002e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    const v3, 0x7f0b00a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0b00a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->score:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->myGamerpic:Landroid/widget/ImageView;

    .line 101
    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->yourGamerpic:Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f0b00b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->myAcquired:Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0b00b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->yourAcquired:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 106
    return-object v2
.end method
