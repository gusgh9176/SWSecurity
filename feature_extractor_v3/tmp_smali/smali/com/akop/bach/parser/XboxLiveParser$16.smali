.class Lcom/akop/bach/parser/XboxLiveParser$16;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$ParseableWithResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->fetchRecentPlayers(Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)V
    .locals 0

    .prologue
    .line 2695
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$16;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$16;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doParse()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$16;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$16;->val$account:Lcom/akop/bach/XboxLiveAccount;

    invoke-static {v0, v1}, Lcom/akop/bach/parser/XboxLiveParser;->access$1400(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;)Lcom/akop/bach/XboxLive$RecentPlayers;

    move-result-object v0

    return-object v0
.end method
