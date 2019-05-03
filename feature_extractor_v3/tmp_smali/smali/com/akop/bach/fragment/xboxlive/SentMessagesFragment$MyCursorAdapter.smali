.class Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SentMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCursorAdapter"
.end annotation


# instance fields
.field private DATE_FORMAT:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;


# direct methods
.method public constructor <init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    .line 100
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 96
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 101
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;

    .line 127
    .local v3, "vh":Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;
    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 128
    .local v4, "sentTicks":J
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "excerpt":Ljava/lang/String;
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "recipients":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 133
    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    const v7, 0x7f080136

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_0
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->sent:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 147
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    const v7, 0x7f02007e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v6, v3, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03004e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "row":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$MyCursorAdapter;->this$0:Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment;Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$1;)V

    .line 112
    .local v2, "vh":Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    const v3, 0x7f0b00f6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->summary:Landroid/widget/TextView;

    .line 115
    const v3, 0x7f0b00f9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->sent:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f0b00f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->sender:Landroid/widget/TextView;

    .line 117
    const v3, 0x7f0b00f7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/akop/bach/fragment/xboxlive/SentMessagesFragment$ViewHolder;->type:Landroid/widget/ImageView;

    .line 119
    return-object v1
.end method
