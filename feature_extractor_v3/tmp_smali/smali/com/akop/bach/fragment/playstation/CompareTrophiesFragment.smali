.class public Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "CompareTrophiesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ICON_MINE:I = 0x0

.field private static final ICON_YOURS:I = 0x1

.field private static final TROPHY_RESOURCES:[I


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mGameInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mGamertag:Ljava/lang/String;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mMyGamerpic:Landroid/graphics/Bitmap;

.field private mMyGamerpicUrl:Ljava/lang/String;

.field private mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

.field private mProgress:Landroid/view/View;

.field private mTitleUid:Ljava/lang/String;

.field private mYourGamerpic:Landroid/graphics/Bitmap;

.field private mYourGamerpicUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->TROPHY_RESOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x7f020041
        0x7f020049
        0x7f020044
        0x7f020047
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 181
    new-instance v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 203
    new-instance v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;

    const-string v1, "PsnCompareTrophies"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 256
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    .line 257
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    .line 258
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mProgress:Landroid/view/View;

    .line 260
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 261
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 263
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Lcom/akop/bach/PSN$ComparedTrophyInfo;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    .param p1, "x1"    # Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->initializeAdapter()V

    return-void
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$1600()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->TROPHY_RESOURCES:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$800()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method private initializeAdapter()V
    .locals 8

    .prologue
    .line 501
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    iget-object v2, v3, Lcom/akop/bach/PSN$ComparedTrophyInfo;->cursor:Lcom/akop/bach/PSN$ComparedTrophyCursor;

    .line 506
    .local v2, "payloadCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 515
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 527
    new-instance v3, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    .line 528
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    .end local v2    # "payloadCursor":Landroid/database/Cursor;
    :cond_2
    monitor-exit p0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;-><init>()V

    .line 288
    .local v1, "f":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 293
    return-object v1
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "gamertag"    # Ljava/lang/String;
    .param p3, "yourGamerpicUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/PsnAccount;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;-><init>()V

    .line 273
    .local v1, "f":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "gameInfo"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 277
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 280
    return-object v1
.end method

.method private showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 461
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0b008b

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 464
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0b0035

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 465
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v4, 0x7f0b0036

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 467
    .restart local v2    # "text":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 470
    .local v3, "toast":Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 471
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 473
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 474
    return-void
.end method

.method private synchronizeLocal()V
    .locals 13

    .prologue
    .line 537
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 539
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpicUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpicUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 542
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpicUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 548
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 553
    :cond_1
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 559
    .local v11, "parent":Landroid/view/View;
    const v3, 0x7f0b001d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, "tv":Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 561
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const v3, 0x7f0b0027

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 564
    .local v9, "gpIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 565
    const v3, 0x7f0b001e

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "gpIcon":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 566
    .restart local v9    # "gpIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 568
    const v3, 0x7f0b002f

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 569
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v3, 0x7f0b002e

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 571
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    const v3, 0x7f0b002d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 573
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const v3, 0x7f0b002c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 575
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const v3, 0x7f0b0026

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 578
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v3, 0x7f0b0025

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 580
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    const v3, 0x7f0b0024

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 582
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const v3, 0x7f0b0023

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 584
    .restart local v12    # "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    const v3, 0x7f0b002a

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 589
    .restart local v12    # "tv":Landroid/widget/TextView;
    const v3, 0x7f08003b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const v3, 0x7f0b0029

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 593
    const v3, 0x7f0b0028

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :goto_0
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    const v3, 0x7f0b0021

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "tv":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 604
    .restart local v12    # "tv":Landroid/widget/TextView;
    const v3, 0x7f08003b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const v3, 0x7f0b0020

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 608
    const v3, 0x7f0b001f

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :goto_1
    const v3, 0x7f0b001c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .local v10, "iv":Landroid/widget/ImageView;
    if-eqz v10, :cond_2

    .line 619
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 622
    .local v2, "iconUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 624
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v9    # "gpIcon":Landroid/widget/ImageView;
    .end local v10    # "iv":Landroid/widget/ImageView;
    .end local v11    # "parent":Landroid/view/View;
    .end local v12    # "tv":Landroid/widget/TextView;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->syncIcons()V

    .line 653
    return-void

    .line 597
    .restart local v9    # "gpIcon":Landroid/widget/ImageView;
    .restart local v11    # "parent":Landroid/view/View;
    .restart local v12    # "tv":Landroid/widget/TextView;
    :cond_3
    const v3, 0x7f0b0029

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 598
    const v3, 0x7f0b0028

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 612
    :cond_4
    const v3, 0x7f0b0020

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 613
    const v3, 0x7f0b001f

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 628
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "iconUrl":Ljava/lang/String;
    .restart local v10    # "iv":Landroid/widget/ImageView;
    :cond_5
    if-eqz v2, :cond_2

    .line 630
    new-instance v3, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;

    invoke-direct {v3, p0, v10}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;Landroid/widget/ImageView;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_2
.end method

.method private synchronizeWithServer()V
    .locals 5

    .prologue
    .line 657
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 660
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->compareAchievements(Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 665
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 377
    iget-boolean v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 302
    new-instance v2, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v2}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 303
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v3, 0x60

    iput v3, v2, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 305
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PsnAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 308
    const-string v2, "gamertag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamertag:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v2}, Lcom/akop/bach/PsnAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpicUrl:Ljava/lang/String;

    .line 310
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    .line 311
    const-string v2, "gameInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    .line 313
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 314
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .line 316
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    .line 317
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    .line 318
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 319
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    .line 321
    if-eqz p1, :cond_2

    .line 325
    :try_start_0
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/PSN$ComparedTrophyInfo;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .line 328
    :cond_0
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 331
    :cond_1
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 342
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    .line 344
    :cond_3
    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->setHasOptionsMenu(Z)V

    .line 345
    return-void

    .line 334
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .line 337
    iput-object v4, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 351
    if-nez p2, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 369
    :goto_0
    return-object v0

    .line 354
    :cond_0
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    .line 358
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f080127

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 360
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    .line 361
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 364
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->initializeAdapter()V

    .line 366
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mProgress:Landroid/view/View;

    .line 367
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mProgress:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 444
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;J)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 456
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 420
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;

    .line 421
    .local v0, "vh":Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;
    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 399
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 400
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 401
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 408
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 409
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 411
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->synchronizeLocal()V

    .line 413
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->synchronizeWithServer()V

    .line 415
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 389
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 391
    const-string v0, "yourGamerpicUrl"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    return-void
.end method

.method public resetTitle(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "yourGamerpicUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 478
    if-nez p2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    .local v0, "titleUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 484
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpicUrl:Ljava/lang/String;

    .line 485
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 487
    iput-object p2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mGameInfo:Ljava/util/HashMap;

    .line 488
    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mTitleUid:Ljava/lang/String;

    .line 490
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 491
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mPayload:Lcom/akop/bach/PSN$ComparedTrophyInfo;

    .line 492
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    .line 493
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->mAdapter:Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment$MyCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/CompareTrophiesFragment;->synchronizeWithServer()V

    goto :goto_0
.end method
