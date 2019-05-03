.class Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private DATE_FORMAT:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    .line 157
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 153
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 158
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;

    .line 185
    .local v10, "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    .line 186
    .local v6, "isDirty":Z
    :goto_0
    const/4 v11, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v7, 0x1

    .line 187
    .local v7, "isUnread":Z
    :goto_1
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 188
    .local v8, "sentTicks":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "excerpt":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x12

    if-lt v11, v12, :cond_0

    .line 191
    iget-object v11, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    const v12, 0x7f0800ba

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_0
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v12, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v13, 0x0

    if-nez v7, :cond_4

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v13, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sent:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 206
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_3
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "iconUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 213
    .local v4, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_1

    .line 214
    iget-object v11, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v11}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$700(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 216
    .restart local v4    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 219
    iget-object v12, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :goto_4
    return-void

    .line 185
    .end local v3    # "excerpt":Ljava/lang/String;
    .end local v4    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "isDirty":Z
    .end local v7    # "isUnread":Z
    .end local v8    # "sentTicks":J
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 186
    .restart local v6    # "isDirty":Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 194
    .restart local v3    # "excerpt":Ljava/lang/String;
    .restart local v7    # "isUnread":Z
    .restart local v8    # "sentTicks":J
    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    .line 202
    :pswitch_0
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    const v12, 0x7f02007e

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 225
    .restart local v4    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v5    # "iconUrl":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 226
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_6

    .line 228
    iget-object v11, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    invoke-static {v11}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment;->access$800(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;)Ljava/util/HashMap;

    move-result-object v11

    new-instance v12, Ljava/lang/ref/SoftReference;

    invoke-direct {v12, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 234
    :cond_6
    iget-object v11, v10, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    const v12, 0x7f020002

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 166
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030047

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, "row":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/MessagesFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/MessagesFragment;Lcom/akop/bach/fragment/xboxlive/MessagesFragment$1;)V

    .line 169
    .local v2, "vh":Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    const v3, 0x7f0b00f5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    .line 172
    const v3, 0x7f0b00f6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->summary:Landroid/widget/TextView;

    .line 173
    const v3, 0x7f0b00f9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sent:Landroid/widget/TextView;

    .line 174
    const v3, 0x7f0b00f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    .line 175
    const v3, 0x7f0b00f7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/MessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    .line 177
    return-object v1
.end method
