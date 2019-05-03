.class public interface abstract Lcom/akop/bach/SupportsCompareGames;
.super Ljava/lang/Object;
.source "SupportsCompareGames.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract compareGames(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
