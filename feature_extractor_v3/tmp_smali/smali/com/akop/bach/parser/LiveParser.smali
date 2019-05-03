.class public abstract Lcom/akop/bach/parser/LiveParser;
.super Lcom/akop/bach/parser/Parser;
.source "LiveParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akop/bach/parser/LiveParser$LenientCookieSpec;
    }
.end annotation


# static fields
.field private static final PATTERN_ACTION_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_AUTHENTICATED:Ljava/util/regex/Pattern;

.field private static final PATTERN_GET_ATTRS:Ljava/util/regex/Pattern;

.field private static final PATTERN_INPUT_ATTR_LIST:Ljava/util/regex/Pattern;

.field private static final PATTERN_LIVE_AUTH_URL:Ljava/util/regex/Pattern;

.field private static final URL_LOGIN:Ljava/lang/String; = "https://login.live.com/login.srf?wa=wsignin1.0&wreply=%1$s"

.field private static final URL_LOGIN_MSN:Ljava/lang/String; = "https://msnia.login.live.com/ppsecure/post.srf?wa=wsignin1.0&wreply=%1$s"

.field private static final URL_SUBSTRING_NEW_TOS:Ljava/lang/String; = "/NewTermsOfUse"


# instance fields
.field private mLastRedirectedUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 73
    const-string v0, ",urlPost:\'([^\']*)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/LiveParser;->PATTERN_LIVE_AUTH_URL:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "action=\"(https?://[^\"]+)\""

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/LiveParser;->PATTERN_ACTION_URL:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "<input((\\s+\\w+=\"[^\"]*\")+)[^>]*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/LiveParser;->PATTERN_INPUT_ATTR_LIST:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "(\\w+)=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/LiveParser;->PATTERN_GET_ATTRS:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, " onload=\"javascript:DoSubmit\\(\\);\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/LiveParser;->PATTERN_AUTHENTICATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/Parser;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v1, p0, Lcom/akop/bach/parser/LiveParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 158
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v1, "http.protocol.max-redirects"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 159
    return-void
.end method

