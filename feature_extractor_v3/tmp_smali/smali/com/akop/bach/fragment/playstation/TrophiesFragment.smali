.class public Lcom/akop/bach/fragment/playstation/TrophiesFragment;
.super Lcom/akop/bach/fragment/GenericFragment;
.source "TrophiesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;,
        Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACH_PROJ:[Ljava/lang/String;

.field private static final COLUMN_DESCRIPTION:I = 0x2

.field private static final COLUMN_EARNED:I = 0x3

.field private static final COLUMN_EARNED_TEXT:I = 0x4

.field private static final COLUMN_ICON_URL:I = 0x7

.field private static final COLUMN_TITLE:I = 0x1

.field private static final COLUMN_TYPE:I = 0x6

.field private static final TROPHY_RESOURCES:[I


# instance fields
.field private mAccount:Lcom/akop/bach/PsnAccount;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mCp:Lcom/akop/bach/ImageCache$CachePolicy;

.field private mGameTitle:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/akop/bach/TaskController$TaskListener;

.field private mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Landroid/widget/TextView;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/view/View;

.field private mShowGameTotals:Z

.field private mTitleId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 75
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->TROPHY_RESOURCES:[I

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Earned"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EarnedText"

    aput-object v2, v0, v1

    const-string v1, "IsSecret"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->ACH_PROJ:[Ljava/lang/String;

    return-void

    .line 75
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

    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/GenericFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$1;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;

    const-string v1, "PsnTrophies"

    invoke-direct {v0, p0, v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$2;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    .line 261
    new-instance v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;

    invoke-direct {v0, p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$3;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V

    iput-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 290
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    .line 292
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 293
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 294
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    .line 295
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    .line 296
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mProgress:Landroid/view/View;

    .line 297
    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mGameTitle:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mShowGameTotals:Z

    return-void
.end method

.method static synthetic access$000(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->synchronizeWithServer()V

    return-void
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->TROPHY_RESOURCES:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->ACH_PROJ:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->loadGameDetails()V

    return-void
.end method

.method static synthetic access$1700()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->synchronizeLocal()V

    return-void
.end method

.method static synthetic access$300(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->syncIcons()V

    return-void
.end method

.method static synthetic access$800()Lcom/akop/bach/fragment/GenericFragment$GenericHandler;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mHandler:Lcom/akop/bach/fragment/GenericFragment$GenericHandler;

    return-object v0
.end method

.method private loadGameDetails()V
    .locals 23

    .prologue
    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getView()Landroid/view/View;

    move-result-object v22

    .line 601
    .local v22, "view":Landroid/view/View;
    if-nez v22, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_b

    .line 606
    const v5, 0x7f0b0057

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 607
    const v5, 0x7f0b006f

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mShowGameTotals:Z

    if-eqz v5, :cond_0

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    .line 619
    .local v14, "context":Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 620
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/fragment/playstation/GamesFragment;->PROJ:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 623
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 627
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 629
    const/4 v5, 0x4

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 630
    .local v18, "platinum":I
    const/4 v5, 0x5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 631
    .local v15, "gold":I
    const/4 v5, 0x6

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 632
    .local v20, "silver":I
    const/4 v5, 0x7

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 633
    .local v12, "bronze":I
    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 639
    .local v19, "progress":I
    const v5, 0x7f0b001d

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .local v21, "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_2

    .line 640
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_2
    const v5, 0x7f0b0082

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_3

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_3
    const v5, 0x7f0b0083

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ProgressBar;

    .local v17, "pb":Landroid/widget/ProgressBar;
    if-eqz v17, :cond_4

    .line 644
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 646
    :cond_4
    const v5, 0x7f0b0081

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_5

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    :cond_5
    const v5, 0x7f0b0080

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_6

    .line 649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_6
    const v5, 0x7f0b007f

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_7

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_7
    const v5, 0x7f0b007e

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_8

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_8
    const v5, 0x7f0b007d

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "tv":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .restart local v21    # "tv":Landroid/widget/TextView;
    if-eqz v21, :cond_9

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v6, v18, v15

    add-int v6, v6, v20

    add-int/2addr v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :cond_9
    invoke-static {}, Lcom/akop/bach/ImageCache;->getInstance()Lcom/akop/bach/ImageCache;

    move-result-object v3

    .line 658
    .local v3, "ic":Lcom/akop/bach/ImageCache;
    const/16 v5, 0x8

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "iconUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual {v3, v4, v5}, Lcom/akop/bach/ImageCache;->getCachedBitmap(Ljava/lang/String;Lcom/akop/bach/ImageCache$CachePolicy;)Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, "bmp":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_c

    .line 663
    const v5, 0x7f0b001c

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 664
    .local v16, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "bronze":I
    .end local v15    # "gold":I
    .end local v16    # "iv":Landroid/widget/ImageView;
    .end local v17    # "pb":Landroid/widget/ProgressBar;
    .end local v18    # "platinum":I
    .end local v19    # "progress":I
    .end local v20    # "silver":I
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_a
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 611
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "context":Landroid/content/Context;
    :cond_b
    const v5, 0x7f0b0057

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 612
    const v5, 0x7f0b006f

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 668
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "ic":Lcom/akop/bach/ImageCache;
    .restart local v4    # "iconUrl":Ljava/lang/String;
    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "bronze":I
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "context":Landroid/content/Context;
    .restart local v15    # "gold":I
    .restart local v17    # "pb":Landroid/widget/ProgressBar;
    .restart local v18    # "platinum":I
    .restart local v19    # "progress":I
    .restart local v20    # "silver":I
    .restart local v21    # "tv":Landroid/widget/TextView;
    :cond_c
    if-eqz v4, :cond_a

    .line 670
    :try_start_1
    new-instance v5, Lcom/akop/bach/fragment/playstation/TrophiesFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$4;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-virtual/range {v3 .. v10}, Lcom/akop/bach/ImageCache;->requestImage(Ljava/lang/String;Lcom/akop/bach/ImageCache$OnImageReadyListener;JLjava/lang/Object;ZLcom/akop/bach/ImageCache$CachePolicy;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 692
    .end local v3    # "ic":Lcom/akop/bach/ImageCache;
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "bronze":I
    .end local v15    # "gold":I
    .end local v17    # "pb":Landroid/widget/ProgressBar;
    .end local v18    # "platinum":I
    .end local v19    # "progress":I
    .end local v20    # "silver":I
    .end local v21    # "tv":Landroid/widget/TextView;
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;JZ)Lcom/akop/bach/fragment/playstation/TrophiesFragment;
    .locals 3
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "titleId"    # J
    .param p3, "showGameTotals"    # Z

    .prologue
    .line 309
    new-instance v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    invoke-direct {v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;-><init>()V

    .line 311
    .local v1, "f":Lcom/akop/bach/fragment/playstation/TrophiesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    const-string v2, "titleId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    const-string v2, "showGameTotals"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    invoke-virtual {v1, v0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 317
    return-object v1
.end method

.method public static newInstance(Lcom/akop/bach/PsnAccount;Z)Lcom/akop/bach/fragment/playstation/TrophiesFragment;
    .locals 2
    .param p0, "account"    # Lcom/akop/bach/PsnAccount;
    .param p1, "showGameTotals"    # Z

    .prologue
    .line 303
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1, p1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->newInstance(Lcom/akop/bach/PsnAccount;JZ)Lcom/akop/bach/fragment/playstation/TrophiesFragment;

    move-result-object v0

    return-object v0
.end method

.method private showTrophyDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 518
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0b008b

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0b0035

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 522
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const v4, 0x7f0b0036

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 524
    .restart local v2    # "text":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    new-instance v3, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 527
    .local v3, "toast":Landroid/widget/Toast;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 528
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 530
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 531
    return-void
.end method

.method private synchronizeLocal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v10, v4, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 537
    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-ltz v1, :cond_3

    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "exists":Z
    const/4 v8, 0x0

    .line 542
    .local v8, "isDirty":Z
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Title"

    aput-object v3, v2, v10

    const-string v3, "TrophiesDirty"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 552
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v8, v9

    .line 555
    :goto_0
    const/4 v7, 0x1

    .line 556
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mGameTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_1
    if-eqz v8, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->synchronizeWithServer()V

    .line 568
    :cond_2
    if-nez v7, :cond_3

    .line 569
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    .line 572
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "exists":Z
    .end local v8    # "isDirty":Z
    :cond_3
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->loadGameDetails()V

    .line 573
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "exists":Z
    .restart local v8    # "isDirty":Z
    :cond_4
    move v8, v10

    .line 554
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private synchronizeWithServer()V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 578
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/TaskController;->synchronizeAchievements(Lcom/akop/bach/SupportsAchievements;Ljava/lang/Object;Lcom/akop/bach/TaskController$TaskListener;)V

    .line 582
    return-void
.end method


# virtual methods
.method protected getCachePolicy()Lcom/akop/bach/ImageCache$CachePolicy;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    return-object v0
.end method

.method protected getIconCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 507
    :goto_0
    return-object v4

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "IconUrl"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Earned"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != 0 OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "EarnedText"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " IS NOT NULL)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Earned DESC, SortOrder ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 406
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 407
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 436
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 439
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mGameTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    if-eqz v4, :cond_0

    .line 441
    iget-object v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    .line 443
    .local v2, "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 456
    .end local v2    # "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 446
    .restart local v2    # "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string v4, "query"

    const v5, 0x7f0800a2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mGameTitle:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v7, v2, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x7f0b0110
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onCreate(Landroid/os/Bundle;)V

    .line 325
    new-instance v1, Lcom/akop/bach/ImageCache$CachePolicy;

    invoke-direct {v1}, Lcom/akop/bach/ImageCache$CachePolicy;-><init>()V

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    .line 326
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mCp:Lcom/akop/bach/ImageCache$CachePolicy;

    const/16 v2, 0x60

    iput v2, v1, Lcom/akop/bach/ImageCache$CachePolicy;->resizeHeight:I

    .line 328
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 332
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 333
    const-string v1, "titleId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    .line 336
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 338
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/PsnAccount;

    iput-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    .line 339
    const-string v1, "titleId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    .line 342
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->setHasOptionsMenu(Z)V

    .line 343
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/akop/bach/fragment/GenericFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 424
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 426
    .local v0, "acmi":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    .line 427
    .local v1, "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    iget-object v2, v1, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 429
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 431
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 349
    if-nez p2, :cond_0

    move-object v1, v4

    .line 398
    :goto_0
    return-object v1

    .line 352
    :cond_0
    const v5, 0x7f030019

    invoke-virtual {p1, v5, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, "layout":Landroid/view/View;
    iput-boolean v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mShowGameTotals:Z

    .line 356
    const v5, 0x7f0b0063

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "gameDetails":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "showGameTotals"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mShowGameTotals:Z

    .line 362
    iget-boolean v5, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mShowGameTotals:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_1
    new-instance v2, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;

    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, p0, v5, v4}, Lcom/akop/bach/fragment/playstation/TrophiesFragment$MyCursorAdapter;-><init>(Lcom/akop/bach/fragment/playstation/TrophiesFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 385
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    .line 386
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    const v4, 0x7f0800d6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 388
    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mProgress:Landroid/view/View;

    .line 389
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    .line 392
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 396
    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 362
    goto :goto_1
.end method

.method public onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 486
    invoke-super {p0, p1, p2, p3, p4}, Lcom/akop/bach/fragment/GenericFragment;->onImageReady(JLjava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 488
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 490
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 496
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;

    .line 497
    .local v0, "vh":Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;
    iget-object v1, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/akop/bach/fragment/playstation/TrophiesFragment$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->showTrophyDetails(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 462
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onPause()V

    .line 464
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->removeListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 466
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 468
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 473
    invoke-super {p0}, Lcom/akop/bach/fragment/GenericFragment;->onResume()V

    .line 475
    invoke-static {}, Lcom/akop/bach/TaskController;->getInstance()Lcom/akop/bach/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mListener:Lcom/akop/bach/TaskController$TaskListener;

    invoke-virtual {v1, v2}, Lcom/akop/bach/TaskController;->addListener(Lcom/akop/bach/TaskController$TaskListener;)V

    .line 477
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->synchronizeLocal()V

    .line 481
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/akop/bach/fragment/GenericFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 414
    const-string v0, "account"

    iget-object v1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mAccount:Lcom/akop/bach/PsnAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    const-string v0, "titleId"

    iget-wide v2, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 416
    return-void
.end method

.method public resetTitle(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 586
    iput-wide p1, p0, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->mTitleId:J

    .line 588
    invoke-direct {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->synchronizeLocal()V

    .line 589
    invoke-virtual {p0}, Lcom/akop/bach/fragment/playstation/TrophiesFragment;->syncIcons()V

    .line 590
    return-void
.end method
