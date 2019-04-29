.class Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RSSListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/RSSListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myCustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/RSSListWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/RSSListWindow;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    .line 88
    const v0, 0x7f030015

    invoke-static {p1}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$1(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    move-object v2, p2

    .line 96
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_0

    .line 97
    iget-object v3, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/RSSListWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 98
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 99
    new-instance v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;-><init>(Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;)V

    .line 100
    .local v0, "holder":Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$1(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$2(Lcom/commonsware/android/arXiv/RSSListWindow;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$3(Lcom/commonsware/android/arXiv/RSSListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/RSSListWindow;->access$2(Lcom/commonsware/android/arXiv/RSSListWindow;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_1

    .line 112
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 116
    :goto_1
    return-object v2

    .line 105
    .end local v0    # "holder":Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;
    goto :goto_0

    .line 114
    :cond_1
    iget-object v3, v0, Lcom/commonsware/android/arXiv/RSSListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
