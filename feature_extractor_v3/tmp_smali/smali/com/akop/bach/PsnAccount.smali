.class public Lcom/akop/bach/PsnAccount;
.super Lcom/akop/bach/AuthenticatingAccount;
.source "PsnAccount.java"

# interfaces
.implements Lcom/akop/bach/SupportsGames;
.implements Lcom/akop/bach/SupportsAchievements;
.implements Lcom/akop/bach/SupportsFriends;
.implements Lcom/akop/bach/SupportsCompareGames;
.implements Lcom/akop/bach/SupportsCompareAchievements;


# static fields
.field private static AVATAR_AKUMA:Ljava/util/regex/Pattern; = null

.field private static AVATAR_USUAL:Ljava/util/regex/Pattern; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/PsnAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRIEND_NOTIFY_ALL:I = 0x2

.field public static final FRIEND_NOTIFY_FAVORITES:I = 0x1

.field public static final FRIEND_NOTIFY_OFF:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final REGION_EU:Ljava/lang/String; = "eu"

.field public static final REGION_US:Ljava/lang/String; = "us"


# instance fields
.field private mConsole:I

.field private mDirtyConsole:Z

.field private mDirtyFriendNotifications:Z

.field private mDirtyLastFriendSync:Z

.field private mDirtyLastGameSync:Z

.field private mDirtyLastSummarySync:Z

.field private mDirtyLocale:Z

.field private mDirtyOnlineId:Z

.field private mDirtyPsnServer:Z

.field private mDirtyReleaseStatus:Z

.field private mDirtyRingtone:Z

.field private mDirtySortFilter:Z

.field private mDirtyVibrate:Z

.field private mFriendNotifications:I

.field private mLastFriendSync:J

.field private mLastGameSync:J

.field private mLastSummarySync:J

.field private mLocale:Ljava/lang/String;

.field private mOnlineId:Ljava/lang/String;

.field private mPsnServer:Ljava/lang/String;

.field private mReleaseStatus:I

.field private mRingtone:Ljava/lang/String;

.field private mSortOrder:I

.field private mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 546
    const-string v0, "_s.png$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PsnAccount;->AVATAR_USUAL:Ljava/util/regex/Pattern;

    .line 547
    const-string v0, "[^_]s.png$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/PsnAccount;->AVATAR_AKUMA:Ljava/util/regex/Pattern;

    .line 678
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OnlineId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/PsnAccount;->PROJECTION:[Ljava/lang/String;

    .line 692
    new-instance v0, Lcom/akop/bach/PsnAccount$1;

    invoke-direct {v0}, Lcom/akop/bach/PsnAccount$1;-><init>()V

    sput-object v0, Lcom/akop/bach/PsnAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Landroid/content/Context;)V

    .line 100
    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    .line 101
    iput-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    .line 102
    iput-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    .line 103
    iput-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    .line 104
    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    .line 106
    const-string v0, "eu"

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    .line 107
    const-string v0, "us"

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    .line 110
    iput v1, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    .line 111
    iput v1, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    .line 112
    iput v1, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    .line 113
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 707
    invoke-direct {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Landroid/os/Parcel;)V

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyOnlineId:Z

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyRingtone:Z

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyVibrate:Z

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyFriendNotifications:Z

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastSummarySync:Z

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastGameSync:Z

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastFriendSync:Z

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyPsnServer:Z

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLocale:Z

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyConsole:Z

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtySortFilter:Z

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    :goto_c
    iput-boolean v1, p0, Lcom/akop/bach/PsnAccount;->mDirtyReleaseStatus:Z

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    .line 733
    return-void

    :cond_0
    move v0, v2

    .line 709
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 711
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 713
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 714
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 715
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 717
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 719
    goto :goto_6

    :cond_7
    move v0, v2

    .line 721
    goto :goto_7

    :cond_8
    move v0, v2

    .line 723
    goto :goto_8

    :cond_9
    move v0, v2

    .line 725
    goto :goto_9

    :cond_a
    move v0, v2

    .line 727
    goto :goto_a

    :cond_b
    move v0, v2

    .line 729
    goto :goto_b

    :cond_c
    move v1, v2

    .line 731
    goto :goto_c
.end method

