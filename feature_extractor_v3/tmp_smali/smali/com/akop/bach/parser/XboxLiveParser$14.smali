.class Lcom/akop/bach/parser/XboxLiveParser$14;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->fetchCompareGames(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$gamertag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-object p3, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->val$gamertag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doParse()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser$14;->val$gamertag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/XboxLiveParser;->access$1200(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Lcom/akop/bach/XboxLive$ComparedGameInfo;

    move-result-object v0

    return-object v0
.end method
