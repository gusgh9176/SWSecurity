.class Lcom/akop/bach/parser/LiveParser$2;
.super Ljava/lang/Object;
.source "LiveParser.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


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
    .line 182
    iput-object p1, p0, Lcom/akop/bach/parser/LiveParser$2;->this$0:Lcom/akop/bach/parser/LiveParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 185
    new-instance v0, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;

    invoke-direct {v0}, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;-><init>()V

    return-object v0
.end method
