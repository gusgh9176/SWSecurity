.class public interface abstract Lcom/akop/bach/SupportsMessaging;
.super Ljava/lang/Object;
.source "SupportsMessaging.java"

# interfaces
.implements Lcom/akop/bach/Account;


# virtual methods
.method public abstract actionComposeMessage(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract actionOpenMessage(Landroid/content/Context;J)V
.end method

.method public abstract deleteMessage(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public abstract getLastMessageUpdate()J
.end method

.method public abstract getMessageRefreshInterval()J
.end method

.method public abstract sendMessage(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public abstract updateMessage(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public abstract updateMessages(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
