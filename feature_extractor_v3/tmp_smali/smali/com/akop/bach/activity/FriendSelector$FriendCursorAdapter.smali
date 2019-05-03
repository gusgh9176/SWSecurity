.class public Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/FriendSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/FriendSelector;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/FriendSelector;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/FriendSelector;

    .line 191
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 192
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;

    .line 215
    .local v3, "vh":Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->screenName:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/FriendSelector;

    invoke-static {v4}, Lcom/akop/bach/activity/FriendSelector;->access$100(Lcom/akop/bach/activity/FriendSelector;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 220
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v5, v3, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 232
    iget-object v4, p0, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/FriendSelector;

    invoke-static {v4}, Lcom/akop/bach/activity/FriendSelector;->access$100(Lcom/akop/bach/activity/FriendSelector;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v4, v3, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v4, v3, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 197
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 199
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter;Lcom/akop/bach/activity/FriendSelector$1;)V

    .line 202
    .local v1, "vh":Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;
    const v3, 0x7f0b0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->screenName:Landroid/widget/TextView;

    .line 203
    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/activity/FriendSelector$FriendCursorAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    return-object v2
.end method
