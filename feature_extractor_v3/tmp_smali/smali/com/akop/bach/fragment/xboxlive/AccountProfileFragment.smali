.class public Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "AccountProfileFragment.java"


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private final mFriendObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mMessageObserver:Landroid/database/ContentObserver;

.field private final mProfileObserver:Landroid/database/ContentObserver;

.field private mProfileUpdater:Lcom/akop/bach/TaskController$TaskListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 68
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 69
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileUpdater:Lcom/akop/bach/TaskController$TaskListener;

    .line 86
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileObserver:Landroid/database/ContentObserver;

    .line 97
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mFriendObserver:Landroid/database/ContentObserver;

    .line 108
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mMessageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method public static newInstance()Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 126
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;-><init>()V

    .line 128
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 131
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    :cond_0
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 22

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 170
    .local v15, "layout":Landroid/view/View;
    if-nez v15, :cond_0

    .line 249
    :goto_0
    return-void

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v5, :cond_6

    .line 175
    const v5, 0x7f0b003d

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v5, 0x7f0b003c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 179
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v5}, Lcom/akop/bach/XboxLiveAccount;->getGamertag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/XboxLiveParser;->getAvatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 184
    const v5, 0x7f0b00ba

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 185
    .local v14, "iv":Landroid/widget/ImageView;
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    .end local v14    # "iv":Landroid/widget/ImageView;
    :cond_1
    if-eqz v4, :cond_2

    sget-object v5, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v9}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 191
    :cond_2
    const/16 v16, 0x0

    .line 192
    .local v16, "rep":I
    const/4 v13, 0x0

    .line 193
    .local v13, "gamerscore":I
    const/16 v17, 0x0

    .line 195
    .local v17, "tier":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Rep"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "PointsBalance"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "Gamerscore"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "Tier"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "Name"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "Motto"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "Location"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "Bio"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v9}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 209
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 213
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 216
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 217
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 228
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_4
    :goto_1
    const v5, 0x7f0b00bc

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 233
    .local v18, "tv":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6}, Lcom/akop/bach/XboxLive$Messages;->getUnreadMessageCount(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v5, 0x7f0b0046

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "tv":Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 236
    .restart local v18    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v5, v6}, Lcom/akop/bach/XboxLive$Friends;->getActiveFriendCount(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const v5, 0x7f0b00c0

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "tv":Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 239
    .restart local v18    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080163

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v5, 0x7f0b00c1

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "tv":Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 242
    .restart local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 220
    .end local v18    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v12

    .line 223
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v12    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 246
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "avatarUrl":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "gamerscore":I
    .end local v16    # "rep":I
    .end local v17    # "tier":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0b003d

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const v5, 0x7f0b003c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private synchronizeWithServer(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    .line 140
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    .line 144
    .local v0, "tc":Lcom/akop/bach/TaskController;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 146
    .local v2, "time":J
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastSummaryUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getSummaryRefreshInterval()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/TaskController;->synchronizeSummary(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 148
    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastFriendUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getFriendRefreshInterval()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 150
    :cond_5
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getLastMessageUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getMessageRefreshInterval()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/TaskController;->synchronizeMessages(Lcom/akop/bach/SupportsMessaging;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 256
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 266
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 269
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->setHasOptionsMenu(Z)V

    .line 270
    return-void

    .line 263
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 383
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 385
    const v0, 0x7f0a000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 386
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    .line 279
    :cond_0
    const v2, 0x7f030031

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "layout":Landroid/view/View;
    const v2, 0x7f0b00bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v2, 0x7f0b00bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$6;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v2, 0x7f0b00be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 304
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$7;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$7;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$8;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment$8;-><init>(Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 425
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 404
    :sswitch_0
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v1, :cond_0

    .line 405
    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeWithServer(Z)V

    goto :goto_0

    .line 409
    :sswitch_1
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V

    goto :goto_0

    .line 414
    :sswitch_2
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/activity/Accounts;->actionShow(Landroid/content/Context;)V

    .line 415
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 418
    :sswitch_3
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/activity/xboxlive/ServerStatus;->actionShow(Landroid/content/Context;)V

    goto :goto_0

    .line 421
    :sswitch_4
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/activity/About;->actionShowAbout(Landroid/content/Context;)V

    goto :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0102 -> :sswitch_4
        0x7f0b0103 -> :sswitch_1
        0x7f0b0106 -> :sswitch_0
        0x7f0b0108 -> :sswitch_2
        0x7f0b0111 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 328
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 330
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 331
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileUpdater:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 333
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 335
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mFriendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 340
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 393
    const v3, 0x7f0b0105

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 394
    const v3, 0x7f0b0112

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 395
    const v0, 0x7f0b0107

    iget-boolean v3, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mDualPane:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 396
    return-void

    :cond_0
    move v0, v2

    .line 393
    goto :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto :goto_1

    :cond_2
    move v1, v2

    .line 395
    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 345
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 347
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 348
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileUpdater:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 350
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mFriendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/XboxLiveAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 361
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeWithServer(Z)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeLocal()V

    .line 365
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    :cond_0
    return-void
.end method

.method public resetTitle(Lcom/akop/bach/XboxLiveAccount;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 158
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeLocal()V

    .line 160
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/xboxlive/AccountProfileFragment;->synchronizeWithServer(Z)V

    .line 163
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 164
    new-instance v0, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    .line 165
    :cond_1
    return-void
.end method
