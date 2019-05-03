.class public Lcom/akop/bach/XboxLive;
.super Ljava/lang/Object;
.source "XboxLive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/XboxLive$1;,
        Lcom/akop/bach/XboxLive$GameOverviewInfo;,
        Lcom/akop/bach/XboxLive$GamerProfileInfo;,
        Lcom/akop/bach/XboxLive$BeaconInfo;,
        Lcom/akop/bach/XboxLive$LiveStatusInfo;,
        Lcom/akop/bach/XboxLive$FriendsOfFriend;,
        Lcom/akop/bach/XboxLive$RecentPlayers;,
        Lcom/akop/bach/XboxLive$ComparedAchievementInfo;,
        Lcom/akop/bach/XboxLive$ComparedAchievementCursor;,
        Lcom/akop/bach/XboxLive$ComparedGameInfo;,
        Lcom/akop/bach/XboxLive$ComparedGameCursor;,
        Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;,
        Lcom/akop/bach/XboxLive$RecentPlayersCursor;,
        Lcom/akop/bach/XboxLive$SentMessages;,
        Lcom/akop/bach/XboxLive$NotifyStates;,
        Lcom/akop/bach/XboxLive$Events;,
        Lcom/akop/bach/XboxLive$Beacons;,
        Lcom/akop/bach/XboxLive$Messages;,
        Lcom/akop/bach/XboxLive$Achievements;,
        Lcom/akop/bach/XboxLive$Games;,
        Lcom/akop/bach/XboxLive$Friends;,
        Lcom/akop/bach/XboxLive$Profiles;
    }
.end annotation


# static fields
.field public static final LIVE_STATUS_ERROR:I = 0x2

.field public static final LIVE_STATUS_OK:I = 0x1

.field public static final MESSAGE_OTHER:I = 0x0

.field public static final MESSAGE_TEXT:I = 0x1

.field public static final MESSAGE_VOICE:I = 0x2

.field public static final STATUS_AWAY:I = 0x5

.field public static final STATUS_INVITE_RCVD:I = 0x2

.field public static final STATUS_INVITE_SENT:I = 0x1

.field public static final STATUS_NOT_YET:I = 0x3

.field public static final STATUS_OFFLINE:I = 0x6

.field public static final STATUS_ONLINE:I = 0x4

.field public static final STATUS_OTHER:I = 0x63


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1990
    return-void
.end method
