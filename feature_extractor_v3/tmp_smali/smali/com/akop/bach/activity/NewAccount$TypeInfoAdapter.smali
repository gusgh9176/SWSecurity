.class Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NewAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/activity/NewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/akop/bach/activity/NewAccount$TypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/activity/NewAccount;


# direct methods
.method public constructor <init>(Lcom/akop/bach/activity/NewAccount;Landroid/content/Context;[Lcom/akop/bach/activity/NewAccount$TypeInfo;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accounts"    # [Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;->this$0:Lcom/akop/bach/activity/NewAccount;

    .line 123
    const v0, 0x7f030006

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 134
    iget-object v4, p0, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;->this$0:Lcom/akop/bach/activity/NewAccount;

    invoke-virtual {v4}, Lcom/akop/bach/activity/NewAccount;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030006

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "row":Landroid/view/View;
    new-instance v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;-><init>(Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;Lcom/akop/bach/activity/NewAccount$1;)V

    .line 140
    .local v3, "vh":Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;
    const v4, 0x7f0b000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 141
    const v4, 0x7f0b000c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;

    .line 152
    .local v1, "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    iget-object v4, v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/akop/bach/activity/NewAccount$TypeInfo;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-object v2

    .line 146
    .end local v1    # "info":Lcom/akop/bach/activity/NewAccount$TypeInfo;
    .end local v2    # "row":Landroid/view/View;
    .end local v3    # "vh":Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;
    :cond_0
    move-object v2, p2

    .line 147
    .restart local v2    # "row":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;

    .restart local v3    # "vh":Lcom/akop/bach/activity/NewAccount$TypeInfoAdapter$ViewHolder;
    goto :goto_0
.end method
