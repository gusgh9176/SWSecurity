.class public Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendCoverflow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/FriendCoverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    .line 308
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 309
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;

    .line 336
    .local v3, "vh":Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamertag:Landroid/widget/TextView;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->activity:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamerscore:Landroid/widget/TextView;

    const v5, 0x7f080163

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const/4 v4, 0x5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v4}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$000(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 344
    .local v1, "iconRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 346
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 360
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 361
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    :goto_1
    return-void

    .line 356
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v4, p0, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$FriendCursorAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/FriendCoverflow;

    invoke-static {v4}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow;->access$000(Lcom/akop/bach/activity/xboxlive/FriendCoverflow;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_2
    iget-object v4, v3, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 314
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 317
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03003b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 318
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;-><init>(Lcom/akop/bach/activity/xboxlive/FriendCoverflow$1;)V

    .line 320
    .local v1, "vh":Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;
    const v3, 0x7f0b00d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 321
    const v3, 0x7f0b00d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    .line 322
    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->activity:Landroid/widget/TextView;

    .line 323
    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->gamerscore:Landroid/widget/TextView;

    .line 324
    const v3, 0x7f0b00d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/activity/xboxlive/FriendCoverflow$ViewHolder;->status:Landroid/widget/TextView;

    .line 326
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    return-object v2
.end method
