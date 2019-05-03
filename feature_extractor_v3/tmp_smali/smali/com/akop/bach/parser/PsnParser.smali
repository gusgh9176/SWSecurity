.class public abstract Lcom/akop/bach/parser/PsnParser;
.super Lcom/akop/bach/parser/Parser;
.source "PsnParser.java"


# static fields
.field protected static final COLUMN_GAME_BRONZE:I = 0x2

.field protected static final COLUMN_GAME_GOLD:I = 0x4

.field protected static final COLUMN_GAME_ID:I = 0x0

.field protected static final COLUMN_GAME_PLATINUM:I = 0x5

.field protected static final COLUMN_GAME_PROGRESS:I = 0x1

.field protected static final COLUMN_GAME_SILVER:I = 0x3

.field protected static final FRIEND_ID_PROJECTION:[Ljava/lang/String;

.field protected static final GAMES_PROJECTION:[Ljava/lang/String;

.field protected static final PATTERN_PSN_DOWN:Ljava/util/regex/Pattern;

.field protected static final PATTERN_TOS_UPDATED:Ljava/util/regex/Pattern;

.field protected static final URL_LOGIN:Ljava/lang/String; = "https://store.playstation.com/j_acegi_external_security_check?target=/external/login.action"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const-string v0, "id=\"siteMessageEN\".*?<h2>([^<]*)</h2>"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnParser;->PATTERN_PSN_DOWN:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "href=\"/external/loadEula.action\">"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnParser;->PATTERN_TOS_UPDATED:Ljava/util/regex/Pattern;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "Progress"

    aput-object v1, v0, v4

    const-string v1, "UnlockedBronze"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "UnlockedSilver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UnlockedGold"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UnlockedPlatinum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/parser/PsnParser;->GAMES_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/akop/bach/parser/PsnParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/Parser;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcom/akop/bach/parser/PsnParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 93
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v1, "http.protocol.max-redirects"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 94
    return-void
.end method

.method private parseAccountSummary(Lcom/akop/bach/PsnAccount;)V
    .locals 14
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;

    move-result-object v9

    .line 133
    .local v9, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    .line 136
    .local v6, "accountId":J
    const/4 v10, 0x1

    .line 138
    .local v10, "newRecord":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 139
    .local v12, "started":J
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 144
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v10, 0x0

    .line 148
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    if-eqz v10, :cond_3

    .line 153
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 164
    :goto_0
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 166
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string v1, "Summary update"

    invoke-static {v1, v12, v13}, Lcom/akop/bach/parser/PsnParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 170
    const-string v1, "OnlineId"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->setOnlineId(Ljava/lang/String;)V

    .line 171
    const-string v1, "IconUrl"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->setIconUrl(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/akop/bach/PsnAccount;->setLastSummaryUpdate(J)V

    .line 173
    iget-object v1, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 174
    return-void

    .line 160
    :cond_3
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public compareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 482
    const/4 v2, 0x0

    .line 484
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 485
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/PsnParser;->parseCompareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    .local v0, "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    return-object v0

    .line 492
    .end local v0    # "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v2, v6, :cond_2

    .line 499
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 500
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    :cond_2
    throw v1
.end method

.method public compareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "gameId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 520
    const/4 v2, 0x0

    .line 522
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 528
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/akop/bach/parser/PsnParser;->parseCompareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 549
    .local v0, "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    return-object v0

    .line 530
    .end local v0    # "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v2, v6, :cond_2

    .line 537
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 538
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 540
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_2
    throw v1
.end method

.method public createAccount(Lcom/akop/bach/BasicAccount;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 620
    iget-object v2, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 621
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 622
    sget-object v2, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v1, p1

    .line 624
    check-cast v1, Lcom/akop/bach/PsnAccount;

    .line 627
    .local v1, "psnAccount":Lcom/akop/bach/PsnAccount;
    const-string v2, "OnlineId"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setOnlineId(Ljava/lang/String;)V

    .line 628
    const-string v2, "IconUrl"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setIconUrl(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/PsnAccount;->setLastSummaryUpdate(J)V

    .line 631
    iget-object v2, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/akop/bach/BasicAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 632
    return-void
.end method

.method protected createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Lcom/akop/bach/util/IgnorantHttpClient;

    invoke-direct {v0}, Lcom/akop/bach/util/IgnorantHttpClient;-><init>()V

    return-object v0
.end method

.method public deleteAccount(Lcom/akop/bach/BasicAccount;)V
    .locals 10
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 570
    iget-object v1, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v6

    .line 574
    .local v6, "accountId":J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 575
    .local v8, "buffer":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 582
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 584
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 587
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 595
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 594
    :cond_2
    if-eqz v9, :cond_3

    .line 595
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_3
    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GameId IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 605
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 609
    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 610
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 611
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 614
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 615
    return-void
.end method

.method public abstract fetchBlog()Lcom/akop/bach/util/rss/RssChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method public fetchFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 355
    const/4 v1, 0x0

    .line 357
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/PsnParser;->parseFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 374
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 377
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_2
    throw v0
.end method

.method public fetchFriends(Lcom/akop/bach/PsnAccount;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 253
    const/4 v1, 0x0

    .line 255
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->parseFriends(Lcom/akop/bach/PsnAccount;)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 271
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_2
    throw v0
.end method

.method public fetchGameCatalog(Lcom/akop/bach/PsnAccount;IIII)Lcom/akop/bach/PSN$GameCatalogList;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "console"    # I
    .param p3, "page"    # I
    .param p4, "releaseStatus"    # I
    .param p5, "sortOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/akop/bach/parser/PsnParser;->parseGameCatalog(IIII)Lcom/akop/bach/PSN$GameCatalogList;

    move-result-object v0

    return-object v0
.end method

.method public fetchGameCatalogItemDetails(Lcom/akop/bach/PsnAccount;Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 1
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p2}, Lcom/akop/bach/parser/PsnParser;->parseGameCatalogItemDetails(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v0

    return-object v0
.end method

.method public fetchGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;
    .locals 9
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "psnId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 444
    const/4 v2, 0x0

    .line 446
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/PsnParser;->parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;

    move-result-object v1

    .line 454
    .local v1, "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    return-object v1

    .line 458
    .end local v1    # "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v2, v6, :cond_2

    .line 465
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 468
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_2
    throw v0
.end method

.method public fetchGames(Lcom/akop/bach/PsnAccount;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->parseGames(Lcom/akop/bach/PsnAccount;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 305
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_2
    throw v0
.end method

.method public fetchSummary(Lcom/akop/bach/PsnAccount;)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/PsnParser;->parseAccountSummary(Lcom/akop/bach/PsnAccount;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 237
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    throw v0
.end method

.method public fetchTrophies(Lcom/akop/bach/PsnAccount;J)V
    .locals 8
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 321
    const/4 v1, 0x0

    .line 323
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/akop/bach/parser/PsnParser;->parseTrophies(Lcom/akop/bach/PsnAccount;J)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 339
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 342
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_2
    throw v0
.end method

.method protected getAvatarImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 180
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 182
    .end local p1    # "iconUrl":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getOutageMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lcom/akop/bach/parser/PsnParser;->PATTERN_PSN_DOWN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/akop/bach/parser/PsnParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_0
    sget-object v2, Lcom/akop/bach/parser/PsnParser;->PATTERN_TOS_UPDATED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_1
    return-object v1
.end method

.method protected abstract onAuthenticate(Lcom/akop/bach/BasicAccount;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected abstract parseCompareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract parseCompareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract parseFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract parseFriends(Lcom/akop/bach/PsnAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract parseGameCatalog(IIII)Lcom/akop/bach/PSN$GameCatalogList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected abstract parseGameCatalogItemDetails(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected abstract parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract parseGames(Lcom/akop/bach/PsnAccount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parsePairsInSimpleXml(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "document"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(?:\\s+[^>]*)?>(.*?)</"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 413
    .local v7, "outerNode":Ljava/util/regex/Pattern;
    const-string v8, "<(\\w+)[^>]*>([^<]*)</\\1>"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 415
    .local v1, "innerNode":Ljava/util/regex/Pattern;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v4, "kvpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 418
    .local v6, "nodeMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 420
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 423
    .local v5, "m":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v3, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "innerNodeName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 431
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    .end local v2    # "innerNodeName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 435
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_3
    return-object v4
.end method

.method protected abstract parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation
.end method

.method protected abstract parseTrophies(Lcom/akop/bach/PsnAccount;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected preparseResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "<script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "</script>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    throw v0

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/parser/Parser;->preparseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateAccount(Lcom/akop/bach/BasicAccount;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 556
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v2, p0, Lcom/akop/bach/parser/PsnParser;->mContext:Landroid/content/Context;

    const v3, 0x7f08006f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getLogonId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/akop/bach/parser/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 560
    check-cast v1, Lcom/akop/bach/PsnAccount;

    invoke-virtual {p0, v1}, Lcom/akop/bach/parser/PsnParser;->parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;

    move-result-object v0

    .line 561
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-object v0
.end method
