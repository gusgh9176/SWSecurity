.class Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsOfFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    .line 180
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 181
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v10, 0x7f020002

    const/4 v7, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;

    .line 217
    .local v3, "vh":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->gamerscore:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    const v6, 0x7f080163

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    const v5, 0x7f02006c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1400(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 228
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 231
    iget-object v5, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    :goto_0
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1600(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 253
    .restart local v1    # "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 256
    iget-object v5, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    :goto_1
    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 240
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1500(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 262
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 265
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1700(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 271
    :cond_3
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    const v5, 0x7f02006d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 186
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 189
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$1;)V

    .line 190
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;
    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    const v3, 0x7f0b00d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 195
    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->gamerscore:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    .line 197
    const v3, 0x7f0b00d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->status:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$ViewHolder;->titleIcon:Landroid/widget/ImageView;

    .line 200
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 208
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1300(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/SectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;->access$1300(Lcom/akop/bach/fragment/xboxlive/FriendsOfFriendFragment;)Lcom/akop/bach/SectionedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/SectionedAdapter;->notifyDataSetChanged()V

    .line 210
    :cond_0
    return-void
.end method
