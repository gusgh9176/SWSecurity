.class Lcom/akop/bach/parser/XboxLiveParser$9;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$Parseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->fetchSendMessage(Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$recipients:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-object p3, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$recipients:[Ljava/lang/String;

    iput-object p4, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doParse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$recipients:[Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/parser/XboxLiveParser$9;->val$body:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->access$800(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    return-void
.end method
