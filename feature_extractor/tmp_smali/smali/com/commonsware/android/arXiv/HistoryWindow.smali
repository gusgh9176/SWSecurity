.class public Lcom/commonsware/android/arXiv/HistoryWindow;
.super Landroid/app/ListActivity;
.source "HistoryWindow.java"


# static fields
.field public static final CLEAR_ID:I = 0x2


# instance fields
.field private droidDB:Lcom/commonsware/android/arXiv/arXivDB;

.field private header:Landroid/widget/TextView;

.field private historys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/android/arXiv/History;",
            ">;"
        }
    .end annotation
.end field

.field public list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/commonsware/android/arXiv/HistoryWindow;->deleteFiles()V

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private deleteFiles()V
    .locals 13

    .prologue
    .line 130
    new-instance v2, Ljava/io/File;

    const-string v9, "/sdcard/arXiv"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 134
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v9, v0

    if-lt v7, v9, :cond_3

    .line 143
    .end local v7    # "i":I
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/emmc/arXiv"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "dir2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "children2":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 146
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v9, v1

    if-lt v7, v9, :cond_5

    .line 155
    .end local v7    # "i":I
    :cond_1
    new-instance v3, Ljava/io/File;

    .end local v3    # "dir2":Ljava/io/File;
    const-string v9, "/media/arXiv"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v3    # "dir2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v9, v1

    if-lt v7, v9, :cond_7

    .line 167
    .end local v7    # "i":I
    :cond_2
    new-instance v9, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v9, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 168
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v9}, Lcom/commonsware/android/arXiv/arXivDB;->getHistory()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    .line 170
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 173
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v9}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 175
    new-instance v9, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v9, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 176
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v9}, Lcom/commonsware/android/arXiv/arXivDB;->getHistory()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    .line 177
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v9}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 179
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v8, "lhistory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 184
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v10, 0x7f030005

    .line 185
    const/high16 v11, 0x7f090000

    invoke-direct {v9, p0, v10, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 184
    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/HistoryWindow;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    const v9, 0x7f07000d

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 188
    return-void

    .line 135
    .end local v1    # "children2":[Ljava/lang/String;
    .end local v3    # "dir2":Ljava/io/File;
    .end local v8    # "lhistory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i":I
    :cond_3
    aget-object v5, v0, v7

    .line 136
    .local v5, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/sdcard/arXiv/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 138
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 134
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 147
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .restart local v1    # "children2":[Ljava/lang/String;
    .restart local v3    # "dir2":Ljava/io/File;
    :cond_5
    aget-object v5, v1, v7

    .line 148
    .restart local v5    # "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/emmc/arXiv/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 146
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 159
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    :cond_7
    aget-object v5, v1, v7

    .line 160
    .restart local v5    # "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/media/arXiv/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 158
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 170
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/commonsware/android/arXiv/History;

    .line 171
    .local v6, "history":Lcom/commonsware/android/arXiv/History;
    iget-object v10, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    iget-wide v11, v6, Lcom/commonsware/android/arXiv/History;->historyId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/commonsware/android/arXiv/arXivDB;->deleteHistory(Ljava/lang/Long;)Z

    goto/16 :goto_3

    .line 180
    .end local v6    # "history":Lcom/commonsware/android/arXiv/History;
    .restart local v8    # "lhistory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/commonsware/android/arXiv/History;

    .line 181
    .restart local v6    # "history":Lcom/commonsware/android/arXiv/History;
    iget-object v10, v6, Lcom/commonsware/android/arXiv/History;->displayText:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private populateMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x2

    const v1, 0x7f07000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 118
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/HistoryWindow;->setContentView(I)V

    .line 59
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/HistoryWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->header:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/HistoryWindow;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 61
    const-string v4, "fonts/LiberationSans.ttf"

    .line 60
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 62
    .local v0, "face":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->header:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->header:Landroid/widget/TextView;

    const-string v4, "History"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v3, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    .line 67
    iget-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->getHistory()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    .line 68
    iget-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->droidDB:Lcom/commonsware/android/arXiv/arXivDB;

    invoke-virtual {v3}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "lhistory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030005

    .line 76
    const/high16 v5, 0x7f090000

    invoke-direct {v3, p0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/HistoryWindow;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void

    .line 71
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/android/arXiv/History;

    .line 72
    .local v1, "history":Lcom/commonsware/android/arXiv/History;
    iget-object v4, v1, Lcom/commonsware/android/arXiv/History;->displayText:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/HistoryWindow;->populateMenu(Landroid/view/Menu;)V

    .line 108
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 81
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, ""

    .line 86
    .local v1, "filename":Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, "icount":I
    iget-object v5, p0, Lcom/commonsware/android/arXiv/HistoryWindow;->historys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/pdf"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/HistoryWindow;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    invoke-virtual {p0, v4}, Lcom/commonsware/android/arXiv/HistoryWindow;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void

    .line 87
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/commonsware/android/arXiv/History;

    .line 88
    .local v2, "history":Lcom/commonsware/android/arXiv/History;
    if-ne v3, p3, :cond_1

    .line 89
    iget-object v1, v2, Lcom/commonsware/android/arXiv/History;->url:Ljava/lang/String;

    .line 91
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "history":Lcom/commonsware/android/arXiv/History;
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/commonsware/android/arXiv/HistoryWindow;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
