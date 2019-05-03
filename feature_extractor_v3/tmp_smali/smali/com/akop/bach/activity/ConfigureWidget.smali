.class public abstract Lcom/akop/bach/activity/ConfigureWidget;
.super Landroid/app/ListActivity;
.source "ConfigureWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/ConfigureWidget$1;,
        Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;,
        Lcom/akop/bach/activity/ConfigureWidget$AccountInfoComparator;
    }
.end annotation


# instance fields
.field protected mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    return-void
.end method

.method private refreshAccounts()V
    .locals 12

    .prologue
    .line 77
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/akop/bach/Preferences;->getAccounts()[Lcom/akop/bach/BasicAccount;

    move-result-object v2

    .line 79
    .local v2, "accounts":[Lcom/akop/bach/BasicAccount;
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getAccountClass()Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "accountClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;>;"
    move-object v4, v2

    .local v4, "arr$":[Lcom/akop/bach/BasicAccount;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v4, v5

    .line 83
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    new-instance v9, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;-><init>(Lcom/akop/bach/activity/ConfigureWidget;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "account":Lcom/akop/bach/BasicAccount;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v6, v9, [Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;

    .line 88
    .local v6, "infos":[Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;
    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    new-instance v9, Lcom/akop/bach/activity/ConfigureWidget$AccountInfoComparator;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/akop/bach/activity/ConfigureWidget$AccountInfoComparator;-><init>(Lcom/akop/bach/activity/ConfigureWidget;Lcom/akop/bach/activity/ConfigureWidget$1;)V

    invoke-static {v6, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    invoke-direct {v3, p0, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 93
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected abstract getAccountClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract getWidgetClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/akop/bach/activity/ConfigureWidget;->mAppWidgetId:I

    .line 66
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 67
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/akop/bach/activity/ConfigureWidget;->refreshAccounts()V

    .line 70
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 128
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getListView()Landroid/widget/ListView;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;

    .line 129
    .local v8, "selected":Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v6

    .line 130
    .local v6, "prefs":Lcom/akop/bach/Preferences;
    iget-object v10, v8, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/akop/bach/Preferences;->getAccount(Ljava/lang/String;)Lcom/akop/bach/BasicAccount;

    move-result-object v1

    .line 131
    .local v1, "account":Lcom/akop/bach/BasicAccount;
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getWidgetClass()Ljava/lang/Class;

    move-result-object v9

    .line 133
    .local v9, "widgetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 135
    new-instance v3, Lcom/akop/bach/Preferences$WidgetInfo;

    invoke-direct {v3}, Lcom/akop/bach/Preferences$WidgetInfo;-><init>()V

    .line 137
    .local v3, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    iput-object v1, v3, Lcom/akop/bach/Preferences$WidgetInfo;->account:Lcom/akop/bach/BasicAccount;

    .line 138
    iget v10, p0, Lcom/akop/bach/activity/ConfigureWidget;->mAppWidgetId:I

    iput v10, v3, Lcom/akop/bach/Preferences$WidgetInfo;->widgetId:I

    .line 139
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->getWidgetClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v3, Lcom/akop/bach/Preferences$WidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 142
    invoke-virtual {v6, v3}, Lcom/akop/bach/Preferences;->addWidget(Lcom/akop/bach/Preferences$WidgetInfo;)V

    .line 144
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    const-string v10, "AppWidget %d configured with account %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/akop/bach/activity/ConfigureWidget;->mAppWidgetId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v8, Lcom/akop/bach/activity/ConfigureWidget$AccountInfo;->uuid:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    const/4 v10, 0x3

    new-array v5, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/appwidget/AppWidgetManager;

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-class v11, Landroid/content/Context;

    aput-object v11, v5, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v10

    .line 154
    .local v5, "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-string v10, "initialize"

    invoke-virtual {v9, v10, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 156
    .local v4, "initialize":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    iget v13, p0, Lcom/akop/bach/activity/ConfigureWidget;->mAppWidgetId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v4    # "initialize":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v7, "result":Landroid/content/Intent;
    const-string v10, "appWidgetId"

    iget v11, p0, Lcom/akop/bach/activity/ConfigureWidget;->mAppWidgetId:I

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v7}, Lcom/akop/bach/activity/ConfigureWidget;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->finish()V

    .line 176
    .end local v3    # "info":Lcom/akop/bach/Preferences$WidgetInfo;
    .end local v5    # "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "result":Landroid/content/Intent;
    :cond_1
    return-void

    .line 159
    .restart local v3    # "info":Lcom/akop/bach/Preferences$WidgetInfo;
    .restart local v5    # "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 162
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :cond_2
    const v10, 0x7f080161

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 167
    invoke-virtual {p0}, Lcom/akop/bach/activity/ConfigureWidget;->finish()V

    goto :goto_0
.end method
