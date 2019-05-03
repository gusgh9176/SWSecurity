.class public Lcom/akop/bach/widget/PsnGamerstrip;
.super Landroid/appwidget/AppWidgetProvider;
.source "PsnGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;,
        Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;,
        Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    }
.end annotation


# static fields
.field private static final gameViews:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0b0096

    aput v2, v0, v1

    sput-object v0, Lcom/akop/bach/widget/PsnGamerstrip;->gameViews:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/akop/bach/widget/PsnGamerstrip;->gameViews:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/akop/bach/widget/PsnGamerstrip;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 267
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/akop/bach/Preferences;->getWidget(I)Lcom/akop/bach/Preferences$WidgetInfo;

    move-result-object v0

    .line 268
    .local v0, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 271
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
    .line 251
    :try_start_0
    invoke-static {p1, p2}, Lcom/akop/bach/widget/PsnGamerstrip;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;

    move-result-object v0

    .line 252
    .local v0, "account":Lcom/akop/bach/PsnAccount;
    if-nez v0, :cond_1

    .line 263
    .end local v0    # "account":Lcom/akop/bach/PsnAccount;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0    # "account":Lcom/akop/bach/PsnAccount;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/akop/bach/widget/PsnGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "account":Lcom/akop/bach/PsnAccount;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    .locals 10
    .param p0, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 367
    invoke-static {p1, p2}, Lcom/akop/bach/widget/PsnGamerstrip;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/PsnAccount;

    move-result-object v1

    .line 368
    .local v1, "account":Lcom/akop/bach/PsnAccount;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030026

    invoke-direct {v4, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 371
    .local v4, "views":Landroid/widget/RemoteViews;
    if-nez v1, :cond_1

    .line 373
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "Widget %d is referencing an invalid account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_0
    const v0, 0x7f0b0066

    const v2, 0x7f08000d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 378
    invoke-virtual {p0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 456
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    const-string v0, "Updating widget %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_2
    sget-object v0, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 390
    .local v9, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 394
    invoke-static {p1, v5, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 396
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0b008c

    invoke-virtual {v4, v0, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 400
    invoke-static {p1, v1}, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;

    move-result-object v0

    invoke-static {p1, v0, v4, p2}, Lcom/akop/bach/widget/PsnGamerstrip;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V

    .line 403
    invoke-virtual {p0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 406
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/akop/bach/widget/PsnGamerstrip$1;

    move v2, p3

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/akop/bach/widget/PsnGamerstrip$1;-><init>(Lcom/akop/bach/PsnAccount;ZLandroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 455
    .local v8, "t":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pd"    # Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    const v9, 0x7f0b0091

    const/4 v10, 0x0

    .line 277
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const v7, 0x7f0b008e

    iget-object v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->onlineId:Ljava/lang/String;

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 289
    iget-object v2, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .local v2, "iconUrl":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 291
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p2, v9, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 311
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const v7, 0x7f0b0095

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesBronze:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 313
    const v7, 0x7f0b0094

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesSilver:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 315
    const v7, 0x7f0b0093

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesGold:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 317
    const v7, 0x7f0b0092

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesPlatinum:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 320
    const v7, 0x7f0b008f

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->level:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 322
    const v7, 0x7f0b0090

    iget v8, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->trophiesTotal:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 326
    iget-object v7, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 328
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v5, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    array-length v3, v7

    .local v3, "n":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 331
    iget-object v7, p1, Lcom/akop/bach/widget/PsnGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    aget-object v2, v7, v1

    if-eqz v2, :cond_3

    .line 333
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 337
    sget-object v7, Lcom/akop/bach/widget/PsnGamerstrip;->gameViews:[I

    aget v7, v7, v1

    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 329
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 301
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v5    # "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;>;"
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    new-instance v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;

    invoke-direct {v4, v10}, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;-><init>(Lcom/akop/bach/widget/PsnGamerstrip$1;)V

    .line 303
    .local v4, "param":Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    iput-object v2, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->imageUrl:Ljava/lang/String;

    .line 304
    iput v9, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->resId:I

    .line 305
    iput-object p2, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 307
    new-instance v7, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;

    invoke-direct {v7, v10}, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/PsnGamerstrip$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 343
    .end local v4    # "param":Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;>;"
    :cond_5
    new-instance v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;

    invoke-direct {v4, v10}, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;-><init>(Lcom/akop/bach/widget/PsnGamerstrip$1;)V

    .line 345
    .restart local v4    # "param":Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    iput-object v2, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->imageUrl:Ljava/lang/String;

    .line 346
    sget-object v7, Lcom/akop/bach/widget/PsnGamerstrip;->gameViews:[I

    aget v7, v7, v1

    iput v7, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->resId:I

    .line 347
    iput-object p2, v4, Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 349
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 354
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "param":Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 356
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;

    .line 357
    .local v6, "params":[Lcom/akop/bach/widget/PsnGamerstrip$TaskParam;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 359
    new-instance v7, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;

    invoke-direct {v7, v10}, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/PsnGamerstrip$1;)V

    invoke-virtual {v7, v6}, Lcom/akop/bach/widget/PsnGamerstrip$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 222
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    const-string v4, "PsnGamerstrip::onDelete called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 225
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

    .line 228
    .local v0, "appWidgetId":I
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/akop/bach/Preferences;->deleteWidget(I)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
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
    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 238
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const-string v4, "PsnGamerstrip::onUpdate called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 241
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

    .line 242
    .local v0, "appWidgetId":I
    const/4 v4, 0x0

    invoke-static {p2, p1, v0, v4}, Lcom/akop/bach/widget/PsnGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method
