.class public Lcom/akop/bach/fragment/playstation/AccountProfileFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "AccountProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 65
    new-instance v0, Lcom/akop/bach/TaskController$TaskListener;

    invoke-direct {v0}, Lcom/akop/bach/TaskController$TaskListener;-><init>()V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 67
    new-instance v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mObserver:Landroid/database/ContentObserver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)Lcom/akop/bach/PsnAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    return-object v0
.end method

.method public static newInstance()Lcom/akop/bach/fragment/playstation/AccountProfileFragment;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;)Lcom/akop/bach/fragment/playstation/AccountProfileFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 94
    new-instance v1, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;-><init>()V

    .line 96
    .local v1, "f":Lcom/akop/bach/fragment/playstation/AccountProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 99
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    :cond_0
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 20

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getView()Landroid/view/View;

    move-result-object v15

    .line 136
    .local v15, "layout":Landroid/view/View;
    if-nez v15, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v5, :cond_7

    .line 141
    const v5, 0x7f0b003d

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v5, 0x7f0b003c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x9

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

    const-string v6, "MemberType"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v6}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 162
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 165
    .local v17, "platinum":I
    const/4 v5, 0x5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 166
    .local v12, "gold":I
    const/4 v5, 0x6

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 167
    .local v18, "silver":I
    const/4 v5, 0x7

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 168
    .local v10, "bronze":I
    const/16 v5, 0x8

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v13, 0x1

    .line 171
    .local v13, "isPlus":Z
    :goto_1
    const v5, 0x7f0b004b

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 172
    .local v19, "tv":Landroid/widget/TextView;
    const v5, 0x7f080168

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v5, 0x7f0b004c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 174
    .restart local v19    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080165

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v5, 0x7f0b004d

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 176
    .restart local v19    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080169

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v5, 0x7f0b004e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 178
    .restart local v19    # "tv":Landroid/widget/TextView;
    const v5, 0x7f080162

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v5, 0x7f0b0041

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 180
    .restart local v19    # "tv":Landroid/widget/TextView;
    add-int v5, v10, v18

    add-int/2addr v5, v12

    add-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v5, 0x7f0b0042

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 183
    .restart local v19    # "tv":Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v5, 0x7f0b0043

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 185
    .restart local v19    # "tv":Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v5, 0x7f0b0046

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "tv":Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 188
    .restart local v19    # "tv":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {v5, v6}, Lcom/akop/bach/PSN$Friends;->getActiveFriendCount(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v5, 0x7f0b0044

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ProgressBar;

    .line 192
    .local v16, "pb":Landroid/widget/ProgressBar;
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    const/4 v6, 0x3

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/akop/bach/PsnAccount;->getLargeAvatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 199
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const v5, 0x7f0b003f

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 200
    .local v14, "iv":Landroid/widget/ImageView;
    if-eqz v13, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    const v5, 0x7f0b003e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14    # "iv":Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 203
    .restart local v14    # "iv":Landroid/widget/ImageView;
    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "bmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_5

    .line 205
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "bronze":I
    .end local v12    # "gold":I
    .end local v13    # "isPlus":Z
    .end local v14    # "iv":Landroid/widget/ImageView;
    .end local v16    # "pb":Landroid/widget/ProgressBar;
    .end local v17    # "platinum":I
    .end local v18    # "silver":I
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_2
    :goto_3
    if-eqz v11, :cond_0

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 168
    .restart local v10    # "bronze":I
    .restart local v12    # "gold":I
    .restart local v17    # "platinum":I
    .restart local v18    # "silver":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 200
    .restart local v3    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v4    # "imageUrl":Ljava/lang/String;
    .restart local v13    # "isPlus":Z
    .restart local v14    # "iv":Landroid/widget/ImageView;
    .restart local v16    # "pb":Landroid/widget/ProgressBar;
    .restart local v19    # "tv":Landroid/widget/TextView;
    :cond_4
    const/16 v5, 0x8

    goto :goto_2

    .line 209
    .restart local v9    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    const v5, 0x7f02002f

    :try_start_1
    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 216
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "bronze":I
    .end local v12    # "gold":I
    .end local v13    # "isPlus":Z
    .end local v14    # "iv":Landroid/widget/ImageView;
    .end local v16    # "pb":Landroid/widget/ProgressBar;
    .end local v17    # "platinum":I
    .end local v18    # "silver":I
    .end local v19    # "tv":Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_6

    .line 217
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 222
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_7
    const v5, 0x7f0b003d

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
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
    .line 108
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    .line 112
    .local v0, "tc":Lcom/akop/bach/TaskController;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 114
    .local v2, "time":J
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastSummaryUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getSummaryRefreshInterval()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/TaskController;->synchronizeSummary(Lcom/akop/bach/BasicAccount;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 116
    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getLastFriendUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {v1}, Lcom/akop/bach/PsnAccount;->getFriendRefreshInterval()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/TaskController;->updateFriendList(Lcom/akop/bach/SupportsFriends;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 232
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 242
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 245
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->setHasOptionsMenu(Z)V

    .line 246
    return-void

    .line 239
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 364
    const v0, 0x7f0a0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 365
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    .line 255
    :cond_0
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "layout":Landroid/view/View;
    const v2, 0x7f0b0045

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v2, 0x7f0b0047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v2, 0x7f0b0048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$4;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v2, 0x7f0b0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    new-instance v2, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$5;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 349
    sget-object v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$6;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$6;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 400
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 382
    :pswitch_1
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeWithServer(Z)V

    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-static {v1, v2}, Lcom/akop/bach/activity/playstation/AccountSettings;->actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/activity/Accounts;->actionShow(Landroid/content/Context;)V

    .line 393
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 396
    :pswitch_4
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/akop/bach/activity/About;->actionShowAbout(Landroid/content/Context;)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0102
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 315
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 316
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/akop/bach/ImageCache;->removeListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 320
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 372
    const v3, 0x7f0b0105

    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 373
    const v0, 0x7f0b0107

    iget-boolean v3, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mDualPane:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 374
    return-void

    :cond_0
    move v0, v2

    .line 372
    goto :goto_0

    :cond_1
    move v1, v2

    .line 373
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 325
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 327
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 328
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/akop/bach/ImageCache;->addListener(Lcom/akop/bach/ImageCache$OnImageReadyListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 333
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 335
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 338
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeWithServer(Z)V

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeLocal()V

    .line 342
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    :cond_0
    return-void
.end method

.method public resetTitle(Lcom/akop/bach/PsnAccount;)V
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 124
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeLocal()V

    .line 126
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment;->synchronizeWithServer(Z)V

    .line 129
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 130
    new-instance v0, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/playstation/AccountProfileFragment;)V

    invoke-virtual {v0}, Lcom/akop/bach/fragment/playstation/AccountProfileFragment$HoneyCombHelper;->invalidateMenu()V

    .line 131
    :cond_1
    return-void
.end method
