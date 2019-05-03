.class public Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchFriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/SearchFriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mParent:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/SearchFriendsList;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    .line 236
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/widget/BaseAdapter;
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    .line 241
    invoke-direct {p0, p2, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 243
    iput-object p3, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    .line 244
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 275
    instance-of v5, p1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    if-nez v5, :cond_0

    .line 312
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 278
    check-cast v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 279
    .local v1, "friend":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;

    .line 281
    .local v4, "vh":Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mFriendId:J

    .line 282
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->mGamertag:Ljava/lang/String;

    .line 284
    iget-object v5, v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamerscore:Landroid/widget/TextView;

    const v6, 0x7f080163

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "iconUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    invoke-static {v5}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->access$100(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 291
    .local v2, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 294
    iget-object v6, v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 303
    iget-object v5, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/SearchFriendsList;

    invoke-static {v5}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList;->access$100(Lcom/akop/bach/activity/xboxlive/SearchFriendsList;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v5, v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v5, v4, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    const v6, 0x7f020002

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 258
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 260
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;

    .line 263
    .local v2, "view":Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;
    new-instance v1, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;Lcom/akop/bach/activity/xboxlive/SearchFriendsList$1;)V

    .line 264
    .local v1, "vh":Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    const v3, 0x7f0b00d2

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 265
    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamerscore:Landroid/widget/TextView;

    .line 266
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 267
    invoke-virtual {v2, v1}, Lcom/akop/bach/uiwidget/XboxLiveFriendListItem;->setTag(Ljava/lang/Object;)V

    .line 269
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 251
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_0
    return-void
.end method
