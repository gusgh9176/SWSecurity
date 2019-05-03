.class public Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "CompareAchievementsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ICON_MINE:I = 0x0

.field private static final ICON_YOURS:I = 0x1


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

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

.field private mHandler:Landroid/os/Handler;

.field private mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mMessage:Landroid/widget/TextView;

.field private mMyGamerpic:Landroid/graphics/Bitmap;

.field private mMyGamerpicUrl:Ljava/lang/String;

.field private mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

.field private mProgress:Landroid/view/View;

.field private mTitleUid:Ljava/lang/String;

.field private mYourGamerpic:Landroid/graphics/Bitmap;

.field private mYourGamerpicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 183
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 205
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;

    const-string v1, "XboxCompareAchieves"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 258
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    .line 259
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    .line 260
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    .line 262
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 264
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Lcom/akop/bach/XboxLive$ComparedAchievementInfo;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    return-object p1
.end method

.method static synthetic access$102(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->initializeAdapter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method private initializeAdapter()V
    .locals 6

    .prologue
    .line 524
    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    if-eqz v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    iget-object v2, v3, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;->cursor:Lcom/akop/bach/XboxLive$ComparedAchievementCursor;

    .line 529
    .local v2, "payloadCursor":Landroid/database/Cursor;
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-direct {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .local v1, "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$IconCursor;->newRow()Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/akop/bach/SerializableMatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 547
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    .line 548
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 550
    .end local v1    # "ic":Lcom/akop/bach/fragment/GenericFragment$IconCursor;
    .end local v2    # "payloadCursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit p0

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;-><init>()V

    .line 290
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 295
    return-object v1
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "gamertag"    # Ljava/lang/String;
    .param p3, "yourGamerpicUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/akop/bach/XboxLiveAccount;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "gameInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;-><init>()V

    .line 275
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    const-string v2, "gamertag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "gameInfo"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 279
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 282
    return-object v1
.end method

.method private showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 484
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03002a

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0b008b

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 487
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0b00a9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 488
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const v4, 0x7f0b00ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 490
    .restart local v2    # "text":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 493
    .local v3, "toast":Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 494
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 496
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 497
    return-void
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    .line 557
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    .line 558
    .local v1, "ic":Lcom/akop/bach/ImageCache;
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpicUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 560
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpicUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 561
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpicUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    .line 564
    :cond_0
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 566
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 567
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    .line 572
    :cond_1
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    .line 574
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 578
    .local v11, "parent":Landroid/view/View;
    const v3, 0x7f0b001d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .local v13, "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 579
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :cond_2
    const v3, 0x7f0b00b0

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .local v9, "gpIcon":Landroid/widget/ImageView;
    if-eqz v9, :cond_3

    .line 582
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    :cond_3
    const v3, 0x7f0b00af

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "gpIcon":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .restart local v9    # "gpIcon":Landroid/widget/ImageView;
    if-eqz v9, :cond_4

    .line 585
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    :cond_4
    const v3, 0x7f0b00b3

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tv":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .restart local v13    # "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_5

    .line 589
    const v3, 0x7f080166

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 592
    .local v12, "text":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .end local v12    # "text":Ljava/lang/String;
    :cond_5
    const v3, 0x7f0b00b4

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tv":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .restart local v13    # "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_6

    .line 597
    const v3, 0x7f080166

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 600
    .restart local v12    # "text":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    .end local v12    # "text":Ljava/lang/String;
    :cond_6
    const v3, 0x7f0b00b6

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tv":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .restart local v13    # "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_7

    .line 605
    const v3, 0x7f080166

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 608
    .restart local v12    # "text":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .end local v12    # "text":Ljava/lang/String;
    :cond_7
    const v3, 0x7f0b00b8

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "tv":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .restart local v13    # "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_8

    .line 613
    const v3, 0x7f080166

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 616
    .restart local v12    # "text":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    .end local v12    # "text":Ljava/lang/String;
    :cond_8
    const v3, 0x7f0b001c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .local v10, "iv":Landroid/widget/ImageView;
    if-eqz v10, :cond_9

    .line 622
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 625
    .local v2, "iconUrl":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 627
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 654
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v9    # "gpIcon":Landroid/widget/ImageView;
    .end local v10    # "iv":Landroid/widget/ImageView;
    .end local v11    # "parent":Landroid/view/View;
    .end local v13    # "tv":Landroid/widget/TextView;
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->syncIcons()V

    .line 655
    return-void

    .line 631
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "iconUrl":Ljava/lang/String;
    .restart local v9    # "gpIcon":Landroid/widget/ImageView;
    .restart local v10    # "iv":Landroid/widget/ImageView;
    .restart local v11    # "parent":Landroid/view/View;
    .restart local v13    # "tv":Landroid/widget/TextView;
    :cond_a
    if-eqz v2, :cond_9

    .line 633
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;

    invoke-direct {v3, p0, v10}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;Landroid/widget/ImageView;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z

    goto :goto_0
.end method

.method private synchronizeWithServer()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 659
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 664
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 674
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->compareAchievements(Lcom/akop/bach/SupportsCompareAchievements;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getIconCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 400
    iget-boolean v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mDualPane:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 402
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLiveAccount;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 307
    const-string v2, "gamertag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamertag:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v2}, Lcom/akop/bach/XboxLiveAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpicUrl:Ljava/lang/String;

    .line 309
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    .line 310
    const-string v2, "gameInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    .line 312
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 313
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .line 315
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    .line 316
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMyGamerpic:Landroid/graphics/Bitmap;

    .line 317
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 318
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    .line 320
    if-eqz p1, :cond_2

    .line 324
    :try_start_0
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const-string v2, "payload"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .line 327
    :cond_0
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    const-string v2, "icons"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 330
    :cond_1
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    const-string v2, "yourGamerpicUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    .line 346
    :cond_3
    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->setHasOptionsMenu(Z)V

    .line 347
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    :cond_4
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .line 339
    iput-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    if-nez p2, :cond_1

    .line 354
    const/4 v1, 0x0

    .line 392
    :cond_0
    :goto_0
    return-object v1

    .line 356
    :cond_1
    const v2, 0x7f030033

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    .line 360
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    const v3, 0x7f080126

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 362
    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    .line 363
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 366
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->initializeAdapter()V

    .line 370
    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    .line 371
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    const v2, 0x7f0b0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "gameDetails":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 376
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 467
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 443
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 444
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 446
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "description":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->showAchievementDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 451
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 422
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 423
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 431
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 432
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGamerpicListener:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 434
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->synchronizeLocal()V

    .line 436
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->synchronizeWithServer()V

    .line 438
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "payload"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "icons"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 414
    const-string v0, "yourGamerpicUrl"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
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

    .line 501
    if-nez p2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    .local v0, "titleUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 507
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpicUrl:Ljava/lang/String;

    .line 508
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mYourGamerpic:Landroid/graphics/Bitmap;

    .line 510
    iput-object p2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mGameInfo:Ljava/util/HashMap;

    .line 511
    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mTitleUid:Ljava/lang/String;

    .line 513
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mIconCursor:Lcom/akop/bach/fragment/GenericFragment$IconCursor;

    .line 514
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mPayload:Lcom/akop/bach/XboxLive$ComparedAchievementInfo;

    .line 515
    iput-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    .line 516
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->mAdapter:Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment$MyCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 518
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/CompareAchievementsFragment;->synchronizeWithServer()V

    goto :goto_0
.end method