.method static synthetic access$102(Lcom/akop/bach/parser/LiveParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/akop/bach/parser/LiveParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/akop/bach/parser/LiveParser;->mLastRedirectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method private static getActionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v1, Lcom/akop/bach/parser/LiveParser;->PATTERN_ACTION_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 218
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getInputs(Ljava/lang/String;Ljava/util/List;Ljava/util/regex/Pattern;)V
    .locals 11
    .param p0, "response"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 230
    sget-object v7, Lcom/akop/bach/parser/LiveParser;->PATTERN_INPUT_ATTR_LIST:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 231
    .local v1, "allAttrs":Ljava/util/regex/Matcher;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 234
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 236
    const/4 v4, 0x0

    .local v4, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 237
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lcom/akop/bach/parser/LiveParser;->PATTERN_GET_ATTRS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 238
    .local v2, "attrs":Ljava/util/regex/Matcher;
    const/4 v0, 0x1

    .line 240
    .local v0, "add":Z
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 258
    :cond_3
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 262
    if-eqz p2, :cond_4

    .line 264
    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 270
    .local v5, "p":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 272
    const/4 v0, 0x0

    .line 277
    .end local v5    # "p":Lorg/apache/http/NameValuePair;
    :cond_6
    if-eqz v0, :cond_0

    .line 280
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v0    # "add":Z
    .end local v2    # "attrs":Ljava/util/regex/Matcher;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private getLoginUrl(Lcom/akop/bach/XboxLiveAccount;)Ljava/lang/String;
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->isMsnAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "https://msnia.login.live.com/ppsecure/post.srf?wa=wsignin1.0&wreply=%1$s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/akop/bach/parser/LiveParser;->getReplyToPage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://login.live.com/login.srf?wa=wsignin1.0&wreply=%1$s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/akop/bach/parser/LiveParser;->getReplyToPage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPostUrl(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/XboxLiveAccount;
    .param p2, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 204
    if-nez p2, :cond_1

    .line 205
    const/4 p2, 0x0

    .line 211
    .end local p2    # "originalUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 207
    .restart local p2    # "originalUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->isMsnAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "://login.live.com/"

    const-string v1, "://msnia.login.live.com/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private newAuthenticate(Lcom/akop/bach/XboxLiveAccount;)Z
    .locals 10
    .param p1, "xblAccount"    # Lcom/akop/bach/XboxLiveAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v0, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "password":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 291
    new-instance v5, Lcom/akop/bach/parser/ParserException;

    iget-object v6, p0, Lcom/akop/bach/parser/LiveParser;->mContext:Landroid/content/Context;

    const v7, 0x7f080059

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/LiveParser;->getLoginUrl(Lcom/akop/bach/XboxLiveAccount;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/akop/bach/parser/LiveParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "page":Ljava/lang/String;
    sget-object v7, Lcom/akop/bach/parser/LiveParser;->PATTERN_LIVE_AUTH_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    const-string v6, "Authentication error in stage 1"

    invoke-static {v6}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 346
    :cond_1
    :goto_0
    return v5

    .line 307
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/akop/bach/parser/LiveParser;->getPostUrl(Lcom/akop/bach/XboxLiveAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-static {v2, v0, v9}, Lcom/akop/bach/parser/LiveParser;->getInputs(Ljava/lang/String;Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 310
    const-string v7, "login"

    invoke-virtual {p1}, Lcom/akop/bach/XboxLiveAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/akop/bach/parser/LiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const-string v7, "passwd"

    invoke-static {v0, v7, v3}, Lcom/akop/bach/parser/LiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string v7, "KMSI"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/akop/bach/parser/LiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const-string v7, "LoginOptions"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/akop/bach/parser/LiveParser;->setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p0, v4, v0}, Lcom/akop/bach/parser/LiveParser;->getResponse(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lcom/akop/bach/parser/LiveParser;->getActionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v2, v0, v9}, Lcom/akop/bach/parser/LiveParser;->getInputs(Ljava/lang/String;Ljava/util/List;Ljava/util/regex/Pattern;)V

    .line 322
    const-string v7, "ANON"

    invoke-static {v0, v7}, Lcom/akop/bach/parser/LiveParser;->hasName(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/akop/bach/parser/LiveParser;->PATTERN_AUTHENTICATED:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    .line 324
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const-string v6, "Authentication error in stage 2"

    invoke-static {v6}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v7, p0, Lcom/akop/bach/parser/LiveParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.protocol.max-redirects"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 335
    :try_start_0
    invoke-virtual {p0, v4, v0}, Lcom/akop/bach/parser/LiveParser;->submitRequest(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_1
    iget-object v7, p0, Lcom/akop/bach/parser/LiveParser;->mLastRedirectedUrl:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/akop/bach/parser/LiveParser;->mLastRedirectedUrl:Ljava/lang/String;

    const-string v8, "/NewTermsOfUse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 344
    new-instance v6, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v7, p0, Lcom/akop/bach/parser/LiveParser;->mContext:Landroid/content/Context;

    const v8, 0x7f0800c7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v5}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v6

    :cond_4
    move v5, v6

    .line 346
    goto/16 :goto_0

    .line 337
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method protected createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/parser/LiveParser;->mLastRedirectedUrl:Ljava/lang/String;

    .line 166
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 167
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lcom/akop/bach/parser/LiveParser$1;

    invoke-direct {v1, p0}, Lcom/akop/bach/parser/LiveParser$1;-><init>(Lcom/akop/bach/parser/LiveParser;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 181
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v1

    const-string v2, "lenient"

    new-instance v3, Lcom/akop/bach/parser/LiveParser$2;

    invoke-direct {v3, p0}, Lcom/akop/bach/parser/LiveParser$2;-><init>(Lcom/akop/bach/parser/LiveParser;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 189
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "lenient"

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 191
    return-object v0
.end method

.method protected abstract getReplyToPage()Ljava/lang/String;
.end method

.method protected getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v9, 0x1

    .line 363
    const/4 v3, -0x1

    .line 365
    .local v3, "retries":I
    const/4 v2, 0x0

    .line 369
    .local v2, "response":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 370
    .local v4, "retry":Z
    add-int/lit8 v3, v3, 0x1

    .line 374
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/akop/bach/parser/Parser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 403
    :goto_0
    if-nez v4, :cond_0

    .line 405
    return-object v2

    .line 376
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lorg/apache/http/conn/HttpHostConnectException;
    if-le v3, v9, :cond_2

    .line 382
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    const-string v5, "Too many HttpHostConnectException\'s; bailing"

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 385
    :cond_1
    throw v0

    .line 388
    :cond_2
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 389
    const-string v5, "Got HttpHostConnectException; retrying (%1$d)... "

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_3
    const-wide/16 v6, 0x5dc

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :cond_4
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 395
    :catch_1
    move-exception v1

    .line 397
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 398
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onAuthenticate(Lcom/akop/bach/BasicAccount;)Z
    .locals 3
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 353
    check-cast p1, Lcom/akop/bach/XboxLiveAccount;

    .end local p1    # "account":Lcom/akop/bach/BasicAccount;
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/LiveParser;->newAuthenticate(Lcom/akop/bach/XboxLiveAccount;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v1, p0, Lcom/akop/bach/parser/LiveParser;->mContext:Landroid/content/Context;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
