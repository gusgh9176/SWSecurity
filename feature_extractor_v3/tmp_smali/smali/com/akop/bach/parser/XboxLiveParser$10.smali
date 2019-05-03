.class Lcom/akop/bach/parser/XboxLiveParser$10;
.super Ljava/lang/Object;
.source "XboxLiveParser.java"

# interfaces
.implements Lcom/akop/bach/parser/XboxLiveParser$Parseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/XboxLiveParser;->updateProfile(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/XboxLiveParser;

.field final synthetic val$account:Lcom/akop/bach/XboxLiveAccount;

.field final synthetic val$bio:Ljava/lang/String;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$motto:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2572
    iput-object p1, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iput-object p2, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iput-object p3, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$motto:Ljava/lang/String;

    iput-object p4, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$location:Ljava/lang/String;

    iput-object p6, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$bio:Ljava/lang/String;

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
    .line 2577
    iget-object v0, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->this$0:Lcom/akop/bach/parser/XboxLiveParser;

    iget-object v1, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$account:Lcom/akop/bach/XboxLiveAccount;

    iget-object v2, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$motto:Ljava/lang/String;

    iget-object v3, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$location:Ljava/lang/String;

    iget-object v5, p0, Lcom/akop/bach/parser/XboxLiveParser$10;->val$bio:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/akop/bach/parser/XboxLiveParser;->access$900(Lcom/akop/bach/parser/XboxLiveParser;Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    return-void
.end method
