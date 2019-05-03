.class public Lcom/akop/bach/PSN;
.super Ljava/lang/Object;
.source "PSN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/PSN$NotifyStates;,
        Lcom/akop/bach/PSN$GamerProfileInfo;,
        Lcom/akop/bach/PSN$ComparedTrophyInfo;,
        Lcom/akop/bach/PSN$ComparedTrophyCursor;,
        Lcom/akop/bach/PSN$ComparedGameInfo;,
        Lcom/akop/bach/PSN$ComparedGameCursor;,
        Lcom/akop/bach/PSN$GameCatalogItem;,
        Lcom/akop/bach/PSN$GameCatalogList;,
        Lcom/akop/bach/PSN$GameCatalogItemDetails;,
        Lcom/akop/bach/PSN$FriendInfo;,
        Lcom/akop/bach/PSN$TrophyInfo;,
        Lcom/akop/bach/PSN$GameInfo;,
        Lcom/akop/bach/PSN$Friends;,
        Lcom/akop/bach/PSN$Trophies;,
        Lcom/akop/bach/PSN$Games;,
        Lcom/akop/bach/PSN$Profiles;
    }
.end annotation


# static fields
.field public static final CATALOG_CONSOLE_PS2:I = 0x2

.field public static final CATALOG_CONSOLE_PS3:I = 0x0

.field public static final CATALOG_CONSOLE_PSP:I = 0x3

.field public static final CATALOG_CONSOLE_PSVITA:I = 0x1

.field public static final CATALOG_RELEASE_COMING_SOON:I = 0x1

.field public static final CATALOG_RELEASE_OUT_NOW:I = 0x0

.field public static final CATALOG_SORT_BY_ALPHA:I = 0x1

.field public static final CATALOG_SORT_BY_RELEASE:I = 0x0

.field public static final MEMBER_TYPE_FREE:I = 0x0

.field public static final MEMBER_TYPE_PLUS:I = 0x1

.field public static final STATUS_AWAY:I = 0x5

.field private static final STATUS_DESC_RESID:[I

.field public static final STATUS_OFFLINE:I = 0x6

.field public static final STATUS_ONLINE:I = 0x4

.field public static final STATUS_OTHER:I = 0x0

.field public static final STATUS_PENDING:I = 0x3

.field public static final STATUS_PENDING_RCVD:I = 0x2

.field public static final STATUS_PENDING_SENT:I = 0x1

.field public static final TROPHY_BRONZE:I = 0x1

.field public static final TROPHY_GOLD:I = 0x3

.field public static final TROPHY_PLATINUM:I = 0x4

.field public static final TROPHY_SECRET:I = 0x0

.field public static final TROPHY_SILVER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/akop/bach/PSN;->STATUS_DESC_RESID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08013e
        0x7f080116
        0x7f080115
        0x7f080113
        0x7f0800eb
        0x7f080022
        0x7f0800e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    return-void
.end method

.method public static getOnlineStatusDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlineStatus"    # I

    .prologue
    .line 907
    if-ltz p1, :cond_0

    sget-object v0, Lcom/akop/bach/PSN;->STATUS_DESC_RESID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 908
    :cond_0
    const/4 v0, 0x0

    .line 910
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/akop/bach/PSN;->STATUS_DESC_RESID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getShortTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J

    .prologue
    .line 927
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 928
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 931
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080145

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J

    .prologue
    .line 915
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 916
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080145

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
