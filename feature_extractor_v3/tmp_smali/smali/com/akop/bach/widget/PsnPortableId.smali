.class public Lcom/akop/bach/widget/PsnPortableId;
.super Landroid/appwidget/AppWidgetProvider;
.source "PsnPortableId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/widget/PsnPortableId$AsyncImageLoader;,
        Lcom/akop/bach/widget/PsnPortableId$TaskParam;,
        Lcom/akop/bach/widget/PsnPortableId$ProfileData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 204
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/akop/bach/widget/PsnPortableId$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/akop/bach/widget/PsnPortableId$ProfileData;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/akop/bach/widget/PsnPortableId;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnPortableId$ProfileData;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 294
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/akop/bach/Preferences;->getWidget(I)Lcom/akop/bach/Preferences$WidgetInfo;

    move-result-object v0

    .line 295
    .local v0, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    if-nez v0, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 298
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/akop/bach/Preferences$WidgetInfo;->account:Lcom/akop/bach/BasicAccount;

    check-cast v1, Lcom/akop/bach/PsnAccount;

    goto :goto_0
.end method

.method public static initialize(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;I)V
    .locals 3
    .param p0, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 278
    :try_start_0
    invoke-static {p1, p2}, Lcom/akop/bach/widget/PsnPortableId;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    .line 279
    .local v0, "account":Lcom/akop/bach/PsnAccount;
    if-nez v0, :cond_1

    .line 290
    .end local v0    # "account":Lcom/akop/bach/PsnAccount;
    :cond_0
    :goto_0
    return-void

    .line 283
    .restart local v0    # "account":Lcom/akop/bach/PsnAccount;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/akop/bach/widget/PsnPortableId;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0    # "account":Lcom/akop/bach/PsnAccount;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    .locals 11
    .param p0, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 363
    invoke-static {p1, p2}, Lcom/akop/bach/widget/PsnPortableId;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;

    move-result-object v4

    .line 364
    .local v4, "account":Lcom/akop/bach/PsnAccount;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030027

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 367
    .local v1, "views":Landroid/widget/RemoteViews;
    if-nez v4, :cond_1

    .line 369
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "Widget %d is referencing an invalid account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_0
    const v0, 0x7f0b0066

    const v2, 0x7f08000d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 463
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const-string v0, "Updating widget %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_2
    sget-object v0, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 386
    .local v10, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    invoke-static {p1, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 392
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0b008c

    invoke-virtual {v1, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 396
    invoke-static {p1, v4}, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/widget/PsnPortableId$ProfileData;

    move-result-object v0

    invoke-static {p1, v0, v1, p2}, Lcom/akop/bach/widget/PsnPortableId;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnPortableId$ProfileData;Landroid/widget/RemoteViews;I)V

    .line 399
    invoke-virtual {p0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 402
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/akop/bach/widget/PsnPortableId$1;

    move-object v2, p0

    move v3, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/widget/PsnPortableId$1;-><init>(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILcom/akop/bach/PsnAccount;ZLandroid/content/Context;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 462
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnPortableId$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pd"    # Lcom/akop/bach/widget/PsnPortableId$ProfileData;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0091

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 304
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 309
    :cond_0
    const v3, 0x7f0b008e

    iget-object v4, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->onlineId:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 316
    iget-object v1, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->avatarUrl:Ljava/lang/String;

    .local v1, "iconUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 318
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 338
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const v3, 0x7f0b008f

    iget v4, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->level:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 340
    const v3, 0x7f0b0090

    iget v4, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 342
    const v3, 0x7f0b0098

    const/16 v4, 0x64

    iget v5, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->progress:I

    invoke-virtual {p2, v3, v4, v5, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 345
    const v3, 0x7f0b0095

    const v4, 0x7f080162

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesBronze:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 347
    const v3, 0x7f0b0094

    const v4, 0x7f080169

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesSilver:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 349
    const v3, 0x7f0b0093

    const v4, 0x7f080165

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesGold:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 351
    const v3, 0x7f0b0092

    const v4, 0x7f080168

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesPlatinum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 354
    const v3, 0x7f0b009b

    iget v4, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->gamesPlayed:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 356
    const v3, 0x7f0b009a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/akop/bach/widget/PsnPortableId$ProfileData;->trophiesUnlocked:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 328
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v2, Lcom/akop/bach/widget/PsnPortableId$TaskParam;

    invoke-direct {v2, v6}, Lcom/akop/bach/widget/PsnPortableId$TaskParam;-><init>(Lcom/akop/bach/widget/PsnPortableId$1;)V

    .line 330
    .local v2, "param":Lcom/akop/bach/widget/PsnPortableId$TaskParam;
    iput-object v1, v2, Lcom/akop/bach/widget/PsnPortableId$TaskParam;->imageUrl:Ljava/lang/String;

    .line 331
    iput v5, v2, Lcom/akop/bach/widget/PsnPortableId$TaskParam;->resId:I

    .line 332
    iput-object p2, v2, Lcom/akop/bach/widget/PsnPortableId$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 334
    new-instance v3, Lcom/akop/bach/widget/PsnPortableId$AsyncImageLoader;

    invoke-direct {v3, v6}, Lcom/akop/bach/widget/PsnPortableId$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/PsnPortableId$1;)V

    new-array v4, v8, [Lcom/akop/bach/widget/PsnPortableId$TaskParam;

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Lcom/akop/bach/widget/PsnPortableId$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 249
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    const-string v4, "PsnPortableId::onDelete called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 252
    :cond_0
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 255
    .local v0, "appWidgetId":I
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/akop/bach/Preferences;->deleteWidget(I)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 265
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    const-string v4, "PsnPortableId::onUpdate called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 268
    :cond_0
    move-object v1, p3

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 269
    .local v0, "appWidgetId":I
    const/4 v4, 0x0

    invoke-static {p2, p1, v0, v4}, Lcom/akop/bach/widget/PsnPortableId;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method
