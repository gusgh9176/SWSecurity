.class Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CompareTrophiesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .line 89
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 90
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v7, 0x8

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;

    .line 123
    .local v4, "vh":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->selfEarned:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->oppEarned:Landroid/widget/TextView;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->selfIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v6}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$100(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->oppIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v6}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$200(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 134
    .local v3, "type":I
    if-nez v3, :cond_0

    .line 136
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    :goto_0
    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_1
    return-void

    .line 140
    :cond_0
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$300()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$400(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 153
    .local v1, "icon":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 156
    iget-object v6, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v6}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$500(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 165
    iget-object v5, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-static {v5}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->access$600(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 171
    :cond_3
    iget-object v5, v4, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020043

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 98
    .local v0, "li":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;)V

    .line 99
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;
    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->selfEarned:Landroid/widget/TextView;

    .line 107
    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->oppEarned:Landroid/widget/TextView;

    .line 109
    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->selfIcon:Landroid/widget/ImageView;

    .line 110
    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->oppIcon:Landroid/widget/ImageView;

    .line 112
    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 113
    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    .line 115
    return-object v2
.end method
