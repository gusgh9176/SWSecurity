.class public Lcom/akop/bach/widget/XboxLive2x2Gamercard;
.super Landroid/appwidget/AppWidgetProvider;
.source "XboxLive2x2Gamercard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;,
        Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;,
        Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
    }
.end annotation


# static fields
.field private static final gameViews:[I

.field private static final starResources:[I

.field private static final starViews:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->starViews:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->starResources:[I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->gameViews:[I

    return-void

    .line 53
    :array_0
    .array-data 4
        0x7f0b009d
        0x7f0b009e
        0x7f0b009f
        0x7f0b00a0
        0x7f0b00a1
    .end array-data

    .line 61
    :array_1
    .array-data 4
        0x7f02006f
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x7f0b00a3
        0x7f0b00a4
        0x7f0b00a5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 241
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->gameViews:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
    .param p2, "x2"    # Landroid/widget/RemoteViews;
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 226
    invoke-static {p0}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/akop/bach/Preferences;->getWidget(I)Lcom/akop/bach/Preferences$WidgetInfo;

    move-result-object v0

    .line 227
    .local v0, "info":Lcom/akop/bach/Preferences$WidgetInfo;
    if-nez v0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 230
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
    .line 210
    :try_start_0
    invoke-static {p1, p2}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v0

    .line 211
    .local v0, "account":Lcom/akop/bach/XboxLiveAccount;
    if-nez v0, :cond_1

    .line 222
    .end local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "account":Lcom/akop/bach/XboxLiveAccount;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
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

    .line 374
    invoke-static {p1, p2}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->getAccount(Landroid/content/Context;I)Lcom/akop/bach/XboxLiveAccount;

    move-result-object v4

    .line 375
    .local v4, "account":Lcom/akop/bach/XboxLiveAccount;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030028

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v1, "views":Landroid/widget/RemoteViews;
    if-nez v4, :cond_1

    .line 380
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "Widget %d is referencing an invalid account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_0
    const v0, 0x7f0b0066

    const v2, 0x7f08000d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 474
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const-string v0, "Updating widget %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_2
    sget-object v0, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 397
    .local v10, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 398
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    invoke-static {p1, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 403
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const v0, 0x7f0b008c

    invoke-virtual {v1, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 407
    invoke-static {p1, v4}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->load(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;

    move-result-object v0

    invoke-static {p1, v0, v1, p2}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;Landroid/widget/RemoteViews;I)V

    .line 410
    invoke-virtual {p0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 413
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;

    move-object v2, p0

    move v3, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;-><init>(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILcom/akop/bach/XboxLiveAccount;ZLandroid/content/Context;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static renderWidget(Landroid/content/Context;Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;Landroid/widget/RemoteViews;I)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pd"    # Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const v12, 0x7f0b0066

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamertag:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->avatarUrl:Ljava/lang/String;

    .local v3, "iconUrl":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 298
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 302
    const v12, 0x7f0b009c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 318
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const v12, 0x7f0b00a2

    const v13, 0x7f080163

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gamerscore:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 323
    const/4 v11, 0x0

    .local v11, "starPos":I
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v5, 0x4

    .local v5, "k":I
    :goto_2
    const/4 v12, 0x5

    if-ge v11, v12, :cond_6

    .line 325
    invoke-static/range {p1 .. p1}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->access$300(Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;)I

    move-result v12

    if-ge v12, v4, :cond_4

    const/4 v10, 0x0

    .line 329
    .local v10, "res":I
    :goto_3
    sget-object v12, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->starViews:[I

    aget v12, v12, v11

    sget-object v13, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->starResources:[I

    aget v13, v13, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 323
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 308
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v10    # "res":I
    .end local v11    # "starPos":I
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;-><init>(Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;)V

    .line 310
    .local v7, "param":Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;
    iput-object v3, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->imageUrl:Ljava/lang/String;

    .line 311
    const v12, 0x7f0b009c

    iput v12, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->resId:I

    .line 312
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 314
    new-instance v12, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;)V

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 326
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "param":Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v11    # "starPos":I
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->access$300(Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;)I

    move-result v12

    if-lt v12, v5, :cond_5

    const/4 v10, 0x4

    .restart local v10    # "res":I
    goto :goto_3

    .line 327
    .end local v10    # "res":I
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->access$300(Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;)I

    move-result v12

    sub-int v10, v12, v4

    .restart local v10    # "res":I
    goto :goto_3

    .line 333
    .end local v10    # "res":I
    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 335
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v8, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    array-length v6, v12

    .local v6, "n":I
    :goto_4
    if-ge v2, v6, :cond_9

    .line 338
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/akop/bach/widget/XboxLive2x2Gamercard$ProfileData;->gameIconUrls:[Ljava/lang/String;

    aget-object v3, v12, v2

    if-eqz v3, :cond_7

    .line 340
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 344
    sget-object v12, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->gameViews:[I

    aget v12, v12, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 336
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 350
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_8
    new-instance v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;

    const/4 v12, 0x0

    invoke-direct {v7, v12}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;-><init>(Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;)V

    .line 352
    .restart local v7    # "param":Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;
    iput-object v3, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->imageUrl:Ljava/lang/String;

    .line 353
    sget-object v12, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->gameViews:[I

    aget v12, v12, v2

    iput v12, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->resId:I

    .line 354
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;->views:Landroid/widget/RemoteViews;

    .line 356
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 361
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "param":Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 363
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v9, v12, [Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;

    .line 364
    .local v9, "params":[Lcom/akop/bach/widget/XboxLive2x2Gamercard$TaskParam;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 366
    new-instance v12, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;-><init>(Lcom/akop/bach/widget/XboxLive2x2Gamercard$1;)V

    invoke-virtual {v12, v9}, Lcom/akop/bach/widget/XboxLive2x2Gamercard$AsyncImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 181
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string v4, "XBoxLiveGamerCard::onDelete called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 184
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

    .line 187
    .local v0, "appWidgetId":I
    invoke-static {p1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/akop/bach/Preferences;->deleteWidget(I)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
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
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 197
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const-string v4, "XBoxLiveGamerCard::onUpdate called"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 200
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

    .line 201
    .local v0, "appWidgetId":I
    const/4 v4, 0x0

    invoke-static {p2, p1, v0, v4}, Lcom/akop/bach/widget/XboxLive2x2Gamercard;->refreshWidget(Landroid/appwidget/AppWidgetManager;Landroid/content/Context;IZ)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "appWidgetId":I
    :cond_1
    return-void
.end method
