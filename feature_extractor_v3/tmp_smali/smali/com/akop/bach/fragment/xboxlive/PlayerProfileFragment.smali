.class public Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "PlayerProfileFragment.java"

# interfaces
.implements Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRM_ADD:I = 0x1

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x2

.field private static sCp:Lcom/akop/bach/ImageCache$CachePolicy;


# instance fields
.field private mAccount:Lcom/akop/bach/XboxLiveAccount;

.field private mGamertag:Ljava/lang/String;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

.field private mRequestListener:Lcom/akop/bach/TaskController$TaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/akop/bach/ImageCache$CachePolicy;

    const-wide/16 v2, 0x3840

    invoke-direct {v0, v2, v3}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>(J)V

    sput-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$1;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 91
    new-instance v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$2;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 134
    return-void
.end method

.method static synthetic access$000()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/XboxLiveAccount;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Lcom/akop/bach/TaskController$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Lcom/akop/bach/XboxLive$GamerProfileInfo;)Lcom/akop/bach/XboxLive$GamerProfileInfo;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    .param p1, "x1"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$900()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    .locals 1
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->newInstance(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/akop/bach/XboxLiveAccount;Lcom/akop/bach/XboxLive$GamerProfileInfo;)Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p1, "info"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 152
    new-instance v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;-><init>()V

    .line 154
    .local v1, "f":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string v2, "info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    return-object v1
.end method

