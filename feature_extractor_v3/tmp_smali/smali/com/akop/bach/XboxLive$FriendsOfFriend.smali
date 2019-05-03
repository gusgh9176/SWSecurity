.class public final Lcom/akop/bach/XboxLive$FriendsOfFriend;
.super Ljava/lang/Object;
.source "XboxLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/XboxLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendsOfFriend"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x540e8cb18ba97655L


# instance fields
.field public NotYetFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

.field public SharedFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1764
    new-instance v0, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$FriendsOfFriend;->SharedFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    .line 1765
    new-instance v0, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    invoke-direct {v0, p1}, Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/akop/bach/XboxLive$FriendsOfFriend;->NotYetFriends:Lcom/akop/bach/XboxLive$FriendsOfFriendCursor;

    .line 1766
    return-void
.end method
