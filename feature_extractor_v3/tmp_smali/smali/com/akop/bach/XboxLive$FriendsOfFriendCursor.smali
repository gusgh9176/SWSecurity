.class public Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;
.super Lcom/akop/bach/XboxLive$RecentPlayersCursor;
.source "XboxLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsOfFriendCursor"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final serialVersionUID:J = -0x20cc2d7308e31e71L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1551
    const-string v0, "content://com.akop.bach.xboxliveprovider/friends_of_friend"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1556
    sget-object v0, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->KEYS:[Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/akop/bach/XboxLive$RecentPlayersCursor;-><init>([Ljava/lang/String;I)V

    .line 1558
    sget-object v0, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1559
    return-void
.end method
