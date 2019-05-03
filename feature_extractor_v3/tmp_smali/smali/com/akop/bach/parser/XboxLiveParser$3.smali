.class Lcom/akop/bach/parser/XboxLiveParser$3;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$Parseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->fetchAchievements(Lcom/akop/bach/XboxLiveAccount;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$gameId:J


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V
    .locals 1

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-wide p3, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->val$gameId:J

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
    .line 2477
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-wide v2, p0, Lcom/akop/bach/parser/XboxLiveParser$3;->val$gameId:J

    invoke-static {v0, v1, v2, v3}, Lcom/akop/bach/parser/XboxLiveParser;->access$200(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;J)V

    .line 2478
    return-void
.end method
