.class public interface abstract Lcom/akop/bach/SupportsCompareAchievements;
.super Ljava/lang/Object;
.source "SupportsCompareAchievements.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract compareAchievements(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