.method public constructor <init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public actionShowGames(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    invoke-static {p1, p0}, Lcom/akop/bach/activity/playstation/GameList;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V

    .line 646
    return-void
.end method

.method public canCompareUnknowns()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getPsnServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 322
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/PsnParser;->deleteAccount(Lcom/akop/bach/BasicAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 328
    return-void

    .line 326
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public compareAchievements(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Object;
    .param p3, "gameId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createServerBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 503
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "userId":Ljava/lang/Object;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "gameId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2, p3}, Lcom/akop/bach/parser/PsnParser;->compareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 507
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public compareGames(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createServerBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 487
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "userId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/PsnParser;->compareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 491
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public create(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 359
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/PsnParser;->createAccount(Lcom/akop/bach/BasicAccount;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public createCursor(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getFriendsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/PsnAccount;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Lcom/akop/bach/parser/PsnEuParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/PsnEuParser;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createLocaleBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createUsParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    goto :goto_0
.end method

.method protected createServerBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getPsnServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createUsParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    goto :goto_0
.end method

.method public createServiceClient()Lcom/akop/bach/service/ServiceClient;
    .locals 1

    .prologue
    .line 651
    new-instance v0, Lcom/akop/bach/service/PsnServiceClient;

    invoke-direct {v0}, Lcom/akop/bach/service/PsnServiceClient;-><init>()V

    return-object v0
.end method

.method protected createUsParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Lcom/akop/bach/parser/PsnUsParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/PsnUsParser;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public edit(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    invoke-static {p1, p0}, Lcom/akop/bach/activity/playstation/AccountSettings;->actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V

    .line 350
    return-void
.end method

.method public editLogin(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 296
    invoke-static {p1, p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->actionEditLoginData(Landroid/app/Activity;Lcom/akop/bach/AuthenticatingAccount;)V

    .line 297
    return-void
.end method

.method public getBlog(Landroid/content/Context;)Lcom/akop/bach/util/rss/RssChannel;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createLocaleBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 518
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->fetchBlog()Lcom/akop/bach/util/rss/RssChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 522
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public getCatalogConsole()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    return v0
.end method

.method public getCatalogReleaseStatus()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    return v0
.end method

.method public getCatalogSortOrder()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Lcom/akop/bach/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendNotifications()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    return v0
.end method

.method public getFriendRefreshInterval()J
    .locals 2

    .prologue
    .line 476
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getFriendScreenName(J)Ljava/lang/String;
    .locals 1
    .param p1, "friendId"    # J

    .prologue
    .line 669
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/akop/bach/PSN$Friends;->getOnlineId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "friendId"    # J

    .prologue
    .line 663
    sget-object v0, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 675
    sget-object v0, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getGameHistoryRefreshInterval()J
    .locals 2

    .prologue
    .line 404
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public getLargeAvatar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 551
    if-eqz p1, :cond_0

    const-string v1, "/avatar_s/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    .end local p1    # "avatarUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 554
    .restart local p1    # "avatarUrl":Ljava/lang/String;
    :cond_1
    const-string v1, "/avatar_s/"

    const-string v2, "/avatar/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "largeAvatarUrl":Ljava/lang/String;
    sget-object v1, Lcom/akop/bach/PsnAccount;->AVATAR_USUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    const-string v1, "_s.png"

    const-string v2, ".png"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 558
    :cond_2
    sget-object v1, Lcom/akop/bach/PsnAccount;->AVATAR_AKUMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "s.png"

    const-string v2, "l.png"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLastFriendUpdate()J
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    return-wide v0
.end method

.method public getLastGameUpdate()J
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    return-wide v0
.end method

.method public getLastSummaryUpdate()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 657
    sget-object v0, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPsnServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtoneUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryRefreshInterval()J
    .locals 2

    .prologue
    .line 219
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public isVibrationEnabled()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    return v0
.end method

.method protected onClearDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-super {p0}, Lcom/akop/bach/AuthenticatingAccount;->onClearDirtyFlags()V

    .line 531
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyOnlineId:Z

    .line 532
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastGameSync:Z

    .line 533
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastFriendSync:Z

    .line 534
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastSummarySync:Z

    .line 535
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyRingtone:Z

    .line 536
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyVibrate:Z

    .line 537
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyFriendNotifications:Z

    .line 538
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyPsnServer:Z

    .line 539
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLocale:Z

    .line 541
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyConsole:Z

    .line 542
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyReleaseStatus:Z

    .line 543
    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtySortFilter:Z

    .line 544
    return-void
.end method

.method protected onLoad(Lcom/akop/bach/Preferences;)V
    .locals 6
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;->onLoad(Lcom/akop/bach/Preferences;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onlineId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSummarySync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastGameSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastFriendSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".friendNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".psnServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eu"

    invoke-virtual {p1, v0, v1}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catConsole"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catSort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catRelease"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    .line 273
    return-void
.end method

.method protected onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1, "p"    # Lcom/akop/bach/Preferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;->onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V

    .line 227
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyOnlineId:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onlineId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastSummarySync:Z

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSummarySync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastGameSync:Z

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastGameSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 233
    :cond_2
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastFriendSync:Z

    if-eqz v0, :cond_3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastFriendSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyRingtone:Z

    if-eqz v0, :cond_4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    :cond_4
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyVibrate:Z

    if-eqz v0, :cond_5

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    :cond_5
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyFriendNotifications:Z

    if-eqz v0, :cond_6

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".friendNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    :cond_6
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyPsnServer:Z

    if-eqz v0, :cond_7

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".psnServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    :cond_7
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLocale:Z

    if-eqz v0, :cond_8

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_8
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyConsole:Z

    if-eqz v0, :cond_9

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catConsole"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    :cond_9
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtySortFilter:Z

    if-eqz v0, :cond_a

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catSort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_a
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyReleaseStatus:Z

    if-eqz v0, :cond_b

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".catRelease"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    :cond_b
    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-static {p1, p0}, Lcom/akop/bach/activity/playstation/AccountSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/PsnAccount;)V

    .line 291
    return-void
.end method

.method public setCatalogConsole(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    if-eq v0, p1, :cond_0

    .line 170
    iput p1, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyConsole:Z

    .line 173
    :cond_0
    return-void
.end method

.method public setCatalogReleaseStatus(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 201
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    if-eq v0, p1, :cond_0

    .line 203
    iput p1, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyReleaseStatus:Z

    .line 206
    :cond_0
    return-void
.end method

.method public setCatalogSortOrder(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    if-eq v0, p1, :cond_0

    .line 184
    iput p1, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtySortFilter:Z

    .line 187
    :cond_0
    return-void
.end method

.method public setFriendNotifications(I)V
    .locals 1
    .param p1, "friendNotifications"    # I

    .prologue
    .line 635
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    if-eq p1, v0, :cond_0

    .line 637
    iput p1, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyFriendNotifications:Z

    .line 640
    :cond_0
    return-void
.end method

.method public setLastFriendUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 468
    iput-wide p1, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastFriendSync:Z

    .line 471
    :cond_0
    return-void
.end method

.method public setLastGameUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 396
    iput-wide p1, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastGameSync:Z

    .line 399
    :cond_0
    return-void
.end method

.method public setLastSummaryUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 212
    iput-wide p1, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastSummarySync:Z

    .line 215
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 601
    iput-object p1, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLocale:Z

    .line 604
    :cond_0
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 1
    .param p1, "onlineId"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iput-object p1, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyOnlineId:Z

    .line 159
    :cond_0
    return-void
.end method

.method public setPsnServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 587
    iput-object p1, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyPsnServer:Z

    .line 590
    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iput-object p1, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyRingtone:Z

    .line 576
    :cond_0
    return-void
.end method

.method public setVibration(Z)V
    .locals 1
    .param p1, "vibrate"    # Z

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    if-eq p1, v0, :cond_0

    .line 623
    iput-boolean p1, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyVibrate:Z

    .line 626
    :cond_0
    return-void
.end method

.method public supportsFilteringByReleaseDate()Z
    .locals 2

    .prologue
    .line 191
    const-string v0, "eu"

    iget-object v1, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateAchievements(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createServerBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 415
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "gameId":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/akop/bach/parser/PsnParser;->fetchTrophies(Lcom/akop/bach/PsnAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 421
    return-void

    .line 419
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public updateFriendProfile(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friendId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 449
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/PsnParser;->fetchFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 455
    return-void

    .line 453
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public updateFriends(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 433
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/PsnParser;->fetchFriends(Lcom/akop/bach/PsnAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public updateGames(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createServerBasedParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 377
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/PsnParser;->fetchGames(Lcom/akop/bach/PsnAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public updateProfile(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 338
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/PsnParser;->fetchSummary(Lcom/akop/bach/PsnAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public validate(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/akop/bach/PsnAccount;->createEuParser(Landroid/content/Context;)Lcom/akop/bach/parser/PsnParser;

    move-result-object v0

    .line 307
    .local v0, "p":Lcom/akop/bach/parser/PsnParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/PsnParser;->validateAccount(Lcom/akop/bach/BasicAccount;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/PsnParser;->dispose()V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 738
    invoke-super {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyOnlineId:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 741
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyRingtone:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 743
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyVibrate:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 745
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mVibrate:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 746
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyFriendNotifications:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 747
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mFriendNotifications:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastSummarySync:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 749
    iget-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastSummarySync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 750
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastGameSync:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 751
    iget-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastGameSync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 752
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLastFriendSync:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 753
    iget-wide v4, p0, Lcom/akop/bach/PsnAccount;->mLastFriendSync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 754
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyPsnServer:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 755
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mPsnServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyLocale:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 757
    iget-object v0, p0, Lcom/akop/bach/PsnAccount;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 758
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyConsole:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 759
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mConsole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtySortFilter:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 761
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mSortOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-boolean v0, p0, Lcom/akop/bach/PsnAccount;->mDirtyReleaseStatus:Z

    if-eqz v0, :cond_c

    :goto_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 763
    iget v0, p0, Lcom/akop/bach/PsnAccount;->mReleaseStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    return-void

    :cond_0
    move v0, v2

    .line 740
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 742
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 744
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 745
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 746
    goto :goto_4

    :cond_5
    move v0, v2

    .line 748
    goto :goto_5

    :cond_6
    move v0, v2

    .line 750
    goto :goto_6

    :cond_7
    move v0, v2

    .line 752
    goto :goto_7

    :cond_8
    move v0, v2

    .line 754
    goto :goto_8

    :cond_9
    move v0, v2

    .line 756
    goto :goto_9

    :cond_a
    move v0, v2

    .line 758
    goto :goto_a

    :cond_b
    move v0, v2

    .line 760
    goto :goto_b

    :cond_c
    move v1, v2

    .line 762
    goto :goto_c
.end method
