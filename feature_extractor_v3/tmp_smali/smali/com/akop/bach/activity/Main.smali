.class public Lcom/akop/bach/activity/Main;
.super Landroid/app/Activity;
.source "Main.java"


# static fields
.field private static final URI_LIST:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/activity/Main;->URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/Main;->requestWindowFeature(I)Z

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/Main;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/akop/bach/activity/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/BasicAccount;

    .line 59
    .local v0, "account":Lcom/akop/bach/BasicAccount;
    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit account requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/akop/bach/BasicAccount;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/BasicAccount;->open(Landroid/content/Context;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/Main;->finish()V

    .line 73
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/akop/bach/activity/Main;->start()V

    goto :goto_0
.end method

.method public start()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v7, Lcom/akop/bach/activity/Main;->URI_LIST:[Landroid/net/Uri;

    .local v7, "arr$":[Landroid/net/Uri;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_2

    aget-object v1, v7, v10

    .line 81
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 85
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AccountId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 92
    :goto_1
    if-eqz v8, :cond_1

    .line 96
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 99
    .local v9, "fullUri":Landroid/net/Uri;
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 104
    .end local v9    # "fullUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v14, :cond_3

    .line 111
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v11, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v11}, Lcom/akop/bach/activity/Main;->startActivity(Landroid/content/Intent;)V

    .line 119
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_3
    return-void

    .line 117
    :cond_3
    invoke-static {p0}, Lcom/akop/bach/activity/Accounts;->actionShow(Landroid/content/Context;)V

    goto :goto_3

    .line 88
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method
