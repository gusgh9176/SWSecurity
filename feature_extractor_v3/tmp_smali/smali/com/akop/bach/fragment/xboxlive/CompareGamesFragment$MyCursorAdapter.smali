.class Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CompareGamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    .line 174
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 175
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

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;

    .line 205
    .local v3, "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myAchStats:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    const v6, 0x7f080166

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourAchStats:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    const v6, 0x7f080166

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myPointStats:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    const v6, 0x7f080166

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourPointStats:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    const v6, 0x7f080166

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/16 v4, 0xa

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->gameUrl:Ljava/lang/String;

    .line 220
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myGamerpic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$000(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourGamerpic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$100(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    const/16 v4, 0x9

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$1100(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 226
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 229
    iget-object v5, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->boxart:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 238
    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;

    invoke-static {v4}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;->access$1200(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->boxart:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v4, v3, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->boxart:Landroid/widget/ImageView;

    const v5, 0x7f02006c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 180
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 183
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$1;)V

    .line 184
    .local v1, "vh":Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;
    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 186
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 189
    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myAchStats:Landroid/widget/TextView;

    .line 190
    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourAchStats:Landroid/widget/TextView;

    .line 191
    const v3, 0x7f0b00b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myPointStats:Landroid/widget/TextView;

    .line 192
    const v3, 0x7f0b00b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourPointStats:Landroid/widget/TextView;

    .line 193
    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->myGamerpic:Landroid/widget/ImageView;

    .line 194
    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->yourGamerpic:Landroid/widget/ImageView;

    .line 195
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/xboxlive/CompareGamesFragment$ViewHolder;->boxart:Landroid/widget/ImageView;

    .line 197
    return-object v2
.end method