.method private synchronizeLocal()V
    .locals 26

    .prologue
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getView()Landroid/view/View;

    move-result-object v25

    .line 334
    .local v25, "view":Landroid/view/View;
    if-nez v25, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    if-nez v5, :cond_3

    .line 339
    const v5, 0x7f0b0057

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const v5, 0x7f0b0065

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v5, v7, :cond_0

    .line 435
    new-instance v5, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;-><init>(Lcom/akop/bach/fragment/GenericFragment;)V

    invoke-virtual {v5}, Lcom/akop/bach/fragment/GenericFragment$HoneyCombHelper;->invalidateMenu()V

    goto :goto_0

    .line 344
    :cond_3
    const v5, 0x7f0b0057

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const v5, 0x7f0b0065

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 347
    new-instance v17, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$1;)V

    .line 349
    .local v17, "holder":Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;
    const v5, 0x7f0b0066

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    .line 350
    const v5, 0x7f0b00c0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->gamerScore:Landroid/widget/TextView;

    .line 351
    const v5, 0x7f0b003e

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 352
    const v5, 0x7f0b00ba

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->avatarBody:Landroid/widget/ImageView;

    .line 353
    const v5, 0x7f0b00c5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->info:Landroid/widget/TextView;

    .line 354
    const v5, 0x7f0b00c3

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->beaconRoot:Landroid/widget/LinearLayout;

    .line 356
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->gamertag:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v7, v7, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->gamerScore:Landroid/widget/TextView;

    const v7, 0x7f080163

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget v11, v11, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamerscore:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 362
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v4, v5, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IconUrl:Ljava/lang/String;

    .line 363
    .local v4, "gamerpicUrl":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 365
    invoke-virtual {v3, v4}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .local v15, "bmp":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_4

    .line 366
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    :cond_4
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 368
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v9}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 371
    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v5, v5, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    invoke-static {v5}, Lcom/akop/bach/parser/XboxLiveParser;->getAvatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "avatarUrl":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 374
    invoke-virtual {v3, v6}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_6

    .line 375
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->avatarBody:Landroid/widget/ImageView;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    :cond_6
    sget-object v5, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v6, v5}, Lcom/akop/bach/ImageCache;->isExpired(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 377
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->sCp:Lcom/akop/bach/ImageCache$CachePolicy;

    move-object v5, v3

    move-object/from16 v7, p0

    invoke-virtual/range {v5 .. v11}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;Lcom/akop/bach/ImageCache$CachePolicy;)Z

    .line 380
    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->info:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v7, v7, Lcom/akop/bach/XboxLive$GamerProfileInfo;->CurrentActivity:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->beaconRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    .line 385
    .local v19, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v5, v5, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

    if-eqz v5, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v2, v5, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Beacons:[Lcom/akop/bach/XboxLive$BeaconInfo;

    .local v2, "arr$":[Lcom/akop/bach/XboxLive$BeaconInfo;
    array-length v0, v2

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v13, v2, v18

    .line 389
    .local v13, "beacon":Lcom/akop/bach/XboxLive$BeaconInfo;
    iget-object v0, v13, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 390
    .local v23, "title":Ljava/lang/String;
    iget-object v8, v13, Lcom/akop/bach/XboxLive$BeaconInfo;->TitleBoxArtUrl:Ljava/lang/String;

    .line 391
    .local v8, "boxartUrl":Ljava/lang/String;
    iget-object v0, v13, Lcom/akop/bach/XboxLive$BeaconInfo;->Text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 393
    .local v22, "message":Ljava/lang/String;
    const v5, 0x7f03002c

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 394
    .local v20, "item":Landroid/view/View;
    new-instance v5, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$5;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$ViewHolder;->beaconRoot:Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    const v5, 0x7f0b00ac

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 418
    .local v16, "boxart":Landroid/widget/ImageView;
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 420
    .restart local v15    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 421
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    :goto_2
    const v5, 0x7f0b00ad

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 426
    .local v24, "titleName":Landroid/widget/TextView;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v5, 0x7f0b00ae

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 429
    .local v14, "beaconText":Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 423
    .end local v14    # "beaconText":Landroid/widget/TextView;
    .end local v24    # "titleName":Landroid/widget/TextView;
    :cond_8
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v7

    const-wide/16 v10, 0x0

    move-object/from16 v9, p0

    move-object v12, v8

    invoke-virtual/range {v7 .. v12}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public okClicked(IJLjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # J
    .param p4, "param"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f080114

    .line 456
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 458
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v3, 0x7f08001a

    invoke-direct {v2, v3, p4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, p4, v2, v3}, Lcom/akop/bach/TaskController;->addFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 465
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->showToast(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    new-instance v2, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;

    const v3, 0x7f080110

    invoke-direct {v2, v3, p4}, Lcom/akop/bach/fragment/xboxlive/FriendsFragment$RequestInformation;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, p4, v2, v3}, Lcom/akop/bach/TaskController;->removeFriend(Lcom/akop/bach/SupportsFriendManagement;Ljava/lang/Object;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLiveAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    .line 170
    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-object v1, v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    .line 180
    const-string v1, "gamertag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    .line 181
    const-string v1, "info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iput-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 184
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->setHasOptionsMenu(Z)V

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 253
    invoke-super {p0, p1, p2}, Lcom/akop/bach/fragment/GenericFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 255
    const v0, 0x7f0a0019

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 191
    if-nez p2, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    .line 194
    :cond_0
    const v3, 0x7f030035

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "layout":Landroid/view/View;
    const v3, 0x7f0b00c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "composeButton":Landroid/view/View;
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->canSendMessages()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    new-instance v2, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;

    invoke-direct {v2, p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$3;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$4;

    invoke-direct {v3, p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$4;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 198
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
    .line 441
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 443
    sget-object v0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    new-instance v1, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$6;

    invoke-direct {v1, p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment$6;-><init>(Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/akop/bach/fragment/GenericFragment$GenericHandler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f080021

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 275
    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 317
    :goto_0
    return v1

    .line 278
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 312
    :sswitch_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/akop/bach/activity/xboxlive/CompareGames;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    move v1, v2

    .line 314
    goto :goto_0

    .line 282
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080131

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 287
    .local v0, "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "dialog"

    invoke-virtual {v0, v1, v3}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v1, v2

    .line 290
    goto :goto_0

    .line 294
    .end local v0    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :sswitch_2
    const/4 v3, 0x2

    invoke-virtual {p0, v4}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08010f

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Lcom/akop/bach/fragment/AlertDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/fragment/AlertDialogFragment;

    move-result-object v0

    .line 299
    .restart local v0    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    invoke-virtual {v0, p0}, Lcom/akop/bach/fragment/AlertDialogFragment;->setOnOkListener(Lcom/akop/bach/fragment/AlertDialogFragment$OnOkListener;)V

    .line 300
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "dialog"

    invoke-virtual {v0, v1, v3}, Lcom/akop/bach/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v1, v2

    .line 302
    goto :goto_0

    .line 306
    .end local v0    # "frag":Lcom/akop/bach/fragment/AlertDialogFragment;
    :sswitch_3
    invoke-virtual {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    iget-object v4, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    move v1, v2

    .line 308
    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b010b -> :sswitch_0
        0x7f0b011c -> :sswitch_3
        0x7f0b011f -> :sswitch_2
        0x7f0b0125 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 226
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 227
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 228
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 263
    const v3, 0x7f0b0105

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 264
    const v3, 0x7f0b0126

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-boolean v0, v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 266
    const v3, 0x7f0b0124

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    iget-boolean v0, v0, Lcom/akop/bach/XboxLive$GamerProfileInfo;->IsFriend:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 268
    const v0, 0x7f0b011b

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mAccount:Lcom/akop/bach/XboxLiveAccount;

    invoke-virtual {v3}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v0, v2

    .line 264
    goto :goto_1

    :cond_2
    move v0, v2

    .line 266
    goto :goto_2

    :cond_3
    move v1, v2

    .line 268
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 235
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 236
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mRequestListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 238
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->synchronizeLocal()V

    .line 239
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "info"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    const-string v0, "gamertag"

    iget-object v1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public resetTitle(Lcom/akop/bach/XboxLive$GamerProfileInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    iget-object v1, p1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 324
    iget-object v0, p1, Lcom/akop/bach/XboxLive$GamerProfileInfo;->Gamertag:Ljava/lang/String;

    iput-object v0, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mGamertag:Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->mPayload:Lcom/akop/bach/XboxLive$GamerProfileInfo;

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/akop/bach/fragment/xboxlive/PlayerProfileFragment;->synchronizeLocal()V

    .line 329
    return-void
.end method
