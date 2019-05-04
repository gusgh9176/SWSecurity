.class public Lcom/olivephone/localaddress/IPLocation;
.super Ljava/lang/Object;
.source "IPLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 14
    const-string v0, ""

    .line 16
    .local v0, "address":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "http://webservice.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx/getGeoIPContext"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 18
    .local v3, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 19
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v2, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 25
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 37
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :goto_2
    return-object v0

    .line 22
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 32
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 33
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 28
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "i":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/olivephone/localaddress/IPLocation;->isChinese(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 25
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 34
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 35
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 41
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 42
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 43
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 44
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 45
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 46
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 47
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
