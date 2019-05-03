.class Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageSelectRecipients.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_PLAIN:I = 0x1


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;>;"
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 102
    iput-object p3, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->mItems:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->getItem(I)Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 143
    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-virtual {v6}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 145
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03004d

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 147
    .local v4, "row":Landroid/view/View;
    new-instance v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$1;)V

    .line 148
    .local v5, "vh":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;
    const v6, 0x7f0b00d2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 149
    const v6, 0x7f0b00d4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    .line 150
    const v6, 0x7f0b00fa

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->isSelected:Landroid/widget/ImageView;

    .line 152
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->getItem(I)Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;

    move-result-object v3

    .line 161
    .local v3, "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-static {v6}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->access$100(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 162
    .local v1, "bmpRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 166
    iget-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :goto_1
    iget-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->gamertag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v7, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->isSelected:Landroid/widget/ImageView;

    iget-boolean v6, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->isSelected:Z

    if-eqz v6, :cond_3

    const v6, 0x7f02000a

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    return-object v4

    .line 156
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "bmpRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v3    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    .end local v4    # "row":Landroid/view/View;
    .end local v5    # "vh":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;
    :cond_0
    move-object v4, p2

    .line 157
    .restart local v4    # "row":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;

    .restart local v5    # "vh":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;
    goto :goto_0

    .line 173
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "bmpRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v3    # "item":Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;
    :cond_1
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v6

    iget-object v7, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 176
    iget-object v6, p0, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter;->this$0:Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;

    invoke-static {v6}, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;->access$100(Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v3, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItem;->iconUrl:Ljava/lang/String;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v6, v5, Lcom/akop/bach/activity/xboxlive/MessageSelectRecipients$FriendItemAdapter$ViewHolder;->gamerpic:Landroid/widget/ImageView;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 187
    :cond_3
    const v6, 0x7f020009

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method
