.class Lcom/akop/bach/parser/LiveParser$LenientCookieSpec$1;
.super Lorg/apache/http/impl/cookie/BasicExpiresHandler;
.source "LiveParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;


# direct methods
.method constructor <init>(Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # [Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec$1;->this$0:Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;

    invoke-direct {p0, p2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, "expires":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "country":Ljava/lang/String;
    const-string v4, "en"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "US"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    if-eqz p2, :cond_0

    const-string v4, "-"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;->access$000()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 135
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v4, "Setting expiration date explicitly"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/http/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 147
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-string v4, "Got an error during expiration cookie parse:"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    const-string v4, "Using default expiration date handler"

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 145
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_1
.end method
