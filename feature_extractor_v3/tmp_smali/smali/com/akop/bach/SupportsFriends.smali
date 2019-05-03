.class public interface abstract Lcom/akop/bach/SupportsFriends;
.super Ljava/lang/Object;
.source "SupportsFriends.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract createCursor(Landroid/app/Activity;)Landroid/database/Cursor;
.end method

.method public abstract getFriendRefreshInterval()J
.end method

.method public abstract getFriendScreenName(J)Ljava/lang/String;
.end method

.method public abstract getFriendUri(J)Landroid/net/Uri;
.end method

.method public abstract getFriendsUri()Landroid/net/Uri;
.end method

.method public abstract getLastFriendUpdate()J
.end method

.method public abstract setLastFriendUpdate(J)V
.end method

.method public abstract updateFriendProfile(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public abstract updateFriends(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
