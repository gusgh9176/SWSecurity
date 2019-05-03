.class public Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "SentMessageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# static fields
.field private static final COLUMN_BODY:I = 0x1

.field private static final COLUMN_SENDER:I = 0x3

.field private static final COLUMN_SENT:I = 0x2

.field private static final DIALOG_CONFIRM:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRecipients:Ljava/lang/String;

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x4

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

    const-string v2, "Recipients"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    .line 90
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 94
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;J)Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "titleId"    # J

    .prologue
    .line 100
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;-><init>()V

    .line 102
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v1
.end method

.method private refreshMessageContents()V
    .locals 21

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getView()Landroid/view/View;

    move-result-object v11

    .line 292
    .local v11, "container":Landroid/view/View;
    if-nez v11, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 297
    const v3, 0x7f0b003c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const v3, 0x7f0b00c9

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_2
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 386
    new-instance v3, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v3}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    goto :goto_0

    .line 302
    :cond_3
    const v3, 0x7f0b00c9

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v3, 0x7f0b003c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const v3, 0x7f0b00d1

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 306
    .local v18, "recipientList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    const v3, 0x7f0b00cf

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 309
    .local v20, "tvSent":Landroid/widget/TextView;
    const v3, 0x7f0b00d0

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 311
    .local v19, "tvBody":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    .line 313
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 316
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

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

    iget-wide v6, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 320
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_8

    .line 324
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 326
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mRecipients:Ljava/lang/String;

    .line 328
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 330
    .local v9, "body":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    .line 331
    :cond_4
    const v3, 0x7f0800dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mRecipients:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mRecipients:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, "gamertags":[Ljava/lang/String;
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    aget-object v12, v8, v14

    .line 338
    .local v12, "gamertag":Ljava/lang/String;
    const v3, 0x7f030049

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 340
    .local v16, "item":Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 343
    new-instance v3, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 363
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v12    # "gamertag":Ljava/lang/String;
    .end local v13    # "gamertags":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "item":Landroid/widget/TextView;
    .end local v17    # "len$":I
    :cond_7
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v9    # "body":Ljava/lang/String;
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 378
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 380
    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const-string v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 368
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_9
    const-wide/16 v4, -0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 373
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private synchronizeLocal()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v7, 0x0

    .line 261
    .local v7, "messageExists":Z
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 273
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v7, 0x1

    .line 278
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_2

    .line 284
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    .line 286
    :cond_2
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->refreshMessageContents()V

    .line 287
    return-void

    .line 278
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public okClicked(IJLjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v2, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "sentMessage":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->synchronizeLocal()V

    .line 248
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/akop/bach/parser/Parser;->getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mRecipients:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 120
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    .line 123
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    .line 126
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 194
    const v0, 0x7f0a0020

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    if-nez p2, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "layout":Landroid/view/View;
    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 179
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$2;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 212
    :pswitch_0
    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 214
    const/4 v1, 0x2

    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005d

    invoke-virtual {p0, v3}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;J)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 218
    .local v0, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 222
    .end local v0    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x7f0b012d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 147
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 202
    const v1, 0x7f0b0105

    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 203
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 158
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/XboxLive$SentMessages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->synchronizeLocal()V

    .line 164
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 252
    iput-wide p1, p0, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->mTitleId:J

    .line 254
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/SentMessageViewFragment;->synchronizeLocal()V

    .line 255
    return-void
.end method
