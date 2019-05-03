.class public Lcom/akop/bach/XboxLiveAccount;
.super Lcom/akop/bach/AuthenticatingAccount;
.source "XboxLiveAccount.java"

# interfaces
.implements Lcom/akop/bach/SupportsGames;
.implements Lcom/akop/bach/SupportsAchievements;
.implements Lcom/akop/bach/SupportsCompareGames;
.implements Lcom/akop/bach/SupportsCompareAchievements;
.implements Lcom/akop/bach/SupportsMessaging;
.implements Lcom/akop/bach/SupportsFriendManagement;


# static fields
.field public static final COVERFLOW_ALWAYS:I = 0x2

.field public static final COVERFLOW_IN_LANDSCAPE:I = 0x1

.field public static final COVERFLOW_OFF:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/akop/bach/XboxLiveAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRIEND_NOTIFY_ALL:I = 0x2

.field public static final FRIEND_NOTIFY_FAVORITES:I = 0x1

.field public static final FRIEND_NOTIFY_OFF:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBeaconNotifications:I

.field private mCoverflowMode:I

.field private mDirtyBeaconNotifications:Z

.field private mDirtyCoverflowMode:Z

.field private mDirtyFriendNotifications:Z

.field private mDirtyGamertag:Z

.field private mDirtyIsGold:Z

.field private mDirtyLastFriendSync:Z

.field private mDirtyLastGameSync:Z

.field private mDirtyLastMessageSync:Z

.field private mDirtyLastSummarySync:Z

.field private mDirtyMessageNotifications:Z

.field private mDirtyRingtone:Z

.field private mDirtyShowApps:Z

.field private mDirtyVibrate:Z

.field private mFriendNotifications:I

.field private mGamertag:Ljava/lang/String;

.field private mIsGold:Z

.field private mLastFriendSync:J

.field private mLastGameSync:J

.field private mLastMessageSync:J

.field private mLastSummarySync:J

.field private mMessageNotifications:Z

.field private mRingtone:Ljava/lang/String;

.field private mShowApps:Z

