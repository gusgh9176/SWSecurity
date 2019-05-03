.class public interface abstract Lcom/akop/bach/SupportsAchievements;
.super Ljava/lang/Object;
.source "SupportsAchievements.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract updateAchievements(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
