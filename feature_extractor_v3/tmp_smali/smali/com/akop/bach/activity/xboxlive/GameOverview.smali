.class public Lcom/akop/bach/activity/xboxlive/GameOverview;
.super Lcom/akop/bach/activity/xboxlive/RibbonedActivity;
.source "GameOverview.java"

# interfaces
.implements Lcom/akop/bach/ImageCache$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;,
        Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;
    }
.end annotation


# instance fields
.field private mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

.field mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mGameUrl:Ljava/lang/String;

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mLocalHandler:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

.field private mProgDlg:Landroid/app/ProgressDialog;

.field private mScaledScreenshotHeight:I

.field private mScaledScreenshotWidth:I

.field private mScreenshotAdapter:Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

.field private mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;-><init>()V

    .line 137
    new-instance v0, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mLocalHandler:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    .line 140
    new-instance v0, Lcom/akop/bach/activity/xboxlive/GameOverview$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$1;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 410
    new-instance v0, Lcom/akop/bach/activity/xboxlive/GameOverview$4;

    invoke-direct {v0, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$4;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V

    iput-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/akop/bach/activity/xboxlive/GameOverview;Lcom/akop/bach/XboxLive$GameOverviewInfo;)Lcom/akop/bach/XboxLive$GameOverviewInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$GameOverviewInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/akop/bach/activity/xboxlive/GameOverview;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScreenshotAdapter:Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mLocalHandler:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/activity/xboxlive/GameOverview;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mProgDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/akop/bach/activity/xboxlive/GameOverview;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mProgDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/akop/bach/activity/xboxlive/GameOverview;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/activity/xboxlive/GameOverview;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/activity/xboxlive/GameOverview;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/akop/bach/activity/xboxlive/GameOverview;)I
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/activity/xboxlive/GameOverview;

    .prologue
    .line 64
    iget v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotHeight:I

    return v0
.end method

.method public static actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "gameUrl"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/akop/bach/activity/xboxlive/GameOverview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method private loadGameOverview(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/akop/bach/activity/xboxlive/GameOverview$3;

    invoke-direct {v2, p0, p1}, Lcom/akop/bach/activity/xboxlive/GameOverview$3;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->runCustomTask(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$CustomTask;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 392
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 259
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    if-nez v2, :cond_0

    .line 370
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->updateRibbon()V

    .line 267
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 268
    .local v9, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Title:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "tv":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 270
    .restart local v9    # "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Description:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v2, 0x7f0b00e8

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "tv":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 272
    .restart local v9    # "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingDescription:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 277
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 279
    const v2, 0x7f0b00e7

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 280
    .local v6, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "iv":Landroid/widget/ImageView;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 288
    const v2, 0x7f0b00e5

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 289
    .restart local v6    # "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "iv":Landroid/widget/ImageView;
    :cond_2
    :goto_2
    const v2, 0x7f0b00e6

    invoke-virtual {p0, v2}, Lcom/akop/bach/activity/xboxlive/GameOverview;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Gallery;

    .line 296
    .local v8, "g":Landroid/widget/Gallery;
    new-instance v2, Lcom/akop/bach/activity/xboxlive/GameOverview$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$2;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;)V

    invoke-virtual {v8, v2}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    new-instance v2, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;-><init>(Lcom/akop/bach/activity/xboxlive/GameOverview;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScreenshotAdapter:Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    .line 369
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScreenshotAdapter:Lcom/akop/bach/activity/xboxlive/GameOverview$ImageAdapter;

    invoke-virtual {v8, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_0

    .line 283
    .end local v8    # "g":Landroid/widget/Gallery;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "iv":Landroid/widget/ImageView;
    :cond_3
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->EsrbRatingIconUrl:Ljava/lang/String;

    sget-object v7, Lcom/akop/bach/activity/xboxlive/GameOverview;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_1

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v2, v2, Lcom/akop/bach/XboxLive$GameOverviewInfo;->BannerUrl:Ljava/lang/String;

    sget-object v7, Lcom/akop/bach/activity/xboxlive/GameOverview;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 178
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/akop/bach/activity/xboxlive/GameOverview;->setContentView(I)V

    .line 181
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 182
    .local v0, "scale":F
    const/high16 v1, 0x43320000    # 178.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotWidth:I

    .line 183
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotHeight:I

    .line 185
    iput-object v4, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mProgDlg:Landroid/app/ProgressDialog;

    .line 186
    new-instance v1, Lcom/akop/bach/ImageCache$CachePolicy;

    iget v2, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotWidth:I

    iget v3, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScaledScreenshotHeight:I

    invoke-direct {v1, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(II)V

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mScreenshotPolicy:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mIconCache:Ljava/util/Map;

    .line 190
    invoke-virtual {p0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGameUrl:Ljava/lang/String;

    .line 191
    iput-object v4, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    .line 193
    if-eqz p1, :cond_0

    .line 195
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iput-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->update()V

    .line 202
    :cond_1
    return-void
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mLocalHandler:Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;

    check-cast p3, Landroid/widget/ImageView;

    .end local p3    # "param":Ljava/lang/Object;
    invoke-virtual {v0, p3, p4}, Lcom/akop/bach/activity/xboxlive/GameOverview$ServerStatusHandler;->setImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 408
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onPause()V

    .line 218
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 219
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 220
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 222
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mProgDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mProgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onResume()V

    .line 239
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 240
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 241
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGalleryListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 243
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mHandler:Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;

    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/TaskController;->isBusy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity$XboxLiveHandler;->showThrobber(Z)V

    .line 245
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mGameUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->loadGameOverview(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/akop/bach/activity/xboxlive/RibbonedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "data"

    iget-object v1, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    :cond_0
    return-void
.end method

.method protected updateRibbon()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v0}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/activity/xboxlive/GameOverview;->mData:Lcom/akop/bach/XboxLive$GameOverviewInfo;

    iget-object v0, v0, Lcom/akop/bach/XboxLive$GameOverviewInfo;->Title:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/akop/bach/activity/xboxlive/GameOverview;->updateRibbon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    return-void

    .line 399
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
