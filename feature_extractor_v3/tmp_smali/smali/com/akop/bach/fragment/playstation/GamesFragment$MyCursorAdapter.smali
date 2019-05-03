.class Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    .line 151
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 152
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;

    .line 185
    .local v8, "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 186
    .local v5, "platinum":I
    const/4 v9, 0x5

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 187
    .local v2, "gold":I
    const/4 v9, 0x6

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 188
    .local v7, "silver":I
    const/4 v9, 0x7

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 189
    .local v1, "bronze":I
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 191
    .local v6, "progress":I
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesPlat:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesGold:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesSilver:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesBronze:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesAll:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int v11, v5, v2

    add-int/2addr v11, v7

    add-int/2addr v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->progressValue:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 202
    const/16 v9, 0x8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "iconUrl":Ljava/lang/String;
    iget-object v9, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-static {v9}, Lcom/akop/bach/fragment/playstation/GamesFragment;->access$700(Lcom/akop/bach/fragment/playstation/GamesFragment;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 205
    .local v3, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 208
    iget-object v10, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v9

    iget-object v10, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-static {v10}, Lcom/akop/bach/fragment/playstation/GamesFragment;->access$800(Lcom/akop/bach/fragment/playstation/GamesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 217
    iget-object v9, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    invoke-static {v9}, Lcom/akop/bach/fragment/playstation/GamesFragment;->access$900(Lcom/akop/bach/fragment/playstation/GamesFragment;)Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v9, v8, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v10, 0x7f020032

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 160
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GamesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/GamesFragment;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/GamesFragment;Lcom/akop/bach/fragment/playstation/GamesFragment$1;)V

    .line 163
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 166
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 168
    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesPlat:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f0b0080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesGold:Landroid/widget/TextView;

    .line 170
    const v3, 0x7f0b007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesSilver:Landroid/widget/TextView;

    .line 171
    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesBronze:Landroid/widget/TextView;

    .line 172
    const v3, 0x7f0b007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->trophiesAll:Landroid/widget/TextView;

    .line 174
    const v3, 0x7f0b0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->progressValue:Landroid/widget/TextView;

    .line 175
    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/GamesFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 177
    return-object v2
.end method
