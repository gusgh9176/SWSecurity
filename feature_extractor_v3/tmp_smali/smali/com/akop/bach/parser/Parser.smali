.class public abstract Lcom/akop/bach/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final TIMEOUT_MS:I = 0x7530


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected mLastResponse:Lorg/apache/http/HttpResponse;

.field protected mLastUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x7530

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;

    .line 96
    iget-object v1, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 97
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 98
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "Creating parser"

    invoke-static {v1}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected static addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method protected static displayTimeTaken(Ljava/lang/String;J)J
    .locals 11
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "started"    # J

    .prologue
    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 609
    .local v0, "now":J
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    const-string v2, "%s: %.02f s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    sub-long v6, v0, p1

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    :cond_0
    return-wide v0
.end method

.method public static getErrorMessage(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const v3, 0x7f08007d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 108
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    .line 109
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p1, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_2

    .line 111
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 113
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    instance-of v0, p1, Lcom/akop/bach/parser/AuthenticationException;

    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 117
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_5
    instance-of v0, p1, Lcom/akop/bach/parser/ParserException;

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 127
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_7
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static hasName(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 357
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    .line 359
    :goto_1
    return v1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static htmlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static htmlDecodeWithCrLf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 622
    if-nez p0, :cond_0

    .line 623
    const/4 v1, 0x0

    .line 626
    :goto_0
    return-object v1

    .line 625
    :cond_0
    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "replaced":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static joinString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 297
    .local v0, "array":[Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    invoke-static {v0, p1}, Lcom/akop/bach/parser/Parser;->joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static joinString([JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 304
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 305
    .local v1, "objArray":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 306
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {v1, p1}, Lcom/akop/bach/parser/Parser;->joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 316
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 328
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 330
    :goto_1
    return-object v6

    :cond_2
    const-string v6, ""

    goto :goto_1
.end method

.method protected static setValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 338
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_1
    return-void

    .line 336
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 345
    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 901
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 913
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v2

    .line 903
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 916
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 918
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 774
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    iget-object v1, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 776
    return-void
.end method

.method public final authenticate(Lcom/akop/bach/BasicAccount;Z)Z
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "useStoredSession"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 793
    .local v2, "started":J
    iget-object v5, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 795
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 796
    const-string v5, "Authenticating..."

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 802
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->loadSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 814
    .local v1, "sessionLoaded":Z
    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 816
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authenticated with stored session \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 842
    :cond_2
    :goto_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 843
    const-string v4, "Authentication completed"

    invoke-static {v4, v2, v3}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 845
    :cond_3
    const/4 v4, 0x1

    :cond_4
    :goto_2
    return v4

    .line 804
    .end local v1    # "sessionLoaded":Z
    :catch_0
    move-exception v0

    .line 806
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 807
    .restart local v1    # "sessionLoaded":Z
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 809
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 822
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 823
    const-string v5, "Logging in..."

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 825
    :cond_6
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->isValid()Z

    move-result v5

    if-nez v5, :cond_7

    .line 826
    new-instance v5, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v6, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    const v7, 0x7f080059

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v4}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v5

    .line 830
    :cond_7
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->onAuthenticate(Lcom/akop/bach/BasicAccount;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 832
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 833
    const-string v5, "onAuthenticate failed!"

    invoke-static {v5}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_2

    .line 838
    :cond_8
    if-eqz p2, :cond_2

    .line 839
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->saveSession(Lcom/akop/bach/BasicAccount;)Z

    goto :goto_1
.end method

.method protected createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method public abstract deleteAccount(Lcom/akop/bach/BasicAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected deleteSession(Lcom/akop/bach/BasicAccount;)Z
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    const/4 v1, 0x0

    .line 631
    if-nez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v1

    .line 636
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "Disposing parser"

    invoke-static {v0}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 283
    invoke-virtual {p0}, Lcom/akop/bach/parser/Parser;->dispose()V

    .line 284
    return-void
.end method

.method protected generateDatedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd.HH-mm-ss.SSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/parser/Parser;->getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "findObject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const v7, 0x7f080070

    const/4 v6, 0x0

    .line 858
    if-eqz p2, :cond_2

    .line 861
    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "startPos":I
    if-gez v3, :cond_0

    .line 863
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    iget-object v5, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v7, v6}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 867
    :cond_0
    const-string v4, "}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "endPos":I
    if-gez v1, :cond_1

    .line 869
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    iget-object v5, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v7, v6}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4

    .line 873
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 882
    .end local v1    # "endPos":I
    .end local v3    # "startPos":I
    .local v2, "object":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 877
    .end local v2    # "object":Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .restart local v2    # "object":Ljava/lang/String;
    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/akop/bach/parser/ParserException;

    iget-object v5, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v7, v6}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v4
.end method

.method protected getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/akop/bach/parser/Parser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResponse(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 602
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/akop/bach/parser/Parser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "useXhr"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)",
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
    .line 589
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 591
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 593
    if-eqz p3, :cond_0

    .line 594
    const-string v2, "X-Requested-With"

    const-string v3, "XMLHttpRequest"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/akop/bach/parser/Parser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getResponse(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "useXhr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    .line 581
    const-string v1, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/akop/bach/parser/Parser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;
    .locals 29
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
    .line 416
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v24, "Accept"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 417
    const-string v24, "Accept"

    const-string v25, "text/javascript, text/html, application/xml, text/xml, */*"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    const-string v24, "Accept-Charset"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 419
    const-string v24, "Accept-Charset"

    const-string v25, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_1
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 422
    const-string v24, "Parser: Fetching %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 426
    .local v22, "started":J
    invoke-virtual/range {p0 .. p1}, Lcom/akop/bach/parser/Parser;->initRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 430
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    new-instance v8, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v8}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 434
    .local v8, "context":Lorg/apache/http/protocol/HttpContext;
    const/16 v16, 0x0

    .line 436
    .local v16, "log":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logHttp()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 438
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "log":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .restart local v16    # "log":Ljava/lang/StringBuilder;
    const-string v24, "URL: %s\n"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v24, "Headers: \n"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, "arr$":[Lorg/apache/http/Header;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v13, v4, v14

    .line 444
    .local v13, "h":Lorg/apache/http/Header;
    const-string v24, "  \'%s\': \'%s\'\n"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 447
    .end local v13    # "h":Lorg/apache/http/Header;
    :cond_3
    const-string v24, "Cookies: \n"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/cookie/Cookie;

    .line 449
    .local v7, "c":Lorg/apache/http/cookie/Cookie;
    const-string v24, "  \'%s\': \'%s\'\n"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v7}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-interface {v7}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 548
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v7    # "c":Lorg/apache/http/cookie/Cookie;
    .end local v8    # "context":Lorg/apache/http/protocol/HttpContext;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    .end local v16    # "log":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    :catchall_1
    move-exception v24

    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 553
    const-string v25, "Parser: Fetch took"

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    :cond_4
    throw v24

    .line 452
    .restart local v4    # "arr$":[Lorg/apache/http/Header;
    .restart local v8    # "context":Lorg/apache/http/protocol/HttpContext;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "len$":I
    .restart local v16    # "log":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_3
    const-string v24, "Query Elements: \n"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    if-eqz p2, :cond_6

    .line 456
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/http/NameValuePair;

    .line 457
    .local v17, "p":Lorg/apache/http/NameValuePair;
    const-string v24, "  \'%s\': \'%s\'\n"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 462
    .end local v17    # "p":Lorg/apache/http/NameValuePair;
    :cond_6
    const-string v24, "  [empty]\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    .end local v4    # "arr$":[Lorg/apache/http/Header;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v26, 0xc8

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 479
    const-string v24, "http.request"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 481
    .local v10, "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v24, "http.target_host"

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/HttpHost;

    .line 484
    .local v9, "currentHost":Lorg/apache/http/HttpHost;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akop/bach/parser/Parser;->mLastUrl:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    .end local v9    # "currentHost":Lorg/apache/http/HttpHost;
    .end local v10    # "currentReq":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_8
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 500
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    if-nez v12, :cond_b

    .line 501
    const/16 v24, 0x0

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 552
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 553
    const-string v25, "Parser: Fetch took"

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    :cond_9
    :goto_4
    return-object v24

    .line 470
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v11

    .line 472
    .local v11, "e":Ljava/net/SocketTimeoutException;
    :try_start_7
    new-instance v24, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08007b

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v24

    .line 487
    .end local v11    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v11

    .line 489
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 491
    const-string v24, "Unable to get last URL - see stack:"

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 495
    :cond_a
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/akop/bach/parser/Parser;->mLastUrl:Ljava/lang/String;

    goto :goto_3

    .line 503
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    :cond_b
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    .line 504
    .local v21, "stream":Ljava/io/InputStream;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v26, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 506
    .local v19, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v24, 0x2710

    move/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 511
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/16 v24, 0x3e8

    :try_start_8
    move/from16 v0, v24

    new-array v5, v0, [C

    .line 513
    .local v5, "buffer":[C
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/BufferedReader;->read([C)I

    move-result v18

    .local v18, "read":I
    if-ltz v18, :cond_c

    .line 514
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v6, v5, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 516
    .end local v5    # "buffer":[C
    .end local v18    # "read":I
    :catch_2
    move-exception v11

    .line 518
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    const/16 v24, 0x0

    :try_start_9
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 552
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 553
    const-string v25, "Parser: Fetch took"

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    goto/16 :goto_4

    .line 521
    .end local v11    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "buffer":[C
    .restart local v18    # "read":I
    :cond_c
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 522
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 528
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v20

    .line 538
    .local v20, "response":Ljava/lang/String;
    :try_start_c
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logHttp()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 540
    const-string v24, "\nResponse: \n%s\n"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v20, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "http-log-"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "[^A-Za-z0-9]"

    const-string v28, "_"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/Parser;->generateDatedFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/Parser;->preparseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 552
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 553
    const-string v25, "Parser: Fetch took"

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    goto/16 :goto_4

    .line 530
    .end local v20    # "response":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 532
    .restart local v11    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_d
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 533
    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 535
    :cond_e
    const/16 v24, 0x0

    monitor-exit v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 552
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 553
    const-string v25, "Parser: Fetch took"

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    goto/16 :goto_4
.end method

.method protected getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 364
    return-void
.end method

.method protected loadSession(Lcom/akop/bach/BasicAccount;)Z
    .locals 13
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    const/4 v11, 0x0

    .line 700
    const/4 v7, 0x0

    .line 703
    .local v7, "objStream":Ljava/io/ObjectInputStream;
    iget-object v12, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v10

    .line 704
    .local v10, "store":Lorg/apache/http/client/CookieStore;
    invoke-interface {v10}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 706
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return v11

    .line 709
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;

    move-result-object v5

    .line 710
    .local v5, "filename":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 713
    new-instance v3, Ljava/io/File;

    iget-object v12, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v3, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    .line 716
    .local v4, "fileExists":Z
    if-eqz v4, :cond_0

    .line 723
    :try_start_0
    new-instance v8, Ljava/io/ObjectInputStream;

    iget-object v12, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .local v8, "objStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 745
    .local v9, "serializableCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v8, :cond_2

    .line 749
    :try_start_2
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 760
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 761
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v10, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 763
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 765
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    move-object v7, v8

    .line 766
    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 727
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v9    # "serializableCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :catch_1
    move-exception v1

    .line 745
    .local v1, "e":Ljava/io/StreamCorruptedException;
    :goto_3
    if-eqz v7, :cond_0

    .line 749
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 751
    :catch_2
    move-exception v12

    goto :goto_0

    .line 731
    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    :catch_3
    move-exception v1

    .line 745
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v7, :cond_0

    .line 749
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 751
    :catch_4
    move-exception v12

    goto :goto_0

    .line 735
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_5
    if-eqz v7, :cond_0

    .line 749
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 751
    :catch_6
    move-exception v12

    goto :goto_0

    .line 739
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :goto_6
    if-eqz v7, :cond_0

    .line 749
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_0

    .line 751
    :catch_8
    move-exception v12

    goto :goto_0

    .line 745
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v7, :cond_3

    .line 749
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 754
    :cond_3
    :goto_8
    throw v11

    .line 769
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "serializableCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_4
    const/4 v11, 0x1

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 751
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v12

    goto :goto_1

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .end local v9    # "serializableCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v12

    goto :goto_8

    .line 745
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_7

    .line 739
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v1

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 735
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v1

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 731
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v1

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 727
    .end local v7    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objStream":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v1

    move-object v7, v8

    .end local v8    # "objStream":Ljava/io/ObjectInputStream;
    .restart local v7    # "objStream":Ljava/io/ObjectInputStream;
    goto :goto_3
.end method

.method protected abstract onAuthenticate(Lcom/akop/bach/BasicAccount;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;,
            Lcom/akop/bach/parser/AuthenticationException;
        }
    .end annotation
.end method

.method protected preparseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    return-object p1
.end method

.method protected readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v5, ""

    .line 244
    .local v5, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 248
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v6, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 249
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 267
    :cond_0
    if-eqz v1, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v1

    .line 275
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v5

    .line 270
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 273
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_1

    .line 255
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v0, :cond_2

    .line 268
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 270
    :catch_2
    move-exception v6

    goto :goto_1

    .line 259
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    if-eqz v0, :cond_2

    .line 268
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 270
    :catch_4
    move-exception v6

    goto :goto_1

    .line 265
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 267
    :goto_4
    if-eqz v0, :cond_3

    .line 268
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 272
    :cond_3
    :goto_5
    throw v6

    .line 270
    :catch_5
    move-exception v7

    goto :goto_5

    .line 265
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 259
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 255
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected resolveImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "partialImageUrl"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const-string v3, "://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "hostStart":I
    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 152
    add-int/lit8 v2, v2, 0x3

    .line 155
    const-string v3, "/"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "hostEnd":I
    if-gez v1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 160
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 168
    .end local v1    # "hostEnd":I
    .end local v2    # "hostStart":I
    .end local p2    # "partialImageUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 166
    .restart local p2    # "partialImageUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected saveSession(Lcom/akop/bach/BasicAccount;)Z
    .locals 11
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    const/4 v7, 0x0

    .line 649
    const/4 v4, 0x0

    .line 650
    .local v4, "objStream":Ljava/io/ObjectOutputStream;
    iget-object v8, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    .local v6, "serializableCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 656
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    new-instance v8, Lcom/akop/bach/util/SerializableCookie;

    invoke-direct {v8, v0}, Lcom/akop/bach/util/SerializableCookie;-><init>(Lorg/apache/http/cookie/Cookie;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    iget-object v8, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .end local v4    # "objStream":Ljava/io/ObjectOutputStream;
    .local v5, "objStream":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    if-eqz v5, :cond_1

    .line 680
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 689
    :cond_1
    :goto_1
    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objStream":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_2
    return v7

    .line 666
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v4, :cond_2

    .line 680
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 682
    :catch_1
    move-exception v8

    goto :goto_2

    .line 670
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 676
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v4, :cond_2

    .line 680
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 682
    :catch_3
    move-exception v8

    goto :goto_2

    .line 676
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_3

    .line 680
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 685
    :cond_3
    :goto_6
    throw v7

    .line 682
    .end local v4    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objStream":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v5    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objStream":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 676
    .end local v4    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objStream":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 670
    .end local v4    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objStream":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 666
    .end local v4    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objStream":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "objStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objStream":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method

.method protected stripHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 892
    const-string v0, "<[^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected submitRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/akop/bach/parser/Parser;->submitRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 401
    return-void
.end method

.method protected submitRequest(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, p2, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 408
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 410
    invoke-virtual {p0, v1}, Lcom/akop/bach/parser/Parser;->submitRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 411
    return-void
.end method

.method protected submitRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v1, "Accept-Charset"

    const-string v4, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-interface {p1, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "Accept"

    const-string v4, "text/javascript, text/html, application/xml, text/xml, */*"

    invoke-interface {p1, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "Parser: Fetching %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    .local v2, "started":J
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/Parser;->initRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 381
    :try_start_0
    iget-object v4, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/akop/bach/parser/Parser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;

    .line 385
    iget-object v1, p0, Lcom/akop/bach/parser/Parser;->mLastResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 386
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    .line 387
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 388
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "Parser: Fetch took"

    invoke-static {v1, v2, v3}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 395
    :cond_2
    return-void

    .line 388
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    :catchall_1
    move-exception v1

    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    const-string v4, "Parser: Fetch took"

    invoke-static {v4, v2, v3}, Lcom/akop/bach/parser/Parser;->displayTimeTaken(Ljava/lang/String;J)J

    :cond_3
    throw v1
.end method

.method public abstract validateAccount(Lcom/akop/bach/BasicAccount;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 178
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    iget-object v4, p0, Lcom/akop/bach/parser/Parser;->mContext:Landroid/content/Context;

    const/16 v5, 0x1b6

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 179
    .local v1, "fOut":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    if-eqz v3, :cond_2

    .line 196
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 197
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 204
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 199
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 201
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 182
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    if-eqz v2, :cond_0

    .line 196
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 197
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 199
    :catch_2
    move-exception v4

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v2, :cond_0

    .line 196
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 197
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 199
    :catch_4
    move-exception v4

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 196
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 197
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 201
    :cond_1
    :goto_4
    throw v4

    .line 199
    :catch_5
    move-exception v5

    goto :goto_4

    .line 192
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 186
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 182
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :cond_2
    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method protected writeToSd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 213
    .local v4, "root":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "fOut":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    if-eqz v3, :cond_2

    .line 231
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 232
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 239
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 234
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 236
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 217
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v2, :cond_0

    .line 231
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 232
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 234
    :catch_2
    move-exception v5

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    if-eqz v2, :cond_0

    .line 231
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 232
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 234
    :catch_4
    move-exception v5

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 231
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 232
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 236
    :cond_1
    :goto_4
    throw v5

    .line 234
    :catch_5
    move-exception v6

    goto :goto_4

    .line 227
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 221
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 217
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :cond_2
    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method
