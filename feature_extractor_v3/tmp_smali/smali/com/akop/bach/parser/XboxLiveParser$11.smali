.class Lcom/akop/bach/parser/XboxLiveParser$11;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$Parseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->setBeacon(Lcom/akop/bach/XboxLiveAccount;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$gameId:J

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-wide p3, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$gameId:J

    iput-object p5, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doParse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-wide v2, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$gameId:J

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/akop/bach/parser/XboxLiveParser$11;->val$message:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/akop/bach/parser/XboxLiveParser;->access$1000(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;JZLjava/lang/String;)V

    .line 2592
    return-void
.end method
