.class public Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "GameCatalogDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mDescription:Landroid/webkit/WebView;

.field private mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

.field private mGallery:Landroid/widget/Gallery;

.field private mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mItem:Lcom/akop/bach/PSN$GameCatalogItem;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mScaledScreenshotHeight:I

.field private mScaledScreenshotWidth:I

.field private mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 87
    new-instance v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 525
    new-instance v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$6;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 542
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/ImageCache$OnImageReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;Lcom/akop/bach/PSN$GameCatalogItemDetails;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    .param p1, "x1"    # Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    return-object p1
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->resetAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Lcom/akop/bach/PSN$GameCatalogItem;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addReminder(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    const/4 v8, 0x1

    .line 417
    if-eqz p1, :cond_0

    iget-wide v4, p1, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 419
    :cond_0
    const v3, 0x7f08002b

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 421
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 444
    .end local v2    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 426
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v3, "beginTime"

    iget-wide v4, p1, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 429
    const-string v3, "allDay"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v3, "title"

    const v4, 0x7f080095

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f08002c

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 442
    .restart local v2    # "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static isRemindable(Lcom/akop/bach/PSN$GameCatalogItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 409
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 411
    .local v0, "now":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    iget-wide v2, p0, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDateTicks:J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    .locals 1
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->newInstance(Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 131
    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;-><init>()V

    .line 133
    .local v1, "f":Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    const-string v2, "gameItem"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v1
.end method

.method public static openSite(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method private resetAdapter()V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "Resetting gallery adapter..."

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGallery:Landroid/widget/Gallery;

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    .line 395
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 397
    :cond_1
    return-void
.end method

.method private synchronizeLocal()V
    .locals 20

    .prologue
    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getView()Landroid/view/View;

    move-result-object v16

    .line 302
    .local v16, "container":Landroid/view/View;
    if-nez v16, :cond_0

    .line 385
    :goto_0
    return-void

    .line 305
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    .line 306
    new-instance v5, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v5}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-nez v5, :cond_2

    .line 310
    const v5, 0x7f0b0057

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 311
    const v5, 0x7f0b006a

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_2
    const v5, 0x7f0b0057

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    const v5, 0x7f0b006a

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 323
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const v5, 0x7f0b006b

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .local v17, "item":Landroid/view/View;
    if-eqz v17, :cond_3

    .line 325
    const v5, 0x7f0b0078

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 326
    .local v19, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v5, 0x7f0b007b

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 328
    .restart local v19    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v5, 0x7f0b007c

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 330
    .restart local v19    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    const v5, 0x7f08010d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    iget-object v9, v9, Lcom/akop/bach/PSN$GameCatalogItem;->ReleaseDate:Ljava/lang/String;

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v5, 0x7f0b0077

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 335
    .local v18, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    iget-object v4, v5, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    .line 338
    .local v4, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 340
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v18    # "iv":Landroid/widget/ImageView;
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_3
    :goto_2
    const v6, 0x7f080158

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_3
    aput-object v5, v8, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "webContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDescription:Landroid/webkit/WebView;

    const/4 v6, 0x0

    const-string v8, "text/html"

    const-string v9, "utf-8"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const v5, 0x7f0b006e

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .restart local v18    # "iv":Landroid/widget/ImageView;
    if-eqz v18, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    iget-object v4, v5, Lcom/akop/bach/PSN$GameCatalogItemDetails;->BoxartUrl:Ljava/lang/String;

    .line 376
    .restart local v4    # "iconUrl":Ljava/lang/String;
    sget-object v5, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    .line 377
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p0

    invoke-virtual/range {v9 .. v15}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 379
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "iconUrl":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGallery:Landroid/widget/Gallery;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    if-nez v5, :cond_9

    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/Gallery;->setVisibility(I)V

    goto/16 :goto_0

    .line 330
    .end local v7    # "webContent":Ljava/lang/String;
    .end local v18    # "iv":Landroid/widget/ImageView;
    .restart local v19    # "tv":Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x4

    goto/16 :goto_1

    .line 344
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "iconUrl":Ljava/lang/String;
    .restart local v18    # "iv":Landroid/widget/ImageView;
    :cond_7
    if-eqz v4, :cond_3

    .line 346
    new-instance v5, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v3 .. v10}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_2

    .line 366
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v18    # "iv":Landroid/widget/ImageView;
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    iget-object v5, v5, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    goto :goto_3

    .line 382
    .restart local v7    # "webContent":Ljava/lang/String;
    .restart local v18    # "iv":Landroid/widget/ImageView;
    :cond_9
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v1}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 149
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v2, 0x60

    iput v2, v1, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 151
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 152
    const-string v1, "gameItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PSN$GameCatalogItem;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v1, "details"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PSN$GameCatalogItemDetails;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .line 158
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->setHasOptionsMenu(Z)V

    .line 159
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 476
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 478
    const v0, 0x7f0a0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 479
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 174
    if-nez p2, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const v3, 0x7f030017

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 181
    .local v1, "scale":F
    const/high16 v3, 0x43320000    # 178.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotWidth:I

    .line 182
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotHeight:I

    .line 184
    new-instance v3, Lcom/akop/bach/ImageCache$CachePolicy;

    iget v4, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotWidth:I

    iget v5, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScaledScreenshotHeight:I

    invoke-direct {v3, v4, v5}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(II)V

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 187
    const v3, 0x7f0b0057

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mMessage:Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mMessage:Landroid/widget/TextView;

    const v4, 0x7f08011e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 190
    const v3, 0x7f0b006d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDescription:Landroid/webkit/WebView;

    .line 191
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDescription:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 192
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDescription:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 195
    .local v2, "settings":Landroid/webkit/WebSettings;
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 197
    const v3, 0x7f0b006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGallery:Landroid/widget/Gallery;

    .line 198
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGallery:Landroid/widget/Gallery;

    new-instance v4, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;

    invoke-direct {v4, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 515
    sget-object v0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$5;-><init>(Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 507
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 500
    :pswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v1, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->addReminder(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V

    goto :goto_0

    .line 503
    :pswitch_1
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v1, v2}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->openSite(Landroid/content/Context;Lcom/akop/bach/PSN$GameCatalogItem;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x7f0b010d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 254
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 255
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 257
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 258
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 488
    const v0, 0x7f0b010c

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v1}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->isRemindable(Lcom/akop/bach/PSN$GameCatalogItem;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 491
    const v1, 0x7f0b0105

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 492
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 265
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 266
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 267
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 269
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v0}, Lcom/akop/bach/PSN$GameCatalogItemDetails;->fromItem(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .line 272
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeWithServer()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment$ImageAdapter;

    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->resetAdapter()V

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeLocal()V

    .line 279
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "details"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    :cond_0
    return-void
.end method

.method public resetTitle(Lcom/akop/bach/PSN$GameCatalogItem;)V
    .locals 1
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    .line 285
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mItem:Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-static {v0}, Lcom/akop/bach/PSN$GameCatalogItemDetails;->fromItem(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    .line 288
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeWithServer()V

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->resetAdapter()V

    .line 296
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->synchronizeLocal()V

    .line 297
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/GameCatalogDetailsFragment;->mDetails:Lcom/akop/bach/PSN$GameCatalogItemDetails;

    goto :goto_0
.end method
