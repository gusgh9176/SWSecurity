.class public Lcom/akop/bach/widget/XboxLiveGamerstrip;
.super Landroid/appwidget/AppWidgetProvider;
.source "XboxLiveGamerstrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;,
        Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;,
        Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
    }
.end annotation


# static fields
.field private static final gameViews:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/widget/XboxLiveGamerstrip;->gameViews:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b00a3
        0x7f0b00a4
        0x7f0b00a5
        0x7f0b00ed
        0x7f0b00ee
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 207
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/akop/bach/Preferences;->getWidget(I)Lcom/akop/bach/Preferences$WidgetInfo;

    move-result-object v0

    .line 208
    .local v0, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/akop/bach/Preferences$WidgetInfo;->account:Lcom/akop/bach/BasicAccount;

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    goto :goto_0
.end method

.method public static initialize(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;I)V
    .locals 3
    .param p0, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 191
    :try_start_0
    invoke-static {p1, p2}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    .line 192
    .local v0, "account":Lcom/akop/bach/XboxLiveAccount;
    if-nez v0, :cond_1

    .line 203
    .end local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
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

    .line 344
    invoke-static {p1, p2}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v1

    .line 345
    .local v1, "account":Lcom/akop/bach/XboxLiveAccount;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030045

    invoke-direct {v4, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 348
    .local v4, "views":Landroid/widget/RemoteViews;
    if-nez v1, :cond_1

    .line 350
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Widget %d is referencing an invalid account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    const v0, 0x7f0b0066

    const v2, 0x7f08000d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 440
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    const-string v0, "Updating widget %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_2
    sget-object v0, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 367
    .local v10, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-static {p1, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 373
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0b008c

    invoke-virtual {v4, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 377
    invoke-static {p1, v1}, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;

    move-result-object v0

    invoke-static {p1, v0, v4, p2}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V

    .line 380
    invoke-virtual {p0, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 383
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;

    move v2, p3

    move-object v3, p1

    move v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/widget/XboxLiveGamerstrip$1;-><init>(Lcom/akop/bach/XboxLiveAccount;ZLandroid/content/Context;Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 439
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pd"    # Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const v7, 0x7f0b0066

    iget-object v8, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamertag:Ljava/lang/String;

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    iget-object v2, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->avatarUrl:Ljava/lang/String;

    .local v2, "iconUrl":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 279
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 283
    const v7, 0x7f0b009c

    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 299
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const v7, 0x7f0b00a2

    const v8, 0x7f080163

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gamerscore:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 303
    iget-object v7, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 305
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v5, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    array-length v3, v7

    .local v3, "n":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 308
    iget-object v7, p1, Lcom/akop/bach/widget/XboxLiveGamerstrip$ProfileData;->gameIconUrls:[Ljava/lang/String;

    aget-object v2, v7, v1

    if-eqz v2, :cond_3

    .line 310
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 314
    sget-object v7, Lcom/akop/bach/widget/XboxLiveGamerstrip;->gameViews:[I

    aget v7, v7, v1

    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 306
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v5    # "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;>;"
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    new-instance v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;-><init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V

    .line 291
    .local v4, "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    iput-object v2, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->imageUrl:Ljava/lang/String;

    .line 292
    const v7, 0x7f0b009c

    iput v7, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->resId:I

    .line 293
    iput-object p2, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 295
    new-instance v7, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 320
    .end local v4    # "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;>;"
    :cond_5
    new-instance v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;-><init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V

    .line 322
    .restart local v4    # "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    iput-object v2, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->imageUrl:Ljava/lang/String;

    .line 323
    sget-object v7, Lcom/akop/bach/widget/XboxLiveGamerstrip;->gameViews:[I

    aget v7, v7, v1

    iput v7, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->resId:I

    .line 324
    iput-object p2, v4, Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 326
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 331
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "param":Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 333
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;

    .line 334
    .local v6, "params":[Lcom/akop/bach/widget/XboxLiveGamerstrip$TaskParam;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 336
    new-instance v7, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/XboxLiveGamerstrip$1;)V

    invoke-virtual {v7, v6}, Lcom/akop/bach/widget/XboxLiveGamerstrip$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 162
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    const-string v4, "XBoxLiveGamerstrip::onDelete called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 165
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

    .line 168
    .local v0, "appWidgetId":I
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/akop/bach/Preferences;->deleteWidget(I)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
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
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 178
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    const-string v4, "XBoxLiveGamerstrip::onUpdate called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 181
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

    .line 182
    .local v0, "appWidgetId":I
    const/4 v4, 0x0

    invoke-static {p2, p1, v0, v4}, Lcom/akop/bach/widget/XboxLiveGamerstrip;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method
