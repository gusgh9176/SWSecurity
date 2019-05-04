.class public Lcom/olivephone/util/ImageLoad;
.super Ljava/lang/Object;
.source "ImageLoad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 47
    .local v6, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 50
    .local v4, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .local v5, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 54
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 55
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "src"

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 69
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v4, v5

    .line 71
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 60
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 61
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 63
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 69
    :goto_4
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 70
    throw v7

    .line 68
    .end local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_4

    .line 64
    .end local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_3

    .line 61
    .end local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_4
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_2

    .line 58
    .end local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_5
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_1
.end method
