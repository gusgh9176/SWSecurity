.class Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/AccountSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/akop/bach/activity/AccountSelector$AccountInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_NEW:I = 0x0

.field private static final ITEM_NORMAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/AccountSelector;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/AccountSelector;Landroid/content/Context;[Lcom/akop/bach/activity/AccountSelector$AccountInfo;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accounts"    # [Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->this$0:Lcom/akop/bach/activity/AccountSelector;

    .line 188
    const v0, 0x7f030002

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p2, :cond_3

    .line 211
    iget-object v1, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->this$0:Lcom/akop/bach/activity/AccountSelector;

    invoke-virtual {v1}, Lcom/akop/bach/activity/AccountSelector;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 213
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const v1, 0x7f030003

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 253
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .line 219
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const v1, 0x7f030002

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 220
    .local v7, "row":Landroid/view/View;
    new-instance v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;Lcom/akop/bach/activity/AccountSelector$1;)V

    .line 221
    .local v8, "vh":Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;
    const v1, 0x7f0b0005

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0b0006

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f0b0003

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    .line 224
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;

    .line 238
    .local v6, "info":Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    iget-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->gamertag:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    iget-object v2, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_2
    move-object p2, v7

    .line 253
    goto :goto_0

    .line 229
    .end local v6    # "info":Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    .end local v7    # "row":Landroid/view/View;
    .end local v8    # "vh":Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    move-object v7, p2

    .line 233
    .restart local v7    # "row":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;

    .restart local v8    # "vh":Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;
    goto :goto_1

    .line 247
    .restart local v6    # "info":Lcom/akop/bach/activity/AccountSelector$AccountInfo;
    :cond_4
    iget-object v1, v8, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter$ViewHolder;->avatarIcon:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v1, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 249
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    iget-object v2, v6, Lcom/akop/bach/activity/AccountSelector$AccountInfo;->iconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/activity/AccountSelector$AccountInfoAdapter;->this$0:Lcom/akop/bach/activity/AccountSelector;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x2

    return v0
.end method
