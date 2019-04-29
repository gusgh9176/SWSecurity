.class public Lcom/commonsware/android/arXiv/SubarXiv;
.super Landroid/app/Activity;
.source "SubarXiv.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final mAddViewSignature:[Ljava/lang/Class;

.field private static final mRemoveAllViewsSignature:[Ljava/lang/Class;


# instance fields
.field private headerTextView:Landroid/widget/TextView;

.field private items:[Ljava/lang/String;

.field public list:Landroid/widget/ListView;

.field private mAddView:Ljava/lang/reflect/Method;

.field private mAddViewArgs:[Ljava/lang/Object;

.field private mRemoveAllViews:Ljava/lang/reflect/Method;

.field private mRemoveAllViewsArgs:[Ljava/lang/Object;

.field private mySourcePref:I

.field private name:Ljava/lang/String;

.field private shortItems:[Ljava/lang/String;

.field public thisActivity:Landroid/content/Context;

.field private urls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Ljava/lang/Class;

    .line 78
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 80
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/widget/RemoteViews;

    aput-object v1, v0, v3

    .line 79
    sput-object v0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewSignature:[Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewArgs:[Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mySourcePref:I

    .line 63
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v8, -0x2

    .line 90
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v11

    check-cast v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v11, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    new-instance v0, Lcom/commonsware/android/arXiv/arXivDB;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    iget v5, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mySourcePref:I

    if-nez v5, :cond_1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "search_query=cat:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SubarXiv;->urls:[Ljava/lang/String;

    iget v6, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "tempquery":Ljava/lang/String;
    iget v1, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "http://export.arxiv.org/api/query?"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string v5, "&sortBy=submittedDate&sortOrder=ascending"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "tempurl":Ljava/lang/String;
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    iget v5, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v1, v1, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 106
    new-instance v12, Lcom/commonsware/android/arXiv/SubarXiv$1;

    invoke-direct {v12, p0}, Lcom/commonsware/android/arXiv/SubarXiv$1;-><init>(Lcom/commonsware/android/arXiv/SubarXiv;)V

    .line 111
    .local v12, "t9":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 119
    .end local v12    # "t9":Ljava/lang/Thread;
    :goto_0
    invoke-virtual {v0}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 121
    const/4 v1, 0x1

    .end local v0    # "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    .end local v2    # "tempquery":Ljava/lang/String;
    .end local v3    # "tempurl":Ljava/lang/String;
    .end local v11    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_1
    return v1

    .line 91
    :catch_0
    move-exception v10

    .line 92
    .local v10, "e":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 113
    .end local v10    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    .restart local v11    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_1
    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->urls:[Ljava/lang/String;

    iget v5, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v2, v4, v5

    .line 114
    .restart local v2    # "tempquery":Ljava/lang/String;
    move-object v3, v2

    .line 115
    .restart local v3    # "tempurl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    iget v6, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " (RSS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    iget v6, v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v6, v4, v6

    move-object v4, v0

    move-object v7, v3

    move v9, v8

    invoke-virtual/range {v4 .. v9}, Lcom/commonsware/android/arXiv/arXivDB;->insertFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 116
    const v4, 0x7f070005

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/SubarXiv;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SubarXiv;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v3, "keyname"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->name:Ljava/lang/String;

    .line 132
    const-string v3, "keyurls"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->urls:[Ljava/lang/String;

    .line 133
    const-string v3, "keyitems"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->items:[Ljava/lang/String;

    .line 134
    const-string v3, "keyshortitems"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    .line 136
    const v3, 0x7f090027

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/SubarXiv;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->headerTextView:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SubarXiv;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 138
    const-string v4, "fonts/LiberationSans.ttf"

    .line 137
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 139
    .local v0, "face":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    const v3, 0x7f090028

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/SubarXiv;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->list:Landroid/widget/ListView;

    .line 143
    iput-object p0, p0, Lcom/commonsware/android/arXiv/SubarXiv;->thisActivity:Landroid/content/Context;

    .line 145
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->headerTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->list:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 148
    const v5, 0x1090003

    iget-object v6, p0, Lcom/commonsware/android/arXiv/SubarXiv;->items:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->list:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/commonsware/android/arXiv/SubarXiv;->registerForContextMenu(Landroid/view/View;)V

    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 154
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sourcelist"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mySourcePref:I

    .line 156
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 160
    const/16 v0, 0x3e8

    const v1, 0x7f070003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 161
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v3, p0, Lcom/commonsware/android/arXiv/SubarXiv;->mySourcePref:I

    if-nez v3, :cond_1

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v3, "keyname"

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "search_query=cat:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->urls:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "tempquery":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_0
    const-string v3, "keyquery"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://export.arxiv.org/api/query?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    const-string v4, "&sortBy=submittedDate&sortOrder=ascending"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "tempurl":Ljava/lang/String;
    const-string v3, "keyurl"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/SubarXiv;->startActivity(Landroid/content/Intent;)V

    .line 183
    .end local v1    # "tempquery":Ljava/lang/String;
    .end local v2    # "tempurl":Ljava/lang/String;
    :goto_0
    return-void

    .line 178
    .end local v0    # "myIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/commonsware/android/arXiv/RSSListWindow;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v0    # "myIntent":Landroid/content/Intent;
    const-string v3, "keyname"

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->shortItems:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v3, "keyurl"

    iget-object v4, p0, Lcom/commonsware/android/arXiv/SubarXiv;->urls:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/SubarXiv;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateWidget()V
    .locals 28

    .prologue
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/commonsware/android/arXiv/SubarXiv;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 188
    .local v3, "context":Landroid/content/Context;
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/high16 v25, 0x7f030000

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 190
    .local v22, "views":Landroid/widget/RemoteViews;
    new-instance v9, Landroid/content/Intent;

    const-class v24, Lcom/commonsware/android/arXiv/arXiv;

    move-object/from16 v0, v24

    invoke-direct {v9, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v9, "intent":Landroid/content/Intent;
    const-string v19, "widget"

    .line 192
    .local v19, "typestring":Ljava/lang/String;
    const-string v24, "keywidget"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "foobar://"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v3, v0, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 196
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    const v24, 0x7f090002

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 198
    new-instance v4, Lcom/commonsware/android/arXiv/arXivDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->thisActivity:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/commonsware/android/arXiv/arXivDB;-><init>(Landroid/content/Context;)V

    .line 199
    .local v4, "droidDB":Lcom/commonsware/android/arXiv/arXivDB;
    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->getFeeds()Ljava/util/List;

    move-result-object v7

    .line 200
    .local v7, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/commonsware/android/arXiv/Feed;>;"
    invoke-virtual {v4}, Lcom/commonsware/android/arXiv/arXivDB;->close()V

    .line 202
    const-string v6, ""

    .line 204
    .local v6, "favText":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 206
    :try_start_0
    const-class v24, Landroid/widget/RemoteViews;

    const-string v25, "removeAllViews"

    .line 207
    sget-object v26, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViewsSignature:[Ljava/lang/Class;

    .line 206
    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViews:Ljava/lang/reflect/Method;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const v26, 0x7f090002

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViews:Ljava/lang/reflect/Method;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mRemoveAllViewsArgs:[Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_1

    .line 262
    :cond_0
    return-void

    .line 215
    :cond_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/commonsware/android/arXiv/Feed;

    .line 217
    .local v8, "feed":Lcom/commonsware/android/arXiv/Feed;
    iget-object v0, v8, Lcom/commonsware/android/arXiv/Feed;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "query"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 219
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "http://export.arxiv.org/api/query?"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/commonsware/android/arXiv/Feed;->shortTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 220
    const-string v26, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 219
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 222
    .local v21, "urlAddressTemp":Ljava/lang/String;
    const/4 v13, 0x0

    .line 224
    .local v13, "numberOfTotalResults":I
    :try_start_1
    new-instance v20, Ljava/net/URL;

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v20, "url":Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v16

    .line 226
    .local v16, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v15

    .line 227
    .local v15, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v23

    .line 228
    .local v23, "xr":Lorg/xml/sax/XMLReader;
    new-instance v11, Lcom/commonsware/android/arXiv/XMLHandlerSearch;

    invoke-direct {v11}, Lcom/commonsware/android/arXiv/XMLHandlerSearch;-><init>()V

    .line 229
    .local v11, "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 230
    new-instance v25, Lorg/xml/sax/InputSource;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 231
    iget v13, v11, Lcom/commonsware/android/arXiv/XMLHandlerSearch;->numTotalItems:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    .end local v11    # "myXMLHandler":Lcom/commonsware/android/arXiv/XMLHandlerSearch;
    .end local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v20    # "url":Ljava/net/URL;
    .end local v23    # "xr":Lorg/xml/sax/XMLReader;
    :goto_2
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const v26, 0x7f030001

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v17, "tempViews":Landroid/widget/RemoteViews;
    iget-object v6, v8, Lcom/commonsware/android/arXiv/Feed;->title:Ljava/lang/String;

    .line 237
    iget v0, v8, Lcom/commonsware/android/arXiv/Feed;->count:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 238
    iget v0, v8, Lcom/commonsware/android/arXiv/Feed;->count:I

    move/from16 v25, v0

    sub-int v12, v13, v25

    .line 239
    .local v12, "newArticles":I
    const v25, 0x7f090003

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 243
    .end local v12    # "newArticles":I
    :goto_3
    const v25, 0x7f090004

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 246
    :try_start_2
    const-class v25, Landroid/widget/RemoteViews;

    const-string v26, "addView"

    .line 247
    sget-object v27, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewSignature:[Ljava/lang/Class;

    .line 246
    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/commonsware/android/arXiv/SubarXiv;->mAddView:Ljava/lang/reflect/Method;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const v27, 0x7f090002

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aput-object v17, v25, v26

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddView:Ljava/lang/reflect/Method;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->mAddViewArgs:[Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .end local v13    # "numberOfTotalResults":I
    .end local v17    # "tempViews":Landroid/widget/RemoteViews;
    .end local v21    # "urlAddressTemp":Ljava/lang/String;
    :cond_2
    :goto_4
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->thisActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    const-class v26, Lcom/commonsware/android/arXiv/ArxivAppWidgetProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v18, "thisWidget":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/commonsware/android/arXiv/SubarXiv;->thisActivity:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 258
    .local v10, "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 241
    .end local v10    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v18    # "thisWidget":Landroid/content/ComponentName;
    .restart local v13    # "numberOfTotalResults":I
    .restart local v17    # "tempViews":Landroid/widget/RemoteViews;
    .restart local v21    # "urlAddressTemp":Ljava/lang/String;
    :cond_3
    const v25, 0x7f090003

    const-string v26, "0"

    move-object/from16 v0, v17

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 252
    :catch_0
    move-exception v5

    .line 253
    .local v5, "ef":Ljava/lang/Exception;
    const v25, 0x7f090001

    const-string v26, "Widget only supported on Android 2.1+"

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 232
    .end local v5    # "ef":Ljava/lang/Exception;
    .end local v17    # "tempViews":Landroid/widget/RemoteViews;
    :catch_1
    move-exception v25

    goto/16 :goto_2

    .line 213
    .end local v8    # "feed":Lcom/commonsware/android/arXiv/Feed;
    .end local v13    # "numberOfTotalResults":I
    .end local v21    # "urlAddressTemp":Ljava/lang/String;
    :catch_2
    move-exception v24

    goto/16 :goto_0
.end method
