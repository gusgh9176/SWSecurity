.class public Lcom/akop/bach/SectionedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/SectionedAdapter$HeaderContainer;
    }
.end annotation


# static fields
.field private static final TYPE_SECTION_EMPTY:I = 0x1

.field private static final TYPE_SECTION_HEADER:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEmptyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaders:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/akop/bach/SectionedAdapter$HeaderContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/akop/bach/SectionedAdapter$HeaderContainer;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/akop/bach/SectionedAdapter;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/SectionedAdapter;->mEmptyViews:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/akop/bach/SectionedAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    .line 76
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 80
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/akop/bach/SectionedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, "tv":Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 84
    new-instance v0, Lcom/akop/bach/SectionedAdapter$HeaderContainer;

    invoke-direct {v0, p1, p2}, Lcom/akop/bach/SectionedAdapter$HeaderContainer;-><init>(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 86
    .local v0, "hc":Lcom/akop/bach/SectionedAdapter$HeaderContainer;
    iget-object v2, p0, Lcom/akop/bach/SectionedAdapter;->mEmptyViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lcom/akop/bach/SectionedAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "total":I
    iget-object v3, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 116
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 118
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v4, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 96
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 99
    .local v3, "size":I
    if-nez p1, :cond_0

    .line 108
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v3    # "size":I
    :goto_1
    return-object v2

    .line 101
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/Object;
    .restart local v3    # "size":I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 102
    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 105
    :cond_1
    sub-int/2addr p1, v3

    .line 106
    goto :goto_0

    .line 108
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 133
    const/4 v4, 0x2

    .line 134
    .local v4, "type":I
    iget-object v6, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    .local v2, "section":Ljava/lang/Object;
    iget-object v6, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 137
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 140
    .local v3, "size":I
    if-nez p1, :cond_1

    .line 142
    if-gt v3, v5, :cond_0

    .line 156
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v3    # "size":I
    :goto_1
    return v5

    .line 145
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/Object;
    .restart local v3    # "size":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 148
    :cond_1
    if-ge p1, v3, :cond_2

    .line 149
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 152
    :cond_2
    sub-int/2addr p1, v3

    .line 153
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v6

    add-int/2addr v4, v6

    .line 154
    goto :goto_0

    .line 156
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "sectionnum":I
    iget-object v5, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 175
    .local v2, "section":Ljava/lang/Object;
    iget-object v5, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 176
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 179
    .local v4, "size":I
    if-nez p1, :cond_1

    .line 181
    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/akop/bach/SectionedAdapter;->mEmptyViews:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 195
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v4    # "size":I
    :goto_1
    return-object v5

    .line 184
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/Object;
    .restart local v4    # "size":I
    :cond_0
    iget-object v5, p0, Lcom/akop/bach/SectionedAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 187
    :cond_1
    if-ge p1, v4, :cond_2

    .line 188
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 191
    :cond_2
    sub-int/2addr p1, v4

    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 193
    goto :goto_0

    .line 195
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/Object;
    .end local v4    # "size":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 124
    const/4 v2, 0x2

    .line 125
    .local v2, "total":I
    iget-object v3, p0, Lcom/akop/bach/SectionedAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 126
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 128
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/akop/bach/SectionedAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
