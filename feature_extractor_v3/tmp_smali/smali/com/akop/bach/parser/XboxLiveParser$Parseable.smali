.class interface abstract Lcom/akop/bach/parser/XboxLiveParser$Parseable;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/akop/bach/parser/XboxLiveParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Parseable"
.end annotation


# virtual methods
.method public abstract doParse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method
