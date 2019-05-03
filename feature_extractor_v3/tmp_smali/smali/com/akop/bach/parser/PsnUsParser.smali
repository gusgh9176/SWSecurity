.class public Lcom/akop/bach/parser/PsnUsParser;
.super Lcom/akop/bach/parser/PsnParser;
.source "PsnUsParser.java"


# static fields
.field protected static final COLUMN_GAME_BRONZE:I = 0x2

.field protected static final COLUMN_GAME_GOLD:I = 0x4

.field protected static final COLUMN_GAME_ID:I = 0x0

.field protected static final COLUMN_GAME_PLATINUM:I = 0x5

.field protected static final COLUMN_GAME_PROGRESS:I = 0x1

.field protected static final COLUMN_GAME_SILVER:I = 0x3

.field private static final COMPARE_TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

.field protected static final FRIEND_ID_PROJECTION:[Ljava/lang/String;

.field protected static final GAMES_PROJECTION:[Ljava/lang/String;

.field private static final PATTERN_AVATAR_CONTAINER:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_TROPHIES_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_COMPARE_TROPHIES_TITLE_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_FRIENDS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAMES:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_DETAILS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_ESSENTIALS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_GAME_XML:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_PSV_LARGE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_PSV_THUMBS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_GAME_UID:Ljava/util/regex/Pattern;

.field private static final PATTERN_LEVEL:Ljava/util/regex/Pattern;

.field private static final PATTERN_LOGIN_REDIR_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_PROGRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHIES:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_COUNT:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_EARNED:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_TROPHY_TYPE:Ljava/util/regex/Pattern;

.field private static final PATTERN_URL:Ljava/util/regex/Pattern;

.field private static final PATTERN_URL_TROPHIES:Ljava/util/regex/Pattern;

.field private static final SCREENSHOT_BASE_URL:Ljava/lang/String; = "http://webassets.scea.com/pscomauth/groups/public/documents/webasset/"

.field private static final TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

.field protected static final URL_BLOG:Ljava/lang/String; = "http://feeds.feedburner.com/PSBlog?format=xml"

.field private static final URL_COMPARE_TROPHIES:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/trophies/%1$s/compare/detail?ids=%2$s&ids=%3$s"

.field private static final URL_COMPARE_TROPHIES_DETAIL:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/get_user_trophies_with_profile?title=%1$s&target=%2$s"

.field private static final URL_COMPARE_TROPHIES_REFERER:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/compare?ids=%1$s"

.field private static final URL_FRIENDS:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/friends?id=%1.16f"

.field private static final URL_GAMER_DETAIL:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profiles/%1$s"

.field private static final URL_GAMES:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_trophies_data"

.field private static final URL_GAME_CATALOG:Ljava/lang/String; = "http://us.playstation.com/ps-products/BrowseGames"

.field protected static final URL_LOGIN:Ljava/lang/String; = "https://store.playstation.com/j_acegi_external_security_check?target=/external/login.action"

.field private static final URL_PROFILE_SUMMARY:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/trophies?id=%1.16f"

.field private static final URL_RETURN_LOGIN:Ljava/lang/String; = "http://us.playstation.com/uwps/PSNTicketRetrievalGenericServlet"

.field private static final URL_TROPHIES:Ljava/lang/String; = "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_title_details_data"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM d HH:mm:ss zzz yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy hh:mm:ss a zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->COMPARE_TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

    .line 106
    const-string v0, "(http:[^\'\"]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL:Ljava/util/regex/Pattern;

    .line 108
    const-string v0, "parent\\.location\\s*=\\s*\'(http:[^\']+)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_LOGIN_REDIR_URL:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "<div id=\"id-handle\">\\s*(\\S+)\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

    .line 113
    const-string v0, "<div id=\"leveltext\">\\s*(\\d+)\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_LEVEL:Ljava/util/regex/Pattern;

    .line 115
    const-string v0, "<div class=\"progresstext\">\\s*(\\d+)%\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_PROGRESS:Ljava/util/regex/Pattern;

    .line 117
    const-string v0, "<div id=\"id-avatar\">\\s(.*?)\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_AVATAR_CONTAINER:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "<div class=\"slot\"[^>]*>(.*?)</div>\\s*</div>\\s*</div>\\s*</div>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, "<span class=\"gameTitleSortField\">([^<]*)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    .line 125
    const-string v0, "src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    .line 127
    const-string v0, "<span class=\"gameProgressSortField\">\\s*(\\d+)\\s*</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "<div class=\"trophycontent\">\\s*(\\d+)\\s*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "<a href=\"(/(?:[^/]+/)+([^\"]+))\">"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    .line 134
    const-string v0, "<div class=\"slot\\s*([^\"]*)\"[^>]*>(.*?)</div>\\s*</div>\\s*</div>\\s*</div>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHIES:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "<span class=\"trophyTitleSortField\">([^<]*)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

    .line 139
    const-string v0, "<span class=\"subtext\">([^<]*)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    .line 141
    const-string v0, "src=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "class=\"dateEarnedSortField\"[^>]*>([^<]*)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_EARNED:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "class=\"trophyTypeSortField\"[^>]*>\\s*([^<\\s]*)\\s*</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_TYPE:Ljava/util/regex/Pattern;

    .line 148
    const-string v0, "name=\"ids\" value=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_FRIENDS:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "<div class=\"text ([^\"]*)\">(\\d+)[^<]*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_COUNT:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "/TrophyDetailImage\\?([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL_TROPHIES:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "<div id=\"T_([^\"]+)\" class=\"slot\\s*([^\"]*)\"[^>]*>(.*?)</div>\\s*</div>\\s*</div>\\s*</div>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "<span class=\"gameTitleSortField\">([^<]*)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES_TITLE:Ljava/util/regex/Pattern;

    .line 161
    const-string v0, "/get_user_trophies_with_profile\\?title=([^&]+)&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES_TITLE_ID:Ljava/util/regex/Pattern;

    .line 164
    const-string v0, "<div class=\"bgame_list clearfix\">(.*?)</table>\\s*</div>"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

    .line 168
    const-string v0, "<div class=\"imagebox\">\\s*<a class=\"first\" href=\"[^\"]*\"><img src=\"([^\"]*)\" alt=\"[^\"]*\" title=\"[^\"]*\".*?<h6>\\s*<a href=\"([^\"]*)\" onclick=\"[^\"]*\">([^<]*)</a>\\s*</h6>\\s*<p>(.*?)</p>"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_ESSENTIALS:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "<p>([^:]*):\\s*([^<]*)</p>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

    .line 177
    const-string v0, "<meta name=\"([^\"]+)\" content=\"([^\"]+)\"\\s*/>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_DETAILS:Ljava/util/regex/Pattern;

    .line 180
    const-string v0, "swf\"></a>\\s*<a href=\"([^\"]+\\.xml)\"></a>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_GAME_XML:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "<img onclick=\"screenshotview\\(this\\)\" .*? src=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_PSV_THUMBS:Ljava/util/regex/Pattern;

    .line 185
    const-string v0, "id=\"ssimagelarge[^\"]+\"><img .*? src=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_PSV_LARGE:Ljava/util/regex/Pattern;

    .line 198
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "Progress"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "UnlockedBronze"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UnlockedSilver"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UnlockedGold"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UnlockedPlatinum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->GAMES_PROJECTION:[Ljava/lang/String;

    .line 207
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/akop/bach/parser/PsnUsParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/PsnParser;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v1, p0, Lcom/akop/bach/parser/PsnUsParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 215
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const-string v1, "http.protocol.max-redirects"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 216
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

    .line 389
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;

    move-result-object v9

    .line 390
    .local v9, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    .line 393
    .local v6, "accountId":J
    const/4 v10, 0x1

    .line 395
    .local v10, "newRecord":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 396
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

    .line 401
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 403
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v10, 0x0

    .line 405
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_1
    if-eqz v10, :cond_3

    .line 410
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/PsnAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 421
    :goto_0
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 423
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const-string v1, "Summary update"

    invoke-static {v1, v12, v13}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 427
    const-string v1, "OnlineId"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->setOnlineId(Ljava/lang/String;)V

    .line 428
    const-string v1, "IconUrl"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->setIconUrl(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/akop/bach/PsnAccount;->setLastSummaryUpdate(J)V

    .line 430
    iget-object v1, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 431
    return-void

    .line 417
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

    .line 1820
    const/4 v2, 0x0

    .line 1822
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1823
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1828
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/PsnUsParser;->parseCompareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1849
    .local v0, "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    return-object v0

    .line 1830
    .end local v0    # "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    :catch_0
    move-exception v1

    .line 1835
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v2, v6, :cond_2

    .line 1837
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1838
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1840
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1820
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
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

    .line 1858
    const/4 v2, 0x0

    .line 1860
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1861
    new-instance v3, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v4, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1866
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/akop/bach/parser/PsnUsParser;->parseCompareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1887
    .local v0, "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    return-object v0

    .line 1868
    .end local v0    # "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v2, v6, :cond_2

    .line 1875
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1876
    const-string v3, "Re-authenticating"

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1878
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1858
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1882
    :cond_2
    throw v1
.end method

.method public createAccount(Lcom/akop/bach/BasicAccount;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1958
    iget-object v2, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1959
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1960
    sget-object v2, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v1, p1

    .line 1962
    check-cast v1, Lcom/akop/bach/PsnAccount;

    .line 1965
    .local v1, "psnAccount":Lcom/akop/bach/PsnAccount;
    const-string v2, "OnlineId"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setOnlineId(Ljava/lang/String;)V

    .line 1966
    const-string v2, "IconUrl"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/akop/bach/PsnAccount;->setIconUrl(Ljava/lang/String;)V

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/akop/bach/PsnAccount;->setLastSummaryUpdate(J)V

    .line 1969
    iget-object v2, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/akop/bach/BasicAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 1970
    return-void
.end method

.method protected createHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
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

    .line 1908
    iget-object v1, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1909
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v6

    .line 1912
    .local v6, "accountId":J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1913
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

    .line 1920
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1922
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1924
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1925
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1926
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1932
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 1933
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 1932
    :cond_2
    if-eqz v9, :cond_3

    .line 1933
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1937
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

    .line 1941
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

    .line 1942
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

    .line 1943
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

    .line 1946
    sget-object v1, Lcom/akop/bach/PSN$Profiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1947
    sget-object v1, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1948
    sget-object v1, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1949
    sget-object v1, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1952
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1953
    return-void
.end method

.method public fetchBlog()Lcom/akop/bach/util/rss/RssChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 1977
    :try_start_0
    const-string v1, "http://feeds.feedburner.com/PSBlog?format=xml"

    invoke-static {v1}, Lcom/akop/bach/util/rss/RssHandler;->getFeed(Ljava/lang/String;)Lcom/akop/bach/util/rss/RssChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1979
    :catch_0
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/akop/bach/parser/ParserException;

    iget-object v2, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const v3, 0x7f080071

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v1
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

    .line 1783
    const/4 v1, 0x0

    .line 1785
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1792
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/akop/bach/parser/PsnUsParser;->parseFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 1802
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1803
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1805
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1809
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

    .line 1681
    const/4 v1, 0x0

    .line 1683
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1684
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1689
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->parseFriends(Lcom/akop/bach/PsnAccount;)V

    .line 1690
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    return-void

    .line 1692
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 1699
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1700
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1702
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1706
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

    .line 1715
    const/4 v1, 0x0

    .line 1717
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1723
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->parseGames(Lcom/akop/bach/PsnAccount;)V

    .line 1724
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    return-void

    .line 1726
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 1733
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1734
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1736
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1740
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

    .line 1647
    const/4 v1, 0x0

    .line 1649
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1655
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->parseAccountSummary(Lcom/akop/bach/PsnAccount;)V

    .line 1656
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1663
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 1665
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1666
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1668
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1672
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

    .line 1749
    const/4 v1, 0x0

    .line 1751
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1752
    new-instance v2, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v3, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1757
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/akop/bach/parser/PsnUsParser;->parseTrophies(Lcom/akop/bach/PsnAccount;J)V

    .line 1758
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->saveSession(Lcom/akop/bach/BasicAccount;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    return-void

    .line 1760
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    if-ge v1, v5, :cond_2

    .line 1767
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1768
    const-string v2, "Re-authenticating"

    invoke-static {v2}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1770
    :cond_1
    invoke-virtual {p0, p1}, Lcom/akop/bach/parser/PsnUsParser;->deleteSession(Lcom/akop/bach/BasicAccount;)Z

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1774
    :cond_2
    throw v0
.end method

.method protected getAvatarImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 718
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 719
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 721
    .end local p1    # "iconUrl":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getSessionFile(Lcom/akop/bach/BasicAccount;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".us.session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAuthenticate(Lcom/akop/bach/BasicAccount;)Z
    .locals 12
    .param p1, "account"    # Lcom/akop/bach/BasicAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 228
    move-object v7, p1

    check-cast v7, Lcom/akop/bach/PsnAccount;

    .line 230
    .local v7, "psnAccount":Lcom/akop/bach/PsnAccount;
    invoke-virtual {v7}, Lcom/akop/bach/PsnAccount;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "password":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 232
    new-instance v9, Lcom/akop/bach/parser/ParserException;

    iget-object v10, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const v11, 0x7f080059

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 234
    :cond_0
    iget-object v10, p0, Lcom/akop/bach/parser/PsnUsParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 237
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v1, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v10, "j_username"

    invoke-virtual {v7}, Lcom/akop/bach/PsnAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v10, v11}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string v10, "j_password"

    invoke-static {v1, v10, v6}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v10, "returnURL"

    const-string v11, "http://us.playstation.com/uwps/PSNTicketRetrievalGenericServlet"

    invoke-static {v1, v10, v11}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    const-string v10, "http.protocol.max-redirects"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 246
    iget-object v10, p0, Lcom/akop/bach/parser/PsnUsParser;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    .line 247
    .local v8, "store":Lorg/apache/http/client/CookieStore;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v10, "APPLICATION_SITE_URL"

    const-string v11, "http://us.playstation.com/"

    invoke-direct {v0, v10, v11}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v10, ".playstation.com"

    invoke-virtual {v0, v10}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 250
    const-string v10, "/"

    invoke-virtual {v0, v10}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 251
    invoke-interface {v8, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 254
    const-string v10, "https://store.playstation.com/j_acegi_external_security_check?target=/external/login.action"

    invoke-virtual {p0, v10, v1}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "page":Ljava/lang/String;
    const-string v10, "http.protocol.max-redirects"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 260
    sget-object v10, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_LOGIN_REDIR_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 262
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_3

    .line 264
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 265
    const-string v9, "onAuthUS: Redir URL not found"

    invoke-static {v9}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {p0, v4}, Lcom/akop/bach/parser/PsnUsParser;->getOutageMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "outageMessage":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 269
    new-instance v9, Lcom/akop/bach/parser/ParserException;

    invoke-direct {v9, v3}, Lcom/akop/bach/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 271
    :cond_2
    const/4 v9, 0x0

    .line 285
    .end local v3    # "outageMessage":Ljava/lang/String;
    :goto_0
    return v9

    .line 278
    :cond_3
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method protected parseCompareGames(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedGameInfo;
    .locals 42
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    const-string v4, "http://us.playstation.com/playstation/psn/profiles/%1$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 982
    .local v35, "profileUrl":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v34

    .line 985
    .local v34, "profilePage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 987
    .local v20, "avatarUrl":Ljava/lang/String;
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_AVATAR_CONTAINER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    .local v31, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL:Ljava/util/regex/Pattern;

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 993
    :cond_0
    const-string v4, "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_trophies_data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v37

    .line 995
    .local v37, "selfPage":Ljava/lang/String;
    const-string v4, "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_trophies_data"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v32

    .line 1006
    .local v32, "oppPage":Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .local v27, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1010
    .local v25, "gameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 1014
    .local v40, "started":J
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 1015
    .local v26, "gameMatcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1017
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    .line 1019
    .local v29, "group":Ljava/lang/String;
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1022
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    .line 1026
    .local v39, "uid":Ljava/lang/String;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1027
    .local v24, "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1030
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :goto_1
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1035
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/akop/bach/parser/PsnUsParser;->getAvatarImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    move-object/from16 v0, v25

    move-object/from16 v1, v39

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const/16 v33, 0x0

    .local v33, "platinum":I
    move/from16 v28, v33

    .local v28, "gold":I
    move/from16 v38, v33

    .local v38, "silver":I
    move/from16 v21, v33

    .local v21, "bronze":I
    move/from16 v36, v33

    .line 1048
    .local v36, "progress":I
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1049
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 1051
    :cond_2
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1053
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1055
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1057
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 1059
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1061
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1063
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1064
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1069
    :cond_3
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1032
    .end local v21    # "bronze":I
    .end local v28    # "gold":I
    .end local v33    # "platinum":I
    .end local v36    # "progress":I
    .end local v38    # "silver":I
    :cond_4
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1037
    :cond_5
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1088
    .end local v24    # "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v29    # "group":Ljava/lang/String;
    .end local v39    # "uid":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1089
    const-string v4, "parseCompareGames/Own page processing"

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v40

    .line 1093
    :cond_7
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 1094
    :cond_8
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1096
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    .line 1098
    .restart local v29    # "group":Ljava/lang/String;
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1101
    const/4 v4, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    .line 1103
    .restart local v39    # "uid":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1105
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1106
    .restart local v24    # "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1109
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :goto_4
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1114
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/akop/bach/parser/PsnUsParser;->getAvatarImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :goto_5
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    move-object/from16 v0, v25

    move-object/from16 v1, v39

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :goto_6
    const/16 v33, 0x0

    .restart local v33    # "platinum":I
    move/from16 v28, v33

    .restart local v28    # "gold":I
    move/from16 v38, v33

    .restart local v38    # "silver":I
    move/from16 v21, v33

    .restart local v21    # "bronze":I
    move/from16 v36, v33

    .line 1136
    .restart local v36    # "progress":I
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1137
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 1139
    :cond_9
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1141
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1143
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1145
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 1147
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1149
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1151
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1152
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1157
    :cond_a
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1111
    .end local v21    # "bronze":I
    .end local v28    # "gold":I
    .end local v33    # "platinum":I
    .end local v36    # "progress":I
    .end local v38    # "silver":I
    :cond_b
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1117
    :cond_c
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1132
    .end local v24    # "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_d
    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    .restart local v24    # "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 1166
    .end local v24    # "game":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v29    # "group":Ljava/lang/String;
    .end local v39    # "uid":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1167
    const-string v4, "parseCompareGames/Opp. page processing"

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v40

    .line 1169
    :cond_f
    new-instance v22, Lcom/akop/bach/PSN$ComparedGameInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/akop/bach/PSN$ComparedGameInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 1171
    .local v22, "cgi":Lcom/akop/bach/PSN$ComparedGameInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->myAvatarIconUrl:Ljava/lang/String;

    .line 1172
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/akop/bach/PSN$ComparedGameInfo;->yourAvatarIconUrl:Ljava/lang/String;

    .line 1174
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    .line 1176
    .local v23, "g":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/akop/bach/PSN$ComparedGameInfo;->cursor:Lcom/akop/bach/PSN$ComparedGameCursor;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/16 v15, 0xb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0xd

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0xe

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v4 .. v19}, Lcom/akop/bach/PSN$ComparedGameCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIIZIIIII)V

    goto/16 :goto_7

    .line 1193
    .end local v23    # "g":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_10
    return-object v22
.end method

.method protected parseCompareTrophies(Lcom/akop/bach/PsnAccount;Ljava/lang/String;Ljava/lang/String;)Lcom/akop/bach/PSN$ComparedTrophyInfo;
    .locals 39
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "gameId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1453
    const-string v4, "http://us.playstation.com/playstation/psn/profile/trophies/%1$s/compare/detail?ids=%2$s&ids=%3$s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1458
    .local v38, "url":Ljava/lang/String;
    new-instance v28, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v28, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v4, "Referer"

    const-string v5, "http://us.playstation.com/playstation/psn/profile/compare?ids=%1$s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-interface {v0, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v27

    .line 1466
    .local v27, "page":Ljava/lang/String;
    new-instance v14, Lcom/akop/bach/PSN$ComparedTrophyInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/akop/bach/PSN$ComparedTrophyInfo;-><init>(Landroid/content/ContentResolver;)V

    .line 1469
    .local v14, "cti":Lcom/akop/bach/PSN$ComparedTrophyInfo;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v33, "trophies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 1473
    .local v36, "trophyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES_TITLE_ID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .local v23, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1475
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No title ID for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1641
    :cond_0
    return-object v14

    .line 1481
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/akop/bach/PSN;->getShortTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    .line 1483
    .local v26, "nullUnlockString":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    .line 1485
    .local v32, "titleId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1487
    .local v30, "started":J
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    .line 1488
    .local v24, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1490
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v35

    .line 1491
    .local v35, "trophyId":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 1493
    .local v17, "group":Ljava/lang/String;
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 1495
    .local v34, "trophy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_COMPARE_TROPHIES_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1497
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1500
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    :goto_1
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1513
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/akop/bach/parser/PsnUsParser;->getAvatarImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :goto_2
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_TYPE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1520
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v37

    .line 1521
    .local v37, "trophyType":Ljava/lang/String;
    const-string v4, "BRONZE"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1522
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    .end local v37    # "trophyType":Ljava/lang/String;
    :cond_2
    :goto_3
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1502
    :cond_3
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1506
    :cond_4
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const v6, 0x7f08011c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const v6, 0x7f08013f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1516
    :cond_5
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1523
    .restart local v37    # "trophyType":Ljava/lang/String;
    :cond_6
    const-string v4, "SILVER"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1524
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1525
    :cond_7
    const-string v4, "GOLD"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1526
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1527
    :cond_8
    const-string v4, "PLATINUM"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1528
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1529
    :cond_9
    const-string v4, "HIDDEN"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1530
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1541
    .end local v17    # "group":Ljava/lang/String;
    .end local v34    # "trophy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v35    # "trophyId":Ljava/lang/String;
    .end local v37    # "trophyType":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1542
    const-string v4, "parseCompareTrophies/processing"

    move-wide/from16 v0, v30

    invoke-static {v4, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1548
    :cond_b
    const-string v4, "http://us.playstation.com/playstation/psn/profile/get_user_trophies_with_profile?title=%1$s&target=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    move-object/from16 v0, v32

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1552
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    .line 1553
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 1555
    .local v22, "json":Lorg/json/JSONObject;
    const-string v4, "trophyList"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .local v13, "array":Lorg/json/JSONArray;
    if-eqz v13, :cond_d

    .line 1557
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v25

    .line 1558
    .local v25, "n":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 1560
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    if-eqz v22, :cond_c

    .line 1562
    const-string v4, "id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1563
    .restart local v35    # "trophyId":Ljava/lang/String;
    if-eqz v35, :cond_c

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stampDate"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "stampTime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1571
    .local v15, "dateTime":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->COMPARE_TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v4, v15}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 1581
    .local v18, "earned":J
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Lcom/akop/bach/PSN;->getShortTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    .end local v15    # "dateTime":Ljava/lang/String;
    .end local v18    # "earned":J
    .end local v35    # "trophyId":Ljava/lang/String;
    :cond_c
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1573
    .restart local v15    # "dateTime":Ljava/lang/String;
    .restart local v35    # "trophyId":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1575
    .local v16, "e":Ljava/text/ParseException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1576
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_5

    .line 1589
    .end local v15    # "dateTime":Ljava/lang/String;
    .end local v16    # "e":Ljava/text/ParseException;
    .end local v20    # "i":I
    .end local v25    # "n":I
    .end local v35    # "trophyId":Ljava/lang/String;
    :cond_d
    const-string v4, "http://us.playstation.com/playstation/psn/profile/get_user_trophies_with_profile?title=%1$s&target=%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    move-object/from16 v0, v32

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1593
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    .line 1594
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 1596
    const-string v4, "trophyList"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 1598
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v25

    .line 1599
    .restart local v25    # "n":I
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 1601
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    if-eqz v22, :cond_e

    .line 1603
    const-string v4, "id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1604
    .restart local v35    # "trophyId":Ljava/lang/String;
    if-eqz v35, :cond_e

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stampDate"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "stampTime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1612
    .restart local v15    # "dateTime":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->COMPARE_TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v4, v15}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v18

    .line 1622
    .restart local v18    # "earned":J
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Lcom/akop/bach/PSN;->getShortTrophyUnlockString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    .end local v15    # "dateTime":Ljava/lang/String;
    .end local v18    # "earned":J
    .end local v35    # "trophyId":Ljava/lang/String;
    :cond_e
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 1614
    .restart local v15    # "dateTime":Ljava/lang/String;
    .restart local v35    # "trophyId":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 1616
    .restart local v16    # "e":Ljava/text/ParseException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1617
    invoke-virtual/range {v16 .. v16}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_7

    .line 1629
    .end local v15    # "dateTime":Ljava/lang/String;
    .end local v16    # "e":Ljava/text/ParseException;
    .end local v20    # "i":I
    .end local v25    # "n":I
    .end local v35    # "trophyId":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map;

    .line 1631
    .local v29, "t":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v4, v14, Lcom/akop/bach/PSN$ComparedTrophyInfo;->cursor:Lcom/akop/bach/PSN$ComparedTrophyCursor;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_10

    const/4 v9, 0x1

    :goto_9
    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual/range {v4 .. v12}, Lcom/akop/bach/PSN$ComparedTrophyCursor;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    const/4 v9, 0x0

    goto :goto_9
.end method

.method protected parseFriendSummary(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)V
    .locals 18
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "friendOnlineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 920
    .local v16, "updated":J
    move-wide/from16 v14, v16

    .line 922
    .local v14, "started":J
    invoke-virtual/range {p0 .. p2}, Lcom/akop/bach/parser/PsnUsParser;->parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;

    move-result-object v12

    .line 924
    .local v12, "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 925
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OnlineId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 930
    .local v8, "c":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 934
    .local v10, "friendId":J
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 939
    :cond_0
    if-eqz v8, :cond_1

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v9, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 945
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v3, "OnlineId"

    iget-object v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineId:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v3, "IconUrl"

    iget-object v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->AvatarUrl:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v3, "Level"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->Level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    const-string v3, "Progress"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->Progress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    const-string v3, "Status"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    const-string v3, "PlatinumTrophies"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->PlatinumTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    const-string v3, "GoldTrophies"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->GoldTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    const-string v3, "SilverTrophies"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->SilverTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    const-string v3, "BronzeTrophies"

    iget v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->BronzeTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string v3, "Playing"

    iget-object v4, v12, Lcom/akop/bach/PSN$GamerProfileInfo;->Playing:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "LastUpdated"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 957
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-gez v3, :cond_4

    .line 960
    const-string v3, "AccountId"

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 961
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 969
    :goto_0
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    const-string v3, "Friend page processing"

    invoke-static {v3, v14, v15}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v14

    .line 972
    :cond_2
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 974
    return-void

    .line 939
    .end local v9    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_3

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 965
    .restart local v9    # "cv":Landroid/content/ContentValues;
    :cond_4
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected parseFriends(Lcom/akop/bach/PsnAccount;)V
    .locals 31
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    const-class v30, Lcom/akop/bach/parser/PsnUsParser;

    monitor-enter v30

    .line 729
    :try_start_0
    const-string v3, "http://us.playstation.com/playstation/psn/profile/friends?id=%1.16f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 730
    .local v25, "url":Ljava/lang/String;
    new-instance v21, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 732
    .local v21, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v3, "Referer"

    const-string v4, "http://us.playstation.com/myfriends/"

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v3, "Accept"

    const-string v4, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 737
    .local v20, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 738
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v8

    .line 740
    .local v8, "accountId":J
    new-instance v19, Ljava/util/ArrayList;

    const/16 v3, 0x64

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    .local v19, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v23, 0x0

    .line 743
    .local v23, "rowsInserted":I
    const/16 v24, 0x0

    .line 744
    .local v24, "rowsUpdated":I
    const/16 v22, 0x0

    .line 746
    .local v22, "rowsDeleted":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 747
    .local v28, "updated":J
    move-wide/from16 v26, v28

    .line 748
    .local v26, "started":J
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_FRIENDS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 750
    .local v15, "gameMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 752
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 757
    .local v14, "friendGt":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/akop/bach/parser/PsnUsParser;->parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 789
    .local v18, "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    :try_start_2
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->FRIEND_ID_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OnlineId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 794
    .local v10, "c":Landroid/database/Cursor;
    const-wide/16 v16, -0x1

    .line 796
    .local v16, "friendId":J
    if-eqz v10, :cond_2

    .line 800
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v16

    .line 805
    :cond_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v11, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 811
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v3, "OnlineId"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineId:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v3, "IconUrl"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->AvatarUrl:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v3, "Level"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    const-string v3, "Progress"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Progress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    const-string v3, "Status"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    const-string v3, "PlatinumTrophies"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->PlatinumTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    const-string v3, "GoldTrophies"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->GoldTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 818
    const-string v3, "SilverTrophies"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->SilverTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    const-string v3, "BronzeTrophies"

    move-object/from16 v0, v18

    iget v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->BronzeTrophies:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v3, "Playing"

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Playing:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v3, "DeleteMarker"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    const-string v3, "LastUpdated"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-gez v3, :cond_4

    .line 827
    const-string v3, "AccountId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 863
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "accountId":J
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v14    # "friendGt":Ljava/lang/String;
    .end local v15    # "gameMatcher":Ljava/util/regex/Matcher;
    .end local v16    # "friendId":J
    .end local v18    # "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    .end local v19    # "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "page":Ljava/lang/String;
    .end local v21    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22    # "rowsDeleted":I
    .end local v23    # "rowsInserted":I
    .end local v24    # "rowsUpdated":I
    .end local v25    # "url":Ljava/lang/String;
    .end local v26    # "started":J
    .end local v28    # "updated":J
    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 759
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "accountId":J
    .restart local v14    # "friendGt":Ljava/lang/String;
    .restart local v15    # "gameMatcher":Ljava/util/regex/Matcher;
    .restart local v19    # "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v20    # "page":Ljava/lang/String;
    .restart local v21    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v22    # "rowsDeleted":I
    .restart local v23    # "rowsInserted":I
    .restart local v24    # "rowsUpdated":I
    .restart local v25    # "url":Ljava/lang/String;
    .restart local v26    # "started":J
    .restart local v28    # "updated":J
    :catch_0
    move-exception v13

    .line 761
    .local v13, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Friend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threw an IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 766
    :cond_3
    new-instance v11, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v11, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 767
    .restart local v11    # "cv":Landroid/content/ContentValues;
    const-string v3, "DeleteMarker"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OnlineId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 775
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 780
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Friend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threw an Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 805
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v16    # "friendId":J
    .restart local v18    # "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    :catchall_1
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 833
    .restart local v11    # "cv":Landroid/content/ContentValues;
    :cond_4
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 841
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v14    # "friendGt":Ljava/lang/String;
    .end local v16    # "friendId":J
    .end local v18    # "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    :cond_5
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeleteMarker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 845
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 847
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    new-array v12, v3, [Landroid/content/ContentValues;

    .line 848
    .local v12, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 850
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v23

    .line 853
    .end local v12    # "cvs":[Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/PsnAccount;->setLastFriendUpdate(J)V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 857
    sget-object v3, Lcom/akop/bach/PSN$Friends;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 859
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Friend page processing [I:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";U:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";D:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 863
    :cond_7
    monitor-exit v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 864
    return-void
.end method

.method protected parseGameCatalog(IIII)Lcom/akop/bach/PSN$GameCatalogList;
    .locals 30
    .param p1, "console"    # I
    .param p2, "page"    # I
    .param p3, "releaseStatus"    # I
    .param p4, "sortOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    const/4 v4, 0x0

    .line 1295
    .local v4, "beginsWith":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1296
    .local v17, "rating":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1297
    .local v9, "genre":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1298
    .local v16, "publisher":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1299
    .local v20, "sortOrderSpec":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1301
    .local v7, "consoleSpec":Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1302
    const-string v7, "psvita"

    .line 1310
    :goto_0
    const/16 v24, 0x1

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1311
    const-string v20, "a-z"

    .line 1315
    :goto_1
    const/16 v15, 0xc

    .line 1317
    .local v15, "pageSize":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1319
    .local v10, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v24, "MaxReleaseDateValue"

    const-string v25, "2"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1320
    const-string v24, "MinReleaseDateValue"

    const-string v25, "6"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1321
    const-string v24, "beginsWith"

    if-nez v4, :cond_0

    const-string v4, "Any"

    .end local v4    # "beginsWith":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v24

    invoke-static {v10, v0, v4}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1322
    const-string v24, "console"

    move-object/from16 v0, v24

    invoke-static {v10, v0, v7}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1323
    const-string v25, "esrb"

    if-nez v17, :cond_9

    const-string v24, "All"

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1324
    const-string v25, "genre"

    if-nez v9, :cond_a

    const-string v24, "All"

    :goto_3
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1325
    const-string v24, "lastAjaxCallTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/32 v28, 0x2255100

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1326
    const-string v24, "publisher"

    if-nez v16, :cond_1

    const-string v16, "Any"

    .end local v16    # "publisher":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1327
    const-string v24, "recordsOnPage"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    const-string v24, "sortOrder"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string v24, "throughAjax"

    const-string v25, "true"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    const-string v24, "viewType"

    const-string v25, "gridView"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1331
    const-string v24, "page"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->addValue(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1335
    .local v22, "started":J
    const-string v24, "http://us.playstation.com/ps-products/BrowseGames"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v10, v2}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    .line 1336
    .local v6, "catalogPage":Ljava/lang/String;
    invoke-static {v6}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1339
    const/16 v18, 0x0

    .line 1341
    .local v18, "records":I
    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .local v21, "spacePos":I
    if-lez v21, :cond_2

    .line 1345
    const/16 v24, 0x0

    :try_start_0
    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 1350
    :cond_2
    :goto_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1351
    const-string v24, "parseGameCatalog/data fetch"

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1354
    :cond_3
    sget-object v24, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_ITEMS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1356
    .local v12, "itemMatcher":Ljava/util/regex/Matcher;
    new-instance v5, Lcom/akop/bach/PSN$GameCatalogList;

    invoke-direct {v5}, Lcom/akop/bach/PSN$GameCatalogList;-><init>()V

    .line 1358
    .local v5, "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    move/from16 v0, p2

    iput v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    .line 1359
    iput v15, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageSize:I

    .line 1363
    const/4 v14, 0x0

    .line 1365
    .local v14, "noMatches":Z
    :cond_4
    :goto_5
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1367
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1369
    .local v8, "content":Ljava/lang/String;
    sget-object v24, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_ESSENTIALS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .local v13, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-nez v24, :cond_b

    .line 1371
    const/4 v14, 0x1

    .line 1372
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1373
    const-string v24, "PATTERN_GAME_CATALOG_ESSENTIALS matched nothing"

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    goto :goto_5

    .line 1303
    .end local v5    # "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    .end local v6    # "catalogPage":Ljava/lang/String;
    .end local v8    # "content":Ljava/lang/String;
    .end local v10    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v12    # "itemMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v14    # "noMatches":Z
    .end local v15    # "pageSize":I
    .end local v18    # "records":I
    .end local v21    # "spacePos":I
    .end local v22    # "started":J
    .restart local v4    # "beginsWith":Ljava/lang/String;
    .restart local v16    # "publisher":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x3

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1304
    const-string v7, "psp3000,pspgo"

    goto/16 :goto_0

    .line 1305
    :cond_6
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1306
    const-string v7, "ps2"

    goto/16 :goto_0

    .line 1308
    :cond_7
    const-string v7, "ps3"

    goto/16 :goto_0

    .line 1313
    :cond_8
    const-string v20, "rDatenf"

    goto/16 :goto_1

    .line 1323
    .end local v4    # "beginsWith":Ljava/lang/String;
    .restart local v10    # "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "pageSize":I
    :cond_9
    const-string v24, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 1324
    :cond_a
    const-string v24, ","

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lcom/akop/bach/parser/PsnUsParser;->joinString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 1378
    .end local v16    # "publisher":Ljava/lang/String;
    .restart local v5    # "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    .restart local v6    # "catalogPage":Ljava/lang/String;
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v12    # "itemMatcher":Ljava/util/regex/Matcher;
    .restart local v13    # "m":Ljava/util/regex/Matcher;
    .restart local v14    # "noMatches":Z
    .restart local v18    # "records":I
    .restart local v21    # "spacePos":I
    .restart local v22    # "started":J
    :cond_b
    new-instance v11, Lcom/akop/bach/PSN$GameCatalogItem;

    invoke-direct {v11}, Lcom/akop/bach/PSN$GameCatalogItem;-><init>()V

    .line 1380
    .local v11, "item":Lcom/akop/bach/PSN$GameCatalogItem;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/akop/bach/PSN$GameCatalogItem;->BoxartUrl:Ljava/lang/String;

    .line 1381
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    .line 1382
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/akop/bach/PSN$GameCatalogItem;->Title:Ljava/lang/String;

    .line 1383
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/akop/bach/PSN$GameCatalogItem;->Overview:Ljava/lang/String;

    .line 1385
    sget-object v24, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_STATS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 1386
    const/16 v19, 0x0

    .local v19, "row":I
    :goto_6
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1388
    if-nez v19, :cond_d

    .line 1386
    :cond_c
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1411
    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1414
    const/16 v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1416
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/akop/bach/PSN$GameCatalogItem;->Genre:Ljava/lang/String;

    goto :goto_7

    .line 1418
    :cond_e
    const/16 v24, 0x3

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1421
    const/16 v24, 0x4

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1424
    const/16 v24, 0x5

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    goto :goto_7

    .line 1429
    :cond_f
    iget-object v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->Items:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1432
    .end local v8    # "content":Ljava/lang/String;
    .end local v11    # "item":Lcom/akop/bach/PSN$GameCatalogItem;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "row":I
    :cond_10
    if-eqz v14, :cond_13

    iget-object v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->Items:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_13

    .line 1433
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    .line 1437
    :goto_8
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1438
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "pN: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ;pS: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageSize:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ;records: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ;more? "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-boolean v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/akop/bach/App;->logv(Ljava/lang/String;)V

    .line 1443
    :cond_11
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1444
    const-string v24, "parseGameCatalog/parsing"

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 1446
    :cond_12
    return-object v5

    .line 1435
    :cond_13
    iget v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageNumber:I

    move/from16 v24, v0

    iget v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->PageSize:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    const/16 v24, 0x1

    :goto_9
    move/from16 v0, v24

    iput-boolean v0, v5, Lcom/akop/bach/PSN$GameCatalogList;->MorePages:Z

    goto :goto_8

    :cond_14
    const/16 v24, 0x0

    goto :goto_9

    .line 1347
    .end local v5    # "catalog":Lcom/akop/bach/PSN$GameCatalogList;
    .end local v12    # "itemMatcher":Ljava/util/regex/Matcher;
    .end local v14    # "noMatches":Z
    :catch_0
    move-exception v24

    goto/16 :goto_4
.end method

.method protected parseGameCatalogItemDetails(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;
    .locals 18
    .param p1, "item"    # Lcom/akop/bach/PSN$GameCatalogItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    if-nez p1, :cond_1

    .line 1200
    const/4 v3, 0x0

    .line 1286
    :cond_0
    :goto_0
    return-object v3

    .line 1202
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/akop/bach/PSN$GameCatalogItemDetails;->fromItem(Lcom/akop/bach/PSN$GameCatalogItem;)Lcom/akop/bach/PSN$GameCatalogItemDetails;

    move-result-object v3

    .line 1204
    .local v3, "details":Lcom/akop/bach/PSN$GameCatalogItemDetails;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1206
    .local v10, "started":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/akop/bach/PSN$GameCatalogItem;->DetailUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1208
    .local v2, "detailPage":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1209
    const-string v16, "parseGameCatalogItemDetails/data fetch"

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1211
    :cond_2
    sget-object v16, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_DETAILS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1212
    .local v6, "m":Ljava/util/regex/Matcher;
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1214
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, "key":Ljava/lang/String;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1217
    .local v13, "value":Ljava/lang/String;
    const-string v16, "gameTitle"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1218
    iput-object v13, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    goto :goto_1

    .line 1219
    :cond_4
    const-string v16, "gameLongDescription"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1220
    iput-object v13, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->Description:Ljava/lang/String;

    goto :goto_1

    .line 1223
    .end local v5    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_5
    sget-object v16, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_GAME_XML:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1224
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1228
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 1229
    .local v15, "xmlFile":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1231
    .local v14, "xmlContents":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1234
    :goto_2
    if-eqz v14, :cond_8

    .line 1236
    const-string v16, "element"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/akop/bach/parser/PsnUsParser;->parsePairsInSimpleXml(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1238
    .local v7, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v12, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v9, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1243
    .local v8, "pairs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "thumb"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v16, "large"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1245
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://webassets.scea.com/pscomauth/groups/public/documents/webasset/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v16, "thumb"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://webassets.scea.com/pscomauth/groups/public/documents/webasset/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v16, "large"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1250
    .end local v8    # "pairs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    .line 1251
    iget-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1253
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    .line 1254
    iget-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1283
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "xmlContents":Ljava/lang/String;
    .end local v15    # "xmlFile":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1284
    const-string v16, "parseGameCatalogItemDetails/parsing"

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    goto/16 :goto_0

    .line 1261
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .restart local v12    # "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v16, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_PSV_THUMBS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1264
    :goto_5
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1265
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1267
    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .restart local v9    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v16, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_CATALOG_PSV_LARGE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1270
    :goto_6
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1271
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1273
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1275
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    .line 1276
    iget-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsThumb:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1278
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    .line 1279
    iget-object v0, v3, Lcom/akop/bach/PSN$GameCatalogItemDetails;->ScreenshotsLarge:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_4

    .line 1232
    .end local v9    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "xmlContents":Ljava/lang/String;
    .restart local v15    # "xmlFile":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto/16 :goto_2
.end method

.method protected parseGamerProfile(Lcom/akop/bach/PsnAccount;Ljava/lang/String;)Lcom/akop/bach/PSN$GamerProfileInfo;
    .locals 13
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "onlineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 869
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 870
    const-string v5, "http://us.playstation.com/playstation/psn/profiles/%1$s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p0, v4, v10}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "page":Ljava/lang/String;
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    .line 877
    new-instance v5, Lcom/akop/bach/parser/ParserException;

    iget-object v6, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    const v7, 0x7f080104

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v12

    invoke-direct {v5, v6, v7, v8}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v5

    .line 880
    :cond_0
    new-instance v0, Lcom/akop/bach/PSN$GamerProfileInfo;

    invoke-direct {v0}, Lcom/akop/bach/PSN$GamerProfileInfo;-><init>()V

    .line 881
    .local v0, "gpi":Lcom/akop/bach/PSN$GamerProfileInfo;
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineId:Ljava/lang/String;

    .line 883
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_PROGRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 884
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Progress:I

    .line 886
    :cond_1
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_LEVEL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 887
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Level:I

    .line 889
    :cond_2
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_AVATAR_CONTAINER:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 891
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 892
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->AvatarUrl:Ljava/lang/String;

    .line 895
    :cond_3
    sget-object v5, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_COUNT:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 896
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 898
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "type":Ljava/lang/String;
    const-string v5, "bronze"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 901
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->BronzeTrophies:I

    goto :goto_0

    .line 902
    :cond_5
    const-string v5, "silver"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 903
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->SilverTrophies:I

    goto :goto_0

    .line 904
    :cond_6
    const-string v5, "gold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 905
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->GoldTrophies:I

    goto :goto_0

    .line 906
    :cond_7
    const-string v5, "platinum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 907
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->PlatinumTrophies:I

    goto :goto_0

    .line 910
    .end local v3    # "type":Ljava/lang/String;
    :cond_8
    iput v12, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->OnlineStatus:I

    .line 911
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/akop/bach/PSN$GamerProfileInfo;->Playing:Ljava/lang/String;

    .line 913
    return-object v0
.end method

.method protected parseGames(Lcom/akop/bach/PsnAccount;)V
    .locals 36
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const-string v3, "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_trophies_data"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v7

    const-string v33, "UTF-8"

    move-object/from16 v0, v33

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 439
    .local v24, "page":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 440
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 441
    .local v12, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 451
    .local v34, "updated":J
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 452
    .local v6, "queryParams":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getId()J

    move-result-wide v8

    .line 454
    .local v8, "accountId":J
    new-instance v23, Ljava/util/ArrayList;

    const/16 v3, 0x64

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v23, "newCvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 458
    .local v30, "started":J
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAMES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 460
    .local v15, "gameMatcher":Ljava/util/regex/Matcher;
    const/16 v27, 0x1

    .local v27, "rowNo":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 462
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 464
    .local v19, "group":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_UID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    .local v22, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    :cond_0
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 467
    :cond_1
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    .line 469
    .local v32, "uid":Ljava/lang/String;
    const/16 v26, 0x0

    .line 470
    .local v26, "progress":I
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 473
    :cond_2
    const/16 v25, 0x0

    .local v25, "platinum":I
    move/from16 v18, v25

    .local v18, "gold":I
    move/from16 v28, v25

    .local v28, "silver":I
    move/from16 v10, v25

    .line 474
    .local v10, "bronze":I
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 478
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 480
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 482
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 484
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 486
    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 488
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 495
    :cond_3
    const/4 v3, 0x0

    aput-object v32, v6, v3

    .line 496
    sget-object v3, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/akop/bach/parser/PsnUsParser;->GAMES_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Uid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "=?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 500
    .local v11, "c":Landroid/database/Cursor;
    const/4 v12, 0x1

    .line 504
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_7

    .line 506
    :cond_4
    const-string v29, ""

    .line 507
    .local v29, "title":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 510
    :cond_5
    const/16 v20, 0x0

    .line 511
    .local v20, "iconUrl":Ljava/lang/String;
    sget-object v3, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_GAME_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 512
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/akop/bach/parser/PsnUsParser;->getAvatarImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 514
    :cond_6
    new-instance v13, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v13, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 516
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v3, "AccountId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    const-string v3, "Title"

    move-object/from16 v0, v29

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v3, "Uid"

    move-object/from16 v0, v32

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v3, "IconUrl"

    move-object/from16 v0, v20

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v3, "Progress"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v3, "SortOrder"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    const-string v3, "UnlockedPlatinum"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v3, "UnlockedGold"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v3, "UnlockedSilver"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v3, "UnlockedBronze"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v3, "TrophiesDirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v3, "LastUpdated"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .end local v20    # "iconUrl":Ljava/lang/String;
    .end local v29    # "title":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_0

    .line 576
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 533
    .end local v13    # "cv":Landroid/content/ContentValues;
    :cond_7
    const/16 v21, 0x0

    .line 534
    .local v21, "isDirty":Z
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 536
    .local v16, "gameId":J
    new-instance v13, Landroid/content/ContentValues;

    const/16 v3, 0xf

    invoke-direct {v13, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 538
    .restart local v13    # "cv":Landroid/content/ContentValues;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v26

    if-eq v3, v0, :cond_8

    .line 540
    const/16 v21, 0x1

    .line 541
    const-string v3, "Progress"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    :cond_8
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v10, :cond_9

    .line 545
    const/16 v21, 0x1

    .line 546
    const-string v3, "UnlockedBronze"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    :cond_9
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v28

    if-eq v3, v0, :cond_a

    .line 550
    const/16 v21, 0x1

    .line 551
    const-string v3, "UnlockedSilver"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    :cond_a
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_b

    .line 555
    const/16 v21, 0x1

    .line 556
    const-string v3, "UnlockedGold"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    :cond_b
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v25

    if-eq v3, v0, :cond_c

    .line 560
    const/16 v21, 0x1

    .line 561
    const-string v3, "UnlockedPlatinum"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_c
    if-eqz v21, :cond_d

    .line 565
    const-string v3, "TrophiesDirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    :cond_d
    const-string v3, "SortOrder"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v3, "LastUpdated"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    sget-object v3, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 575
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v16    # "gameId":J
    .end local v21    # "isDirty":Z
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_e

    .line 576
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 580
    .end local v10    # "bronze":I
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v18    # "gold":I
    .end local v19    # "group":Ljava/lang/String;
    .end local v22    # "m":Ljava/util/regex/Matcher;
    .end local v25    # "platinum":I
    .end local v26    # "progress":I
    .end local v28    # "silver":I
    .end local v32    # "uid":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 581
    const-string v3, "Game page processing"

    move-wide/from16 v0, v30

    invoke-static {v3, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v30

    .line 583
    :cond_10
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 585
    const/4 v12, 0x1

    .line 587
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    new-array v14, v3, [Landroid/content/ContentValues;

    .line 588
    .local v14, "cvs":[Landroid/content/ContentValues;
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 590
    sget-object v3, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 592
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 593
    const-string v3, "Game page insertion"

    move-wide/from16 v0, v30

    invoke-static {v3, v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 596
    .end local v14    # "cvs":[Landroid/content/ContentValues;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->refresh(Lcom/akop/bach/Preferences;)V

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/akop/bach/PsnAccount;->setLastGameUpdate(J)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/akop/bach/Preferences;->get(Landroid/content/Context;)Lcom/akop/bach/Preferences;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/akop/bach/PsnAccount;->save(Lcom/akop/bach/Preferences;)V

    .line 600
    if-eqz v12, :cond_12

    .line 601
    sget-object v3, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 602
    :cond_12
    return-void
.end method

.method protected parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;
    .locals 30
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/akop/bach/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 311
    .local v18, "started":J
    const-string v25, "http://us.playstation.com/playstation/psn/profile/trophies?id=%1.16f"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 313
    .local v24, "url":Ljava/lang/String;
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 314
    .local v17, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v25, "Referer"

    const-string v26, "http://us.playstation.com/mytrophies/index.htm"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v25, "Accept"

    const-string v26, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 318
    .local v11, "page":Ljava/lang/String;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 319
    const-string v25, "parseSummaryData page fetch"

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 321
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 324
    .local v5, "cv":Landroid/content/ContentValues;
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_ONLINE_ID:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-nez v25, :cond_1

    .line 325
    new-instance v25, Lcom/akop/bach/parser/ParserException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f080077

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Lcom/akop/bach/parser/ParserException;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    throw v25

    .line 327
    :cond_1
    const-string v25, "OnlineId"

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v9, 0x0

    .line 330
    .local v9, "level":I
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_LEVEL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 331
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 333
    :cond_2
    const/4 v15, 0x0

    .line 334
    .local v15, "progress":I
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_PROGRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 335
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 337
    :cond_3
    const/16 v22, 0x0

    .line 338
    .local v22, "trophiesPlat":I
    const/16 v21, 0x0

    .line 339
    .local v21, "trophiesGold":I
    const/16 v23, 0x0

    .line 340
    .local v23, "trophiesSilver":I
    const/16 v20, 0x0

    .line 342
    .local v20, "trophiesBronze":I
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 344
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 345
    .local v16, "queryString":Ljava/lang/String;
    const-string v25, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 347
    .local v13, "pairs":[Ljava/lang/String;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_8

    aget-object v12, v4, v6

    .line 349
    .local v12, "pair":Ljava/lang/String;
    const-string v25, "="

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 350
    .local v14, "param":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 352
    const/16 v25, 0x0

    aget-object v25, v14, v25

    const-string v26, "bronze"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 353
    const/16 v25, 0x1

    aget-object v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 347
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    :cond_5
    const/16 v25, 0x0

    aget-object v25, v14, v25

    const-string v26, "silver"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 355
    const/16 v25, 0x1

    aget-object v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    goto :goto_1

    .line 356
    :cond_6
    const/16 v25, 0x0

    aget-object v25, v14, v25

    const-string v26, "gold"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 357
    const/16 v25, 0x1

    aget-object v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    goto :goto_1

    .line 358
    :cond_7
    const/16 v25, 0x0

    aget-object v25, v14, v25

    const-string v26, "platinum"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 359
    const/16 v25, 0x1

    aget-object v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_1

    .line 364
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v12    # "pair":Ljava/lang/String;
    .end local v13    # "pairs":[Ljava/lang/String;
    .end local v14    # "param":[Ljava/lang/String;
    .end local v16    # "queryString":Ljava/lang/String;
    :cond_8
    const-string v25, "Level"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v25, "Progress"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v25, "PlatinumTrophies"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v25, "GoldTrophies"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v25, "SilverTrophies"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v25, "BronzeTrophies"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const/4 v7, 0x0

    .line 372
    .local v7, "iconUrl":Ljava/lang/String;
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_AVATAR_CONTAINER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 374
    sget-object v25, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_URL:Ljava/util/regex/Pattern;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 375
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    :cond_9
    const-string v25, "IconUrl"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 381
    const-string v25, "parseSummaryData processing"

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v18

    .line 383
    :cond_a
    return-object v5
.end method

.method protected parseTrophies(Lcom/akop/bach/PsnAccount;J)V
    .locals 32
    .param p1, "account"    # Lcom/akop/bach/PsnAccount;
    .param p2, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/akop/bach/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 610
    .local v5, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/akop/bach/PSN$Games;->getUid(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 611
    .local v11, "gameUid":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v16, "inputs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v26, Lorg/apache/http/message/BasicNameValuePair;

    const-string v27, "sortBy"

    const-string v28, "id_asc"

    invoke-direct/range {v26 .. v28}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v26, Lorg/apache/http/message/BasicNameValuePair;

    const-string v27, "titleId"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v26, "http://us.playstation.com/playstation/psn/profile/%1$s/get_ordered_title_details_data"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/akop/bach/PsnAccount;->getScreenName()Ljava/lang/String;

    move-result-object v29

    const-string v30, "UTF-8"

    invoke-static/range {v29 .. v30}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/akop/bach/parser/PsnUsParser;->getResponse(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v19

    .line 618
    .local v19, "page":Ljava/lang/String;
    const/4 v15, 0x0

    .line 619
    .local v15, "index":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 621
    .local v20, "started":J
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHIES:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 624
    .local v4, "achievements":Ljava/util/regex/Matcher;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v26, 0x64

    move/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v7, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 627
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    .line 629
    .local v23, "trophyRow":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08011c

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 630
    .local v22, "title":Ljava/lang/String;
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .local v18, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 631
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 633
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f08013f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 634
    .local v9, "description":Ljava/lang/String;
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_DESCRIPTION:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 635
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/akop/bach/parser/PsnUsParser;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 637
    :cond_1
    const/4 v14, 0x0

    .line 638
    .local v14, "iconUrl":Ljava/lang/String;
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_ICON:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 639
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/akop/bach/parser/PsnUsParser;->getAvatarImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 641
    :cond_2
    const-wide/16 v12, 0x0

    .line 642
    .local v12, "earned":J
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_EARNED:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 646
    :try_start_0
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->TROPHY_DATE_FORMAT:Ljava/text/DateFormat;

    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 655
    :cond_3
    :goto_1
    const/16 v17, 0x0

    .line 656
    .local v17, "isSecret":Z
    const/16 v25, 0x0

    .line 658
    .local v25, "type":I
    sget-object v26, Lcom/akop/bach/parser/PsnUsParser;->PATTERN_TROPHY_TYPE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 660
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 661
    .local v24, "trophyType":Ljava/lang/String;
    const-string v26, "BRONZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 662
    const/16 v25, 0x1

    .line 673
    .end local v24    # "trophyType":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v6, Landroid/content/ContentValues;

    const/16 v26, 0x14

    move/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 675
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v26, "Title"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v26, "Description"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v26, "SortOrder"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v26, "Earned"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    const-string v26, "IconUrl"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v26, "GameId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    const-string v27, "IsSecret"

    if-eqz v17, :cond_9

    const/16 v26, 0x1

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    const-string v26, "Type"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v15, v15, 0x1

    .line 686
    goto/16 :goto_0

    .line 648
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v17    # "isSecret":Z
    .end local v25    # "type":I
    :catch_0
    move-exception v10

    .line 650
    .local v10, "e":Ljava/text/ParseException;
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 651
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 663
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v17    # "isSecret":Z
    .restart local v24    # "trophyType":Ljava/lang/String;
    .restart local v25    # "type":I
    :cond_5
    const-string v26, "SILVER"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 664
    const/16 v25, 0x2

    goto/16 :goto_2

    .line 665
    :cond_6
    const-string v26, "GOLD"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 666
    const/16 v25, 0x3

    goto/16 :goto_2

    .line 667
    :cond_7
    const-string v26, "PLATINUM"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 668
    const/16 v25, 0x4

    goto/16 :goto_2

    .line 669
    :cond_8
    const-string v26, "HIDDEN"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 670
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 681
    .end local v24    # "trophyType":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    :cond_9
    const/16 v26, 0x0

    goto :goto_3

    .line 688
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v9    # "description":Ljava/lang/String;
    .end local v12    # "earned":J
    .end local v14    # "iconUrl":Ljava/lang/String;
    .end local v17    # "isSecret":Z
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "title":Ljava/lang/String;
    .end local v23    # "trophyRow":Ljava/lang/String;
    .end local v25    # "type":I
    :cond_a
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 689
    const-string v26, "New trophy parsing"

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v20

    .line 691
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v8, v0, [Landroid/content/ContentValues;

    .line 692
    .local v8, "cva":[Landroid/content/ContentValues;
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 694
    sget-object v26, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "GameId="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 697
    sget-object v26, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 698
    sget-object v26, Lcom/akop/bach/PSN$Trophies;->CONTENT_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 700
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 701
    const-string v26, "New trophy processing"

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    move-result-wide v20

    .line 704
    :cond_c
    new-instance v6, Landroid/content/ContentValues;

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 705
    .restart local v6    # "cv":Landroid/content/ContentValues;
    const-string v26, "TrophiesDirty"

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    sget-object v26, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "_id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v5, v0, v6, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 708
    sget-object v26, Lcom/akop/bach/PSN$Games;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 711
    invoke-static {}, Lcom/akop/bach/App;->getConfig()Lcom/akop/bach/configurations/AppConfig;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/akop/bach/configurations/AppConfig;->logToConsole()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 712
    const-string v26, "Updating Game"

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/akop/bach/parser/PsnUsParser;->displayTimeTaken(Ljava/lang/String;J)J

    .line 713
    :cond_d
    return-void
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
    .line 301
    const-string v0, "<script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "</script>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    throw v0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Lcom/akop/bach/parser/PsnParser;->preparseResponse(Ljava/lang/String;)Ljava/lang/String;

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

    .line 1894
    invoke-virtual {p0, p1, v6}, Lcom/akop/bach/parser/PsnUsParser;->authenticate(Lcom/akop/bach/BasicAccount;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    new-instance v1, Lcom/akop/bach/parser/AuthenticationException;

    iget-object v2, p0, Lcom/akop/bach/parser/PsnUsParser;->mContext:Landroid/content/Context;

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

    .line 1898
    check-cast v1, Lcom/akop/bach/PsnAccount;

    invoke-virtual {p0, v1}, Lcom/akop/bach/parser/PsnUsParser;->parseSummaryData(Lcom/akop/bach/PsnAccount;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1899
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "AccountId"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1900
    const-string v1, "Uuid"

    invoke-virtual {p1}, Lcom/akop/bach/BasicAccount;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    return-object v0
.end method
