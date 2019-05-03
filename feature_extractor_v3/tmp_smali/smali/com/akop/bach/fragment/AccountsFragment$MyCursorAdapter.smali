.class Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/AccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/AccountsFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/AccountsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    .line 276
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 277
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;

    .line 301
    .local v3, "vh":Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v4, v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    iget-object v4, v4, Lcom/akop/bach/fragment/AccountsFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 307
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 310
    iget-object v5, v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 319
    iget-object v4, p0, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    iget-object v4, v4, Lcom/akop/bach/fragment/AccountsFragment;->mIconCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v4, v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v4, v3, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

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
    .line 282
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 285
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/AccountsFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/AccountsFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/AccountsFragment;Lcom/akop/bach/fragment/AccountsFragment$1;)V

    .line 286
    .local v1, "vh":Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 290
    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 291
    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/AccountsFragment$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    .line 293
    return-object v2
.end method
