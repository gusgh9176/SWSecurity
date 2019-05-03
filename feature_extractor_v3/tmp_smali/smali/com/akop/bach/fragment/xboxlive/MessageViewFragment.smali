.class public Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# static fields
.field private static final COLUMN_BODY:I = 0x1

.field private static final COLUMN_GAMERPIC:I = 0x5

.field private static final COLUMN_SENDER:I = 0x3

.field private static final COLUMN_SENT:I = 0x2

.field private static final DIALOG_CONFIRM:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mAvatarLoader:Lcom/akop/bach/ImageCache$OnImageReadyListener;

.field private mBody:Ljava/lang/String;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mSender:Ljava/lang/String;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Sent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Sender"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IsDirty"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Gamerpic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Uid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAvatarLoader:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    .line 81
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    .line 114
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$100()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 118
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "titleId"    # J

    .prologue
    .line 124
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;-><init>()V

    .line 126
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 131
    return-object v1
.end method

.method private refreshMessageContents()V
    .locals 20

    .prologue
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getView()Landroid/view/View;

    move-result-object v12

    .line 371
    .local v12, "container":Landroid/view/View;
    if-nez v12, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 376
    const v3, 0x7f0b003c

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    const v3, 0x7f0b00c9

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_2
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 454
    new-instance v3, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    goto :goto_0

    .line 381
    :cond_3
    const v3, 0x7f0b00c9

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    const v3, 0x7f0b003c

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v3, 0x7f0b00ce

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 385
    .local v17, "tvSender":Landroid/widget/TextView;
    const v3, 0x7f0b00cf

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 386
    .local v18, "tvSent":Landroid/widget/TextView;
    const v3, 0x7f0b00d0

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 387
    .local v16, "tvBody":Landroid/widget/TextView;
    const v3, 0x7f0b00cd

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 388
    .local v14, "ivSenderIcon":Landroid/widget/ImageView;
    const v3, 0x7f0b00ca

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 390
    .local v19, "vReplySection":Landroid/view/View;
    const v3, 0x7f0b00cb

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 391
    .local v15, "replyButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 396
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v6}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 400
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 404
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 406
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    .line 407
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mBody:Ljava/lang/String;

    .line 409
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, "gamerpic":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mBody:Ljava/lang/String;

    .line 412
    .local v10, "body":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    .line 413
    :cond_4
    const v3, 0x7f0800dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 415
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    if-eqz v13, :cond_6

    .line 423
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    invoke-static {v4}, Lcom/akop/bach/parser/XboxLiveParser;->getGamerpicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAvatarLoader:Lcom/akop/bach/ImageCache$OnImageReadyListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v3 .. v8}, Lcom/akop/bach/ImageCache;->getCachedOrRequest(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;ILjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 427
    .local v9, "bmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    .line 428
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "body":Ljava/lang/String;
    .end local v13    # "gamerpic":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 443
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 445
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const v3, 0x7f020002

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 415
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "body":Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "gamerpic":Ljava/lang/String;
    :cond_8
    const/16 v3, 0x8

    goto :goto_2

    .line 433
    .end local v10    # "body":Ljava/lang/String;
    .end local v13    # "gamerpic":Ljava/lang/String;
    :cond_9
    const-wide/16 v4, -0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 438
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private share()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mBody:Ljava/lang/String;

    if-eqz v5, :cond_2

    move v5, v3

    :goto_1
    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "android.intent.extra.TEXT"

    const v5, 0x7f08016e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mBody:Ljava/lang/String;

    aput-object v4, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 346
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .line 357
    .restart local v1    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080069

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08007a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 307
    const/4 v8, 0x0

    .line 308
    .local v8, "messageExists":Z
    const/4 v7, 0x0

    .line 310
    .local v7, "isDirty":Z
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-ltz v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "IsDirty"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 322
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    move v7, v9

    .line 325
    :goto_0
    const/4 v8, 0x1

    .line 330
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v8, :cond_2

    .line 336
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    .line 338
    :cond_2
    if-eqz v7, :cond_3

    .line 339
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->synchronizeWithServer()V

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->refreshMessageContents()V

    .line 342
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v7, v10

    .line 324
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private synchronizeWithServer()V
    .locals 6

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-static {v2, v4, v5}, Lcom/akop/bach/XboxLive$Messages;->getUid(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->synchronizeMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public okClicked(IJLjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-static {v2, v4, v5}, Lcom/akop/bach/XboxLive$Messages;->getUid(Landroid/content/Context;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const v3, 0x7f0800b9

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/akop/bach/TaskController;->deleteMessage(Lcom/akop/bach/SupportsMessaging;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 287
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mSender:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 144
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    .line 147
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 150
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    .line 153
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 236
    const v0, 0x7f0a001d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    if-nez p2, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 163
    :cond_0
    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "gamertagRow":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 221
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$4;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 269
    :pswitch_0
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 254
    :pswitch_1
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 256
    const/4 v2, 0x2

    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08005d

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-static {v2, v3, v4, v6, v7}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 260
    .local v0, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :pswitch_2
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->share()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x7f0b012d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 188
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 244
    const v1, 0x7f0b0105

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 245
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 199
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->synchronizeLocal()V

    .line 205
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 213
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->mTitleId:J

    .line 293
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/MessageViewFragment;->synchronizeLocal()V

    .line 294
    return-void
.end method
