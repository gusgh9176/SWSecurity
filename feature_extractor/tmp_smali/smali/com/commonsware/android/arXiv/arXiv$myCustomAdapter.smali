.class Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "arXiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/arXiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myCustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/arXiv;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/arXiv;)V
    .locals 2

    .prologue
    .line 998
    iput-object p1, p0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    .line 999
    const v0, 0x7f030003

    invoke-static {p1}, Lcom/commonsware/android/arXiv/arXiv;->access$0(Lcom/commonsware/android/arXiv/arXiv;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1000
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1004
    move-object v2, p2

    .line 1007
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXiv;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1009
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1010
    new-instance v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;-><init>(Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;)V

    .line 1011
    .local v0, "holder":Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 1012
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 1013
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1017
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/arXiv;->access$1(Lcom/commonsware/android/arXiv/arXiv;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v3, v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/arXiv;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/arXiv;->access$0(Lcom/commonsware/android/arXiv/arXiv;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    return-object v2

    .line 1015
    .end local v0    # "holder":Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/commonsware/android/arXiv/arXiv$myCustomAdapter$ViewHolder;
    goto :goto_0
.end method
