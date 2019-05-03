.class Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "TrophiesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/TrophiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .line 177
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 178
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    .line 205
    .local v7, "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 209
    .local v6, "type":I
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "earnedText":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 212
    .local v2, "earned":J
    if-nez v6, :cond_1

    .line 214
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_2

    if-nez v1, :cond_2

    .line 224
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v9, 0x7f020046

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    :goto_1
    if-nez v1, :cond_0

    .line 255
    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-virtual {v8}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v2, v3}, Lcom/akop/bach/PSN;->getTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_0
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->earned:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 218
    :cond_1
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1000()[I

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 228
    :cond_2
    const/4 v8, 0x7

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "iconUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v8}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1100(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 231
    .local v4, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 234
    iget-object v9, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 240
    :cond_3
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v8

    iget-object v9, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v9}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1200(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 243
    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-static {v8}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->access$1300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 249
    :cond_4
    iget-object v8, v7, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v9, 0x7f020043

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 186
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 188
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Lcom/akop/bach/fragment/playstation/TrophiesFragment$1;)V

    .line 189
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->earned:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    .line 195
    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 197
    return-object v2
.end method
