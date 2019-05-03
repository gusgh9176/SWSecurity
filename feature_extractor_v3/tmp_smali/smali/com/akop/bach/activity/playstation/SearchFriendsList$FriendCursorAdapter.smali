.class public Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchFriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/playstation/SearchFriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mParent:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/playstation/SearchFriendsList;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    .line 235
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/akop/bach/activity/playstation/SearchFriendsList;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/widget/BaseAdapter;
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    .line 240
    invoke-direct {p0, p2, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 242
    iput-object p3, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    .line 243
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 274
    instance-of v5, p1, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    if-nez v5, :cond_0

    .line 309
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 277
    check-cast v1, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 278
    .local v1, "friend":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;

    .line 280
    .local v4, "vh":Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mFriendId:J

    .line 281
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mOnlineId:Ljava/lang/String;

    .line 283
    iget-object v5, v4, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/akop/bach/uiwidget/PsnFriendListItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "iconUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    invoke-static {v5}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->access$100(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 288
    .local v2, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 291
    iget-object v6, v4, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 300
    iget-object v5, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/playstation/SearchFriendsList;

    invoke-static {v5}, Lcom/akop/bach/activity/playstation/SearchFriendsList;->access$100(Lcom/akop/bach/activity/playstation/SearchFriendsList;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v5, v4, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v5, v4, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    const v6, 0x7f020002

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 257
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 259
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030022

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/uiwidget/PsnFriendListItem;

    .line 262
    .local v2, "view":Lcom/akop/bach/uiwidget/PsnFriendListItem;
    new-instance v1, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;Lcom/akop/bach/activity/playstation/SearchFriendsList$1;)V

    .line 263
    .local v1, "vh":Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;
    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 265
    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 266
    invoke-virtual {v2, v1}, Lcom/akop/bach/uiwidget/PsnFriendListItem;->setTag(Ljava/lang/Object;)V

    .line 268
    return-object v2
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 250
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/akop/bach/activity/playstation/SearchFriendsList$FriendCursorAdapter;->mParent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 252
    :cond_0
    return-void
.end method
