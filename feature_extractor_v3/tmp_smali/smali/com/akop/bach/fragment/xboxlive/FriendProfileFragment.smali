.class public Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "FriendProfileFragment.java"

# interfaces
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mGamertag:Ljava/lang/String;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    .line 83
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->loadFriendDetails()V

    return-void
.end method

.method private loadFriendDetails()V
    .locals 28

    .prologue
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getView()Landroid/view/View;

    move-result-object v17

    .line 392
    .local v17, "container":Landroid/view/View;
    if-nez v17, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    const-wide/16 v26, 0x0

    cmp-long v5, v10, v26

    if-gez v5, :cond_2

    .line 397
    const v5, 0x7f0b0057

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v5, 0x7f0b0065

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_2
    const v5, 0x7f0b0057

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v5, 0x7f0b0065

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 405
    new-instance v18, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$1;)V

    .line 407
    .local v18, "holder":Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;
    const v5, 0x7f0b0066

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 408
    const v5, 0x7f0b00c0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->gamerScore:Landroid/widget/TextView;

    .line 409
    const v5, 0x7f0b003e

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 410
    const v5, 0x7f0b00ba

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->avatarBody:Landroid/widget/ImageView;

    .line 411
    const v5, 0x7f0b00c4

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->status:Landroid/widget/TextView;

    .line 412
    const v5, 0x7f0b00c5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->info:Landroid/widget/TextView;

    .line 413
    const v5, 0x7f0b00c3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->beaconRoot:Landroid/widget/LinearLayout;

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 416
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v5, 0xc

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Rep"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "Gamertag"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "Gamerscore"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "IconUrl"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "Name"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string v7, "Location"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string v7, "Bio"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    const-string v7, "StatusDescription"

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string v7, "CurrentActivity"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const-string v7, "LastUpdated"

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string v7, "StatusCode"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const-string v7, "Motto"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 434
    .local v16, "c":Landroid/database/Cursor;
    if-eqz v16, :cond_8

    .line 438
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 442
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->gamerScore:Landroid/widget/TextView;

    const v7, 0x7f080163

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 448
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "gamerpicUrl":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 451
    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, "bmp":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_3

    .line 452
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    :cond_3
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 454
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v9}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 457
    .end local v14    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v5}, Lcom/akop/bach/parser/XboxLiveParser;->getAvatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "avatarUrl":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 460
    invoke-virtual {v3, v6}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 461
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->avatarBody:Landroid/widget/ImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    :cond_5
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v6, v5}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 463
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v5, v3

    move-object/from16 v7, p0

    invoke-virtual/range {v5 .. v11}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 466
    .end local v14    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v7, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->status:Landroid/widget/TextView;

    const/16 v7, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 468
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->info:Landroid/widget/TextView;

    const/16 v7, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "gamerpicUrl":Ljava/lang/String;
    .end local v6    # "avatarUrl":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_8
    sget-object v8, Lcom/akop/bach/XboxLive$Beacons;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v9, v5

    const/4 v5, 0x1

    const-string v7, "TitleName"

    aput-object v7, v9, v5

    const/4 v5, 0x2

    const-string v7, "TitleBoxart"

    aput-object v7, v9, v5

    const/4 v5, 0x3

    const-string v7, "Text"

    aput-object v7, v9, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v7}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "FriendId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 488
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$ViewHolder;->beaconRoot:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    .line 489
    .local v22, "root":Landroid/widget/LinearLayout;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    .line 493
    .local v19, "inflater":Landroid/view/LayoutInflater;
    if-eqz v16, :cond_0

    .line 497
    :goto_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 499
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 500
    .local v23, "title":Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 501
    .local v8, "boxartUrl":Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 503
    .local v21, "message":Ljava/lang/String;
    const v5, 0x7f03002c

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 504
    .local v20, "item":Landroid/view/View;
    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    const v5, 0x7f0b00ac

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 528
    .local v15, "boxart":Landroid/widget/ImageView;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 530
    .restart local v14    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    .line 531
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 535
    :goto_2
    const v5, 0x7f0b00ad

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 536
    .local v24, "titleName":Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    const v5, 0x7f0b00ae

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 539
    .local v13, "beaconText":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 544
    .end local v8    # "boxartUrl":Ljava/lang/String;
    .end local v13    # "beaconText":Landroid/widget/TextView;
    .end local v14    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "boxart":Landroid/widget/ImageView;
    .end local v20    # "item":Landroid/view/View;
    .end local v21    # "message":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "titleName":Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5

    .line 473
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "root":Landroid/widget/LinearLayout;
    :catchall_1
    move-exception v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5

    .line 533
    .restart local v8    # "boxartUrl":Ljava/lang/String;
    .restart local v14    # "bmp":Landroid/graphics/Bitmap;
    .restart local v15    # "boxart":Landroid/widget/ImageView;
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "item":Landroid/view/View;
    .restart local v21    # "message":Ljava/lang/String;
    .restart local v22    # "root":Landroid/widget/LinearLayout;
    .restart local v23    # "title":Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v9, p0

    move-object v12, v8

    invoke-virtual/range {v7 .. v12}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 544
    .end local v8    # "boxartUrl":Ljava/lang/String;
    .end local v14    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "boxart":Landroid/widget/ImageView;
    .end local v20    # "item":Landroid/view/View;
    .end local v21    # "message":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "titleId"    # J

    .prologue
    .line 102
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;-><init>()V

    .line 104
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 107
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 325
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-lez v1, :cond_3

    .line 327
    const/4 v7, 0x0

    .line 328
    .local v7, "exists":Z
    const/4 v8, 0x0

    .line 330
    .local v8, "isDirty":Z
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Gamertag"

    aput-object v3, v2, v10

    const-string v3, "LastUpdated"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 340
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->getSummaryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    move v8, v9

    .line 345
    :goto_0
    const/4 v7, 0x1

    .line 346
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    if-eqz v8, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->synchronizeWithServer()V

    .line 358
    :cond_2
    if-nez v7, :cond_3

    .line 359
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    .line 362
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "exists":Z
    .end local v8    # "isDirty":Z
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->loadFriendDetails()V

    .line 364
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 365
    new-instance v1, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v1}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    .line 366
    :cond_4
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "exists":Z
    .restart local v8    # "isDirty":Z
    :cond_5
    move v8, v10

    .line 342
    goto :goto_0

    .line 351
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendProfile(Lcom/akop/bach/SupportsFriends;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 372
    return-void
.end method


# virtual methods
.method public okClicked(IJLjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 555
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v4, 0x7f080110

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->removeFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 561
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 122
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    .line 125
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 127
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 128
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    .line 131
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->setHasOptionsMenu(Z)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 207
    const v0, 0x7f0a0014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p2, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const v3, 0x7f030035

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "layout":Landroid/view/View;
    const v3, 0x7f0b00c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "composeButton":Landroid/view/View;
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;

    invoke-direct {v3, p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 379
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f080114

    const/4 v2, 0x1

    .line 256
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    .line 258
    .local v0, "controller":Lcom/akop/bach/TaskController;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 313
    :goto_0
    return v2

    .line 267
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :sswitch_1
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08010f

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-static {v2, v4, v3, v6, v7}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v1

    .line 281
    .local v1, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v1    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :sswitch_2
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/akop/bach/activity/xboxlive/FriendsOfFriendList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :sswitch_3
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :sswitch_4
    sget-object v3, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v6, 0x7f080002

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/akop/bach/TaskController;->acceptFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0

    .line 299
    :sswitch_5
    sget-object v3, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v6, 0x7f080058

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/akop/bach/TaskController;->rejectFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto/16 :goto_0

    .line 306
    :sswitch_6
    sget-object v3, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v5}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    new-instance v5, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v6, 0x7f08002a

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/akop/bach/TaskController;->cancelFriendRequest(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto/16 :goto_0

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_3
        0x7f0b0117 -> :sswitch_4
        0x7f0b0118 -> :sswitch_5
        0x7f0b011a -> :sswitch_6
        0x7f0b011c -> :sswitch_0
        0x7f0b011e -> :sswitch_2
        0x7f0b011f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 173
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v10, 0x7f0b011b

    const v9, 0x7f0b0119

    const v8, 0x7f0b0116

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 213
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 215
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 217
    const v1, 0x7f0b0105

    invoke-interface {p1, v1, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 218
    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 219
    invoke-interface {p1, v9, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 220
    const v1, 0x7f0b011d

    invoke-interface {p1, v1, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 221
    invoke-interface {p1, v10, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 251
    :goto_0
    return-void

    .line 225
    :cond_0
    const v1, 0x7f0b0105

    invoke-interface {p1, v1, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 227
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-static {v1, v2, v3}, Lcom/akop/bach/XboxLive$Friends;->getStatusCode(Landroid/content/Context;J)I

    move-result v0

    .line 229
    .local v0, "statusCode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 231
    invoke-interface {p1, v8, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 232
    invoke-interface {p1, v9, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 233
    const v1, 0x7f0b011d

    invoke-interface {p1, v1, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 234
    invoke-interface {p1, v10, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 236
    :cond_1
    if-ne v0, v7, :cond_2

    .line 238
    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 239
    invoke-interface {p1, v9, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 240
    const v1, 0x7f0b011d

    invoke-interface {p1, v1, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 241
    invoke-interface {p1, v10, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 246
    invoke-interface {p1, v9, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 247
    const v1, 0x7f0b011d

    invoke-interface {p1, v1, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 248
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v1}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v1

    invoke-interface {p1, v10, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 182
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 184
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    sget-object v1, Lcom/akop/bach/XboxLive$Beacons;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->synchronizeLocal()V

    .line 191
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 318
    iput-wide p1, p0, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->mTitleId:J

    .line 320
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/FriendProfileFragment;->synchronizeLocal()V

    .line 321
    return-void
.end method
