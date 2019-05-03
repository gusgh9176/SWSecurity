.class public Lcom/akop/bach/fragment/playstation/FriendProfileFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "FriendProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/FriendProfileFragment$HoneyCombHelper;
    }
.end annotation


# static fields
.field private static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mGamertag:Ljava/lang/String;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    .line 68
    new-instance v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->loadFriendDetails()V

    return-void
.end method

.method private loadFriendDetails()V
    .locals 24

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getView()Landroid/view/View;

    move-result-object v13

    .line 260
    .local v13, "container":Landroid/view/View;
    if-nez v13, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 265
    const v5, 0x7f0b0057

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const v5, 0x7f0b0065

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_2
    const v5, 0x7f0b0057

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const v5, 0x7f0b0065

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 274
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0xb

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "OnlineId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Level"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "Progress"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "IconUrl"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "PlatinumTrophies"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "GoldTrophies"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "SilverTrophies"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "BronzeTrophies"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "Playing"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "Status"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "MemberType"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v6}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OnlineId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 293
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 297
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 300
    .local v20, "platinum":I
    const/4 v5, 0x5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 301
    .local v17, "gold":I
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 302
    .local v21, "silver":I
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 303
    .local v11, "bronze":I
    const/16 v5, 0x9

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 304
    .local v15, "currentStatus":I
    const/16 v5, 0xa

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/16 v18, 0x1

    .line 306
    .local v18, "isPlus":Z
    :goto_1
    const/4 v14, 0x0

    .line 307
    .local v14, "currentActivity":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v15}, Lcom/akop/bach/PSN;->getOnlineStatusDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    .line 310
    .local v22, "statusDescription":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 313
    if-nez v14, :cond_5

    .line 314
    move-object/from16 v16, v22

    .line 320
    .local v16, "fullStatus":Ljava/lang/String;
    :goto_2
    const v5, 0x7f0b0066

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 321
    .local v23, "tv":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const v5, 0x7f0b004b

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 323
    .restart local v23    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080168

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v5, 0x7f0b004c

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 325
    .restart local v23    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080165

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v5, 0x7f0b004d

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 327
    .restart local v23    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080169

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const v5, 0x7f0b004e

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 329
    .restart local v23    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080162

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const v5, 0x7f0b0041

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 331
    .restart local v23    # "tv":Landroid/widget/TextView;
    add-int v5, v11, v21

    add-int v5, v5, v17

    add-int v5, v5, v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v5, 0x7f0b0067

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 333
    .restart local v23    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v5, 0x7f0b0042

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23    # "tv":Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 336
    .restart local v23    # "tv":Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/akop/bach/PsnAccount;->getLargeAvatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 344
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const v5, 0x7f0b003f

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 345
    .local v19, "iv":Landroid/widget/ImageView;
    if-eqz v18, :cond_6

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const v5, 0x7f0b003e

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "iv":Landroid/widget/ImageView;
    check-cast v19, Landroid/widget/ImageView;

    .line 349
    .restart local v19    # "iv":Landroid/widget/ImageView;
    sget-object v5, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "bmp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_7

    .line 351
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v10    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "bronze":I
    .end local v14    # "currentActivity":Ljava/lang/String;
    .end local v15    # "currentStatus":I
    .end local v16    # "fullStatus":Ljava/lang/String;
    .end local v17    # "gold":I
    .end local v18    # "isPlus":Z
    .end local v19    # "iv":Landroid/widget/ImageView;
    .end local v20    # "platinum":I
    .end local v21    # "silver":I
    .end local v22    # "statusDescription":Ljava/lang/String;
    .end local v23    # "tv":Landroid/widget/TextView;
    :cond_3
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 304
    .restart local v11    # "bronze":I
    .restart local v15    # "currentStatus":I
    .restart local v17    # "gold":I
    .restart local v20    # "platinum":I
    .restart local v21    # "silver":I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 316
    .restart local v14    # "currentActivity":Ljava/lang/String;
    .restart local v18    # "isPlus":Z
    .restart local v22    # "statusDescription":Ljava/lang/String;
    :cond_5
    const v5, 0x7f08013d

    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "fullStatus":Ljava/lang/String;
    goto/16 :goto_2

    .line 345
    .restart local v3    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v4    # "imageUrl":Ljava/lang/String;
    .restart local v19    # "iv":Landroid/widget/ImageView;
    .restart local v23    # "tv":Landroid/widget/TextView;
    :cond_6
    const/16 v5, 0x8

    goto :goto_3

    .line 355
    .restart local v10    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    const v5, 0x7f02002f

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v9}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 362
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v10    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "bronze":I
    .end local v14    # "currentActivity":Ljava/lang/String;
    .end local v15    # "currentStatus":I
    .end local v16    # "fullStatus":Ljava/lang/String;
    .end local v17    # "gold":I
    .end local v18    # "isPlus":Z
    .end local v19    # "iv":Landroid/widget/ImageView;
    .end local v20    # "platinum":I
    .end local v21    # "silver":I
    .end local v22    # "statusDescription":Ljava/lang/String;
    .end local v23    # "tv":Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/FriendProfileFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 81
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->newInstance(Lcom/akop/bach/PsnAccount;J)Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;J)Lcom/akop/bach/fragment/playstation/FriendProfileFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "titleId"    # J

    .prologue
    .line 87
    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;-><init>()V

    .line 89
    .local v1, "f":Lcom/akop/bach/fragment/playstation/FriendProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 193
    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-lez v1, :cond_3

    .line 195
    const/4 v7, 0x0

    .line 196
    .local v7, "exists":Z
    const/4 v8, 0x0

    .line 198
    .local v8, "isDirty":Z
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "OnlineId"

    aput-object v3, v2, v10

    const-string v3, "LastUpdated"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 208
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getSummaryRefreshInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    move v8, v9

    .line 213
    :goto_0
    const/4 v7, 0x1

    .line 214
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mGamertag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_1
    if-eqz v8, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->synchronizeWithServer()V

    .line 226
    :cond_2
    if-nez v7, :cond_3

    .line 227
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    .line 230
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "exists":Z
    .end local v8    # "isDirty":Z
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->loadFriendDetails()V

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 233
    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$HoneyCombHelper;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V

    invoke-virtual {v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$HoneyCombHelper;->invalidateMenu()V

    .line 234
    :cond_4
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "exists":Z
    .restart local v8    # "isDirty":Z
    :cond_5
    move v8, v10

    .line 210
    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mGamertag:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->updateFriendProfile(Lcom/akop/bach/SupportsFriends;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 107
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    .line 110
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 112
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 113
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    .line 116
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->setHasOptionsMenu(Z)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 247
    sget-object v0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/FriendProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 156
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 167
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->synchronizeLocal()V

    .line 173
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->mTitleId:J

    .line 188
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/FriendProfileFragment;->synchronizeLocal()V

    .line 189
    return-void
.end method
