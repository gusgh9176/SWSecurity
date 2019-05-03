.class Lcom/akop/bach/parser/LiveParser$1;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "LiveParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/LiveParser;->createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/LiveParser;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/LiveParser;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/akop/bach/parser/LiveParser$1;->this$0:Lcom/akop/bach/parser/LiveParser;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 174
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/akop/bach/parser/LiveParser$1;->this$0:Lcom/akop/bach/parser/LiveParser;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/akop/bach/parser/LiveParser;->access$102(Lcom/akop/bach/parser/LiveParser;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    :cond_0
    return-object v0
.end method
