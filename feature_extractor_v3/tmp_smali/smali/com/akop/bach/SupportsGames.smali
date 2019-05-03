.class public interface abstract Lcom/akop/bach/SupportsGames;
.super Ljava/lang/Object;
.source "SupportsGames.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract actionShowGames(Landroid/content/Context;)V
.end method

.method public abstract getGameHistoryRefreshInterval()J
.end method

.method public abstract getLastGameUpdate()J
.end method

.method public abstract setLastGameUpdate(J)V
.end method

.method public abstract updateGames(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
