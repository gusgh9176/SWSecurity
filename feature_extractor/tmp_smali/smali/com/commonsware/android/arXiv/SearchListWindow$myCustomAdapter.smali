.class Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchListWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/android/arXiv/SearchListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myCustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/commonsware/android/arXiv/SearchListWindow;


# direct methods
.method constructor <init>(Lcom/commonsware/android/arXiv/SearchListWindow;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    .line 127
    const v0, 0x7f030015

    invoke-static {p1}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$1(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    move-object v2, p2

    .line 135
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/SearchListWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 137
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 138
    new-instance v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;-><init>(Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;)V

    .line 139
    .local v0, "holder":Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 141
    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    .line 142
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$1(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$2(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$3(Lcom/commonsware/android/arXiv/SearchListWindow;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter;->this$0:Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-static {v4}, Lcom/commonsware/android/arXiv/SearchListWindow;->access$2(Lcom/commonsware/android/arXiv/SearchListWindow;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_1

    .line 152
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    return-object v2

    .line 144
    .end local v0    # "holder":Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;
    goto :goto_0

    .line 154
    :cond_1
    :try_start_1
    iget-object v3, v0, Lcom/commonsware/android/arXiv/SearchListWindow$myCustomAdapter$ViewHolder;->linLay:Landroid/widget/LinearLayout;

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v3

    goto :goto_1
.end method