.field private mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 893
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Gamertag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IconUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/XboxLiveAccount;->PROJECTION:[Ljava/lang/String;

    .line 907
    new-instance v0, Lcom/akop/bach/XboxLiveAccount$1;

    invoke-direct {v0}, Lcom/akop/bach/XboxLiveAccount$1;-><init>()V

    sput-object v0, Lcom/akop/bach/XboxLiveAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object v4, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    .line 104
    iput-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    .line 105
    iput-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    .line 106
    iput-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    .line 107
    iput-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    .line 108
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    .line 109
    iput-object v4, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    .line 110
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    .line 111
    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    .line 112
    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    .line 113
    iput-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    .line 114
    iput v1, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    .line 115
    iput-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    .line 116
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 922
    invoke-direct {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Landroid/os/Parcel;)V

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyGamertag:Z

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastGameSync:Z

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastFriendSync:Z

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastMessageSync:Z

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastSummarySync:Z

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyIsGold:Z

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyRingtone:Z

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyVibrate:Z

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyFriendNotifications:Z

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyMessageNotifications:Z

    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyBeaconNotifications:Z

    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyCoverflowMode:Z

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    .line 948
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyShowApps:Z

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_10

    :goto_10
    iput-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    .line 950
    return-void

    :cond_0
    move v0, v2

    .line 924
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 926
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 928
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 930
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 932
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 934
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 935
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 936
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 938
    goto :goto_8

    :cond_9
    move v0, v2

    .line 939
    goto :goto_9

    :cond_a
    move v0, v2

    .line 940
    goto :goto_a

    :cond_b
    move v0, v2

    .line 942
    goto :goto_b

    :cond_c
    move v0, v2

    .line 943
    goto :goto_c

    :cond_d
    move v0, v2

    .line 944
    goto :goto_d

    :cond_e
    move v0, v2

    .line 946
    goto :goto_e

    :cond_f
    move v0, v2

    .line 948
    goto :goto_f

    :cond_10
    move v1, v2

    .line 949
    goto :goto_10
.end method

.method public constructor <init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;-><init>(Lcom/akop/bach/Preferences;Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public acceptFriendRequest(Landroid/content/Context;Ljava/lang/Object;)V
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
    .line 652
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 656
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->acceptFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 662
    return-void

    .line 660
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public actionComposeMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1, p0, p2}, Lcom/akop/bach/activity/xboxlive/MessageCompose;->actionComposeMessage(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public actionOpenMessage(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUid"    # J

    .prologue
    .line 432
    invoke-static {p1, p0, p2, p3}, Lcom/akop/bach/activity/xboxlive/MessageView;->actionShow(Landroid/content/Context;Lcom/akop/bach/SupportsMessaging;J)V

    .line 433
    return-void
.end method

.method public actionShowGames(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    invoke-static {p1, p0}, Lcom/akop/bach/activity/xboxlive/GameList;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 439
    return-void
.end method

.method public addFriend(Landroid/content/Context;Ljava/lang/Object;)V
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
    .line 587
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->addFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 597
    return-void

    .line 595
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public blockMessage(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 640
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchBlockMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 646
    return-void

    .line 644
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public canOpenMessage(Landroid/content/Context;J)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUid"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/XboxLive$Messages;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MessageType"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 458
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    .line 462
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 466
    :goto_1
    return v0

    :cond_0
    move v0, v8

    .line 458
    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v8

    .line 466
    goto :goto_1
.end method

.method public canSendMessages()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->isGold()Z

    move-result v0

    return v0
.end method

.method public cancelFriendRequest(Landroid/content/Context;Ljava/lang/Object;)V
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
    .line 668
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 672
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->cancelFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public cleanUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 757
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->deleteAccount(Lcom/akop/bach/BasicAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 802
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 806
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "userId":Ljava/lang/Object;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "gameId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchCompareAchievements(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedAchievementInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 810
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 785
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 789
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "userId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchCompareGames(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 793
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public create(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 817
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->createAccount(Lcom/akop/bach/BasicAccount;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 827
    return-void

    .line 825
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public createCursor(Landroid/app/Activity;)Landroid/database/Cursor;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 903
    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->getFriendsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/akop/bach/XboxLiveAccount;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->getId()J

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

.method public createServiceClient()Lcom/akop/bach/service/ServiceClient;
    .locals 1

    .prologue
    .line 866
    new-instance v0, Lcom/akop/bach/service/XboxLiveServiceClient;

    invoke-direct {v0}, Lcom/akop/bach/service/XboxLiveServiceClient;-><init>()V

    return-object v0
.end method

.method public deleteMessage(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 511
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "messageId":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchDeleteMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 517
    return-void

    .line 515
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public edit(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 832
    invoke-static {p1, p0}, Lcom/akop/bach/activity/xboxlive/AccountSettings;->actionEditSettings(Landroid/content/Context;Lcom/akop/bach/BasicAccount;)V

    .line 833
    return-void
.end method

.method public editLogin(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 420
    invoke-static {p1, p0}, Lcom/akop/bach/activity/AuthenticatingAccountLogin;->actionEditLoginData(Landroid/app/Activity;Lcom/akop/bach/AuthenticatingAccount;)V

    .line 421
    return-void
.end method

.method public getBeaconNotifications()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    return v0
.end method

.method public getCoverflowMode()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Lcom/akop/bach/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {p1, p0, p2}, Lcom/akop/bach/XboxLive$Friends;->getFriendId(Landroid/content/Context;Lcom/akop/bach/SupportsFriends;Ljava/lang/String;)J

    move-result-wide v0

    .line 840
    .local v0, "friendId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 842
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/akop/bach/activity/xboxlive/FriendList;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 850
    :goto_0
    return-object v2

    .line 847
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/XboxLiveAccount;->getFriendUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public getFriendNotifications()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    return v0
.end method

.method public getFriendRefreshInterval()J
    .locals 2

    .prologue
    .line 578
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getFriendScreenName(J)Ljava/lang/String;
    .locals 1
    .param p1, "friendId"    # J

    .prologue
    .line 884
    invoke-static {}, Lcom/akop/bach/App;->getInstance()Lcom/akop/bach/App;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/akop/bach/XboxLive$Friends;->getGamertag(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "friendId"    # J

    .prologue
    .line 878
    sget-object v0, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 890
    sget-object v0, Lcom/akop/bach/XboxLive$Friends;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getGameHistoryRefreshInterval()J
    .locals 2

    .prologue
    .line 176
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public getGamertag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFriendUpdate()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    return-wide v0
.end method

.method public getLastGameUpdate()J
    .locals 2

    .prologue
    .line 715
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    return-wide v0
.end method

.method public getLastMessageUpdate()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    return-wide v0
.end method

.method public getLastSummaryUpdate()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    return-wide v0
.end method

.method public getMessageRefreshInterval()J
    .locals 2

    .prologue
    .line 182
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getProfileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 872
    sget-object v0, Lcom/akop/bach/XboxLive$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getRingtoneUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryRefreshInterval()J
    .locals 2

    .prologue
    .line 171
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public isBeaconNotificationEnabled()Z
    .locals 1

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->getBeaconNotifications()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGold()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    return v0
.end method

.method public isMessageNotificationEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    return v0
.end method

.method public isMsnAccount()Z
    .locals 2

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/akop/bach/XboxLiveAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@msn.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowingApps()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    return v0
.end method

.method public isVibrationEnabled()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    return v0
.end method

.method protected onClearDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-super {p0}, Lcom/akop/bach/AuthenticatingAccount;->onClearDirtyFlags()V

    .line 384
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyGamertag:Z

    .line 385
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastGameSync:Z

    .line 386
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastFriendSync:Z

    .line 387
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastMessageSync:Z

    .line 388
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastSummarySync:Z

    .line 389
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyIsGold:Z

    .line 390
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyRingtone:Z

    .line 391
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyVibrate:Z

    .line 392
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyFriendNotifications:Z

    .line 393
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyBeaconNotifications:Z

    .line 394
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyMessageNotifications:Z

    .line 395
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyCoverflowMode:Z

    .line 396
    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyShowApps:Z

    .line 397
    return-void
.end method

.method protected onLoad(Lcom/akop/bach/Preferences;)V
    .locals 7
    .param p1, "preferences"    # Lcom/akop/bach/Preferences;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 358
    invoke-super {p0, p1}, Lcom/akop/bach/AuthenticatingAccount;->onLoad(Lcom/akop/bach/Preferences;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gamertag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastGameSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastFriendSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastMessageSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSummarySync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/akop/bach/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".isGold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/akop/bach/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".friendNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".beaconNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".messageNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/akop/bach/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".coverflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/akop/bach/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".showApps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/akop/bach/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    .line 377
    return-void
.end method

.method protected onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1, "p"    # Lcom/akop/bach/Preferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;->onSave(Lcom/akop/bach/Preferences;Landroid/content/SharedPreferences$Editor;)V

    .line 327
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyGamertag:Z

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gamertag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastGameSync:Z

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastGameSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 331
    :cond_1
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastFriendSync:Z

    if-eqz v0, :cond_2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastFriendSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 333
    :cond_2
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastMessageSync:Z

    if-eqz v0, :cond_3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastMessageSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 335
    :cond_3
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastSummarySync:Z

    if-eqz v0, :cond_4

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSummarySync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 337
    :cond_4
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyIsGold:Z

    if-eqz v0, :cond_5

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".isGold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    :cond_5
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyRingtone:Z

    if-eqz v0, :cond_6

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    :cond_6
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyVibrate:Z

    if-eqz v0, :cond_7

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    :cond_7
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyFriendNotifications:Z

    if-eqz v0, :cond_8

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".friendNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 345
    :cond_8
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyBeaconNotifications:Z

    if-eqz v0, :cond_9

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".beaconNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 347
    :cond_9
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyMessageNotifications:Z

    if-eqz v0, :cond_a

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".messageNotifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    :cond_a
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyCoverflowMode:Z

    if-eqz v0, :cond_b

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".coverflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    :cond_b
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyShowApps:Z

    if-eqz v0, :cond_c

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/akop/bach/XboxLiveAccount;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".showApps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 353
    :cond_c
    return-void
.end method

.method public open(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-static {p1, p0}, Lcom/akop/bach/activity/xboxlive/AccountSummary;->actionShow(Landroid/content/Context;Lcom/akop/bach/XboxLiveAccount;)V

    .line 415
    return-void
.end method

.method public rejectFriendRequest(Landroid/content/Context;Ljava/lang/Object;)V
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
    .line 684
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 688
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->rejectFriendRequest(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 694
    return-void

    .line 692
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public removeFriend(Landroid/content/Context;Ljava/lang/Object;)V
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
    .line 603
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->removeFriend(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 613
    return-void

    .line 611
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public sendMessage(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipients"    # [Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 527
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0, p2, p3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchSendMessage(Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 533
    return-void

    .line 531
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public setBeaconNotifications(I)V
    .locals 1
    .param p1, "beaconNotifications"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    if-eq p1, v0, :cond_0

    .line 299
    iput p1, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyBeaconNotifications:Z

    .line 302
    :cond_0
    return-void
.end method

.method public setCoverflowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 315
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    if-eq p1, v0, :cond_0

    .line 317
    iput p1, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyCoverflowMode:Z

    .line 320
    :cond_0
    return-void
.end method

.method public setFriendNotifications(I)V
    .locals 1
    .param p1, "friendNotifications"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    if-eq p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyFriendNotifications:Z

    .line 293
    :cond_0
    return-void
.end method

.method public setGamertag(Ljava/lang/String;)V
    .locals 1
    .param p1, "gamertag"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyGamertag:Z

    .line 210
    :cond_0
    return-void
.end method

.method public setGoldStatus(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    if-eq p1, v0, :cond_0

    .line 216
    iput-boolean p1, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyIsGold:Z

    .line 219
    :cond_0
    return-void
.end method

.method public setLastFriendUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 254
    iput-wide p1, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastFriendSync:Z

    .line 257
    :cond_0
    return-void
.end method

.method public setLastGameUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 235
    iput-wide p1, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastGameSync:Z

    .line 238
    :cond_0
    return-void
.end method

.method public setLastMessageUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 225
    iput-wide p1, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastMessageSync:Z

    .line 228
    :cond_0
    return-void
.end method

.method public setLastSummaryUpdate(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 244
    iput-wide p1, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastSummarySync:Z

    .line 247
    :cond_0
    return-void
.end method

.method public setMessageNotifications(Z)V
    .locals 1
    .param p1, "messageNotifications"    # Z

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    if-eq p1, v0, :cond_0

    .line 308
    iput-boolean p1, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyMessageNotifications:Z

    .line 311
    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyRingtone:Z

    .line 266
    :cond_0
    return-void
.end method

.method public setShowApps(Z)V
    .locals 1
    .param p1, "showApps"    # Z

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    if-eq v0, p1, :cond_0

    .line 272
    iput-boolean p1, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyShowApps:Z

    .line 275
    :cond_0
    return-void
.end method

.method public setVibration(Z)V
    .locals 1
    .param p1, "vibrate"    # Z

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    if-eq p1, v0, :cond_0

    .line 281
    iput-boolean p1, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyVibrate:Z

    .line 284
    :cond_0
    return-void
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
    .line 722
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 726
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "gameId":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchAchievements(Lcom/akop/bach/XboxLiveAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 732
    return-void

    .line 730
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 557
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 561
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "friendId":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriendSummary(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 567
    return-void

    .line 565
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 541
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 545
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchFriends(Lcom/akop/bach/XboxLiveAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 700
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 704
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchGames(Lcom/akop/bach/XboxLiveAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 710
    return-void

    .line 708
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public updateMessage(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "messageId":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->fetchMessage(Lcom/akop/bach/XboxLiveAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public updateMessages(Landroid/content/Context;)V
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
    .line 491
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchMessages(Lcom/akop/bach/XboxLiveAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 769
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 773
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->fetchSummary(Lcom/akop/bach/XboxLiveAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    .line 779
    return-void

    .line 777
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

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
    .line 738
    new-instance v0, Lcom/akop/bach/parser/XboxLiveParser;

    invoke-direct {v0, p1}, Lcom/akop/bach/parser/XboxLiveParser;-><init>(Landroid/content/Context;)V

    .line 742
    .local v0, "p":Lcom/akop/bach/parser/XboxLiveParser;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/akop/bach/parser/XboxLiveParser;->validateAccount(Lcom/akop/bach/BasicAccount;)Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 746
    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/akop/bach/parser/XboxLiveParser;->dispose()V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 955
    invoke-super {p0, p1, p2}, Lcom/akop/bach/AuthenticatingAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 957
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyGamertag:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 958
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mGamertag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastGameSync:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 960
    iget-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastGameSync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 961
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastFriendSync:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 962
    iget-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastFriendSync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 963
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastMessageSync:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 964
    iget-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastMessageSync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 965
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyLastSummarySync:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 966
    iget-wide v4, p0, Lcom/akop/bach/XboxLiveAccount;->mLastSummarySync:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 967
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyIsGold:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 968
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mIsGold:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 969
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyRingtone:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 970
    iget-object v0, p0, Lcom/akop/bach/XboxLiveAccount;->mRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 971
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyVibrate:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 972
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mVibrate:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 973
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyFriendNotifications:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 974
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mFriendNotifications:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyMessageNotifications:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 976
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mMessageNotifications:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 977
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyBeaconNotifications:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 978
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mBeaconNotifications:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 979
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyCoverflowMode:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 980
    iget v0, p0, Lcom/akop/bach/XboxLiveAccount;->mCoverflowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mDirtyShowApps:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 982
    iget-boolean v0, p0, Lcom/akop/bach/XboxLiveAccount;->mShowApps:Z

    if-eqz v0, :cond_10

    :goto_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 983
    return-void

    :cond_0
    move v0, v2

    .line 957
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 959
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 961
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 963
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 965
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 967
    goto :goto_5

    :cond_6
    move v0, v2

    .line 968
    goto :goto_6

    :cond_7
    move v0, v2

    .line 969
    goto :goto_7

    :cond_8
    move v0, v2

    .line 971
    goto :goto_8

    :cond_9
    move v0, v2

    .line 972
    goto :goto_9

    :cond_a
    move v0, v2

    .line 973
    goto :goto_a

    :cond_b
    move v0, v2

    .line 975
    goto :goto_b

    :cond_c
    move v0, v2

    .line 976
    goto :goto_c

    :cond_d
    move v0, v2

    .line 977
    goto :goto_d

    :cond_e
    move v0, v2

    .line 979
    goto :goto_e

    :cond_f
    move v0, v2

    .line 981
    goto :goto_f

    :cond_10
    move v1, v2

    .line 982
    goto :goto_10
.end method
